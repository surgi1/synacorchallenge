class Computer {
    constructor(config) {
        this.ptr = 0;
        this.ticks = 0;
        this.registers = new Array(8).fill(0);
        this.mem = new Array(32768).fill(0);
        this.stack = [];
        this.instructions = {halt: '0', set: '1ab', push: '2a', pop: '3a', eq: '4abc', gt: '5abc', jmp: '6a', jt: '7ab', jf: '8ab', add: '9abc', mult: '10abc', mod: '11abc', and: '12abc', or: '13abc', not: '14ab', rmem: '15ab', wmem: '16ab', call: '17a', ret: '18', out: '19a', in: '20a', noop: '21'}
        this.iCode2Name = [];
        Object.entries(this.instructions).map(([name, v]) => this.iCode2Name[parseInt(v)] = name);
        return this;
    }

    load(input) {
        input.map((code, i) => this.mem[i] = code);
        return this;
    }

    translate() {
        const prefix = (s, n, ch = ' ') => {
            while ((s+'').length < n) s = ch+s;
            return s;
        }
        let ptr = 0, lines = [];
        while (ptr < this.mem.length) {
            let code = this.mem[ptr], line = {lineNr: ptr, i: this.iCode2Name[code] || 'data', params: []}, len = this.instructions[line.i]?.replace(/[0-9]/g, '').length+1;
            if ((ptr >= 2315 && ptr < 2734) || ptr > 6067) line.i = 'data';
            if (line.i == 'data') len = 2;
            for (let i = 1; i < len; i++) {
                let n = parseInt(this.mem[ptr+i]);
                if (n > 32767) n = 'R'+(n-32768); else if (line.i != 'out') n = prefix(n.toString(16), 4, '0');
                if ((['out'].includes(line.i)) && (n+'').indexOf('R') == -1 && n < 123 && n > 31) n = String.fromCharCode(n);
                line.params.push(n);
            }
            if ((line.i == 'out' && lines[lines.length-1].i == 'out') || (line.i == 'data' && lines[lines.length-1].i == 'data')) lines[lines.length-1].params.push(...line.params); else lines.push(line);
            ptr += len;
        }
        return lines.reduce((s, l) => s += prefix(l.lineNr.toString(16), 4, '0')+': '+ prefix(l.i, 4)+ ' ' + (l.i == 'out' ? '"'+l.params.join('')+'"' : l.params.join(' ') ) + "\n", '')
    }

    run(inputs = [], debug = false) {
        const get = v => v < 32768 ? v : this.registers[v-32768]
        const set = (addr, v) => this.registers[addr-32768] = v & 32767
        const getMem = v => this.mem[v < 32768 ? v : this.registers[v-32768]]
        const setMem = (addr, v) => this.mem[addr < 32768 ? addr : this.registers[addr-32768]] = v & 32767
        
        let output = [], stop = false, exitCode, inputPtr = 0, ptr = this.ptr;
        while (!stop) {
            if (this.debug) console.log(ptr);
            switch (this.iCode2Name[this.mem[ptr]]) {
                case 'halt': stop = true; exitCode = 1; break;
                case 'set' : set(this.mem[ptr+1], get(this.mem[ptr+2])); ptr += 3; break;
                case 'push': this.stack.push(get(this.mem[ptr+1])); ptr += 2; break;
                case 'pop' : set(this.mem[ptr+1], this.stack.pop()); ptr += 2; break;
                case 'eq'  : set(this.mem[ptr+1], get(this.mem[ptr+2]) == get(this.mem[ptr+3]) ? 1 : 0); ptr += 4; break;
                case 'gt'  : set(this.mem[ptr+1], get(this.mem[ptr+2]) > get(this.mem[ptr+3]) ? 1 : 0); ptr += 4; break;
                case 'jmp' : ptr = get(this.mem[ptr+1]); break;
                case 'jt'  : if (get(this.mem[ptr+1]) != 0) ptr = get(this.mem[ptr+2]); else ptr += 3; break;
                case 'jf'  : if (get(this.mem[ptr+1]) == 0) ptr = get(this.mem[ptr+2]); else ptr += 3; break;
                case 'add' : set(this.mem[ptr+1], get(this.mem[ptr+2]) + get(this.mem[ptr+3])); ptr += 4; break;
                case 'mult': set(this.mem[ptr+1], get(this.mem[ptr+2]) * get(this.mem[ptr+3])); ptr += 4; break;
                case 'mod' : set(this.mem[ptr+1], get(this.mem[ptr+2]) % get(this.mem[ptr+3])); ptr += 4; break;
                case 'and' : set(this.mem[ptr+1], get(this.mem[ptr+2]) & get(this.mem[ptr+3])); ptr += 4; break;
                case 'or'  : set(this.mem[ptr+1], get(this.mem[ptr+2]) | get(this.mem[ptr+3])); ptr += 4; break;
                case 'not' : set(this.mem[ptr+1], ~get(this.mem[ptr+2])); ptr += 3; break;
                case 'rmem': set(this.mem[ptr+1], getMem(this.mem[ptr+2])); ptr += 3; break;
                case 'wmem': setMem(this.mem[ptr+1], get(this.mem[ptr+2])); ptr += 3; break;
                case 'call': this.stack.push(ptr+2); ptr = get(this.mem[ptr+1]); break;
                case 'ret' : ptr = this.stack.pop(); break;
                case 'out' : output.push(String.fromCharCode(get(this.mem[ptr+1]))); ptr += 2; break;
                case 'in'  :
                    if (inputPtr < inputs.length) {
                        set(this.mem[ptr+1], inputs[inputPtr].charCodeAt(0));
                        inputPtr++;
                        ptr += 2;
                        break;
                    }
                    stop = true;
                    exitCode = 2;
                    break;
                case 'noop': ptr++; break;
                default: console.log('unsupported instruction', this.mem[ptr]); ptr++; break;
            }
            this.ticks++;
        }
        this.ptr = ptr;
        return {output: output, code: exitCode};
    }
}
