class Computer {
    constructor(config) {
        this.pointer = 0;
        this.ticks = 0;
        this.registers = new Array(8).fill(0);
        this.memory = new Array(32768).fill(0);
        this.stack = [];
        this.debug = false;
        return this;
    }

    load(input) {
        this.input = input;
        let self = this;
        input.map((code, i) => self.memory[i] = code);
        return this;
    }

    get(v) {
        if (v < 32768) return v;
        if (v < 32776) return this.registers[v-32768];
        console.log('GET: invalid value', v);
        return 0;
    }

    getMem(v) {
        if (v < 32768) return this.memory[v];
        if (v < 32776) return this.memory[this.registers[v-32768]];
        console.log('GET MEM: invalid value', v);
        return 0;
    }

    set(addr, v) {
        if (addr < 32768) console.log('SET: address too low', addr, v);
        if (addr < 32768) this.memory[addr] = v % 32768;
        else if (addr < 32776) this.registers[addr-32768] = v % 32768;
        else console.log('SET: address too high', addr, v);
    }

    setMem(addr, v) {
        if (addr < 32768) this.memory[addr] = v % 32768;
        else if (addr < 32776) this.memory[this.registers[addr-32768]] = v % 32768;
        else console.log('SET MEM: invalid address', addr, v);
    }

    translate() {
        const addFoam = (s, n, ch = ' ') => {
            s = s + '';
            while (s.length < n) s = ch+s;
            return s;
        }
        let instructions = {halt: '0', set: '1ab', push: '2a', pop: '3a', eq: '4abc', gt: '5abc', jmp: '6a', jt: '7ab', jf: '8ab', add: '9abc', mult: '10abc', mod: '11abc', and: '12abc', or: '13abc', not: '14ab', rmem: '15ab', wmem: '16ab', call: '17a', ret: '18', out: '19a', in: '20a', noop: '21'}
        let lengths = [], code2name = [];
        Object.entries(instructions).map(([name, v]) => {
            let code = parseInt(v);
            lengths[code] = 1+v.length - (code+'').length;
            code2name[code] = name;
        })
        let ptr = 0, lines = [], self = this, s = '';
        while (ptr < self.memory.length) {
            let code = self.memory[ptr], line = {lineNr: ptr, i: code2name[code] || 'data', params: []}, len = lengths[code];
            if ((ptr >= 2315 && ptr < 2734) || ptr > 6067) line.i = 'data';
            if (line.i == 'data') len = 2;
            for (let i = 1; i < len; i++) {
                let n = parseInt(self.memory[ptr+i]);
                if (n > 32767) n = 'R'+(n-32768); else if (line.i != 'out') n = '0x'+addFoam(n.toString(16), 4, '0');
                if ((['out'].includes(line.i)) && (n+'').indexOf('R') == -1 && n < 123 && n > 31) n = String.fromCharCode(n);
                line.params.push(n);
            }
            if ((line.i == 'out' && lines[lines.length-1].i == 'out') || (line.i == 'data' && lines[lines.length-1].i == 'data')) lines[lines.length-1].params.push(...line.params); else lines.push(line);
            ptr += len;
        }

        lines.map(line => s += '0x'+addFoam(line.lineNr.toString(16), 4, '0')+': '+ addFoam(line.i, 4)+ ' ' + (line.i == 'out' ? '"'+line.params.join('')+'"' : line.params.join(' ') ) + "\n")
        console.log(s);
    }

    run(inputs = []) {
        let self = this, output = [], stop = false, exitCode, inputPointer = 0;
        while (!stop) {
            if (self.debug) console.log(self.pointer);
            switch (self.memory[self.pointer]) {
                case 0: stop = true; exitCode = 1; break;
                case 1: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2])); self.pointer += 3; break; // set
                case 2: self.stack.push(self.get(self.memory[self.pointer+1])); self.pointer += 2; break; // stack push
                case 3: if (self.stack.length == 0) console.log('no stack'); self.set(self.memory[self.pointer+1], self.stack.pop()); self.pointer += 2; break; // stack pop

                case 4: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2]) == self.get(self.memory[self.pointer+3]) ? 1 : 0); self.pointer += 4; break; // eq
                case 5: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2]) > self.get(self.memory[self.pointer+3]) ? 1 : 0); self.pointer += 4; break; // gt
                case 6: self.pointer = self.get(self.memory[self.pointer+1]); break; // jmp

                case 7: if (self.get(self.memory[self.pointer+1]) != 0) self.pointer = self.get(self.memory[self.pointer+2]); else self.pointer += 3; break; // jt
                case 8: if (self.get(self.memory[self.pointer+1]) == 0) self.pointer = self.get(self.memory[self.pointer+2]); else self.pointer += 3; break; // jf

                case 9: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2])+self.get(self.memory[self.pointer+3])); self.pointer += 4; break; // add
                case 10: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2])*self.get(self.memory[self.pointer+3])); self.pointer += 4; break; // mul
                case 11: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2]) % self.get(self.memory[self.pointer+3])); self.pointer += 4; break; // mod

                case 12: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2]) & self.get(self.memory[self.pointer+3])); self.pointer += 4; break; // and
                case 13: self.set(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2]) | self.get(self.memory[self.pointer+3])); self.pointer += 4; break; // or

                case 14: self.set(self.memory[self.pointer+1], ~self.get(self.memory[self.pointer+2]) & 32767); self.pointer += 3; break; // not -- caution, maybe not 15-bit safe

                case 15: self.set(self.memory[self.pointer+1], self.getMem(self.memory[self.pointer+2])); self.pointer += 3; break; // read mem
                case 16: self.setMem(self.memory[self.pointer+1], self.get(self.memory[self.pointer+2])); self.pointer += 3; break; // set (write mem)

                case 17: self.stack.push(self.pointer+2); self.pointer = self.get(self.memory[self.pointer+1]); break; // call
                case 18: if (self.stack.length == 0) console.log('no stack'); self.pointer = self.stack.pop(); break; // ret

                case 19: output.push(String.fromCharCode(self.get(self.memory[self.pointer+1]))); self.pointer += 2; break; // out
                case 20: 
                    if (inputPointer < inputs.length) {
                        self.set(self.memory[self.pointer+1], inputs[inputPointer].charCodeAt(0));
                        inputPointer++;
                        self.pointer += 2;
                    } else {
                        stop = true;
                        exitCode = 2;
                    }
                    break;
                case 21: self.pointer++; break;
                default: console.log('unsupported instruction', self.memory[self.pointer]); self.pointer++; break
            }
            this.ticks++;
        }
        return {output: output, code: exitCode/*, registers: self.registers, pointer: self.pointer, executed: ins*/};
    }

    reset() {
        this.pointer = 0;
        this.ticks = 0;
        this.registers = new Array(8).fill(0);
        this.memory = new Array(32768).fill(0);
        this.stack = [];
        this.load(this.input);
    }

}
