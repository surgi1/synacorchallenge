/*
0x156b:  set R0 0x0004
0x156e:  set R1 0x0001
0x1571: call 0x178b
0x1573:   eq R1 R0 0x0006

...

0x178b:   jt R0 0x1793
0x178e:  add R0 R1 0x0001
0x1792:  ret 
0x1793:   jt R1 0x17a0
0x1796:  add R0 R0 0x7fff
0x179a:  set R1 R7
0x179d: call 0x178b
0x179f:  ret 
0x17a0: push R0
0x17a2:  add R1 R1 0x7fff
0x17a6: call 0x178b
0x17a8:  set R1 R0
0x17ab:  pop R0
0x17ad:  add R0 R0 0x7fff
0x17b1: call 0x178b
0x17b3:  ret 
*/

/*
// raw conversion - call stack exceeded superfast
let r0 = 4, r1 = 1, r7 = 123, stack = [];

const main = () => {
    if (r0 != 0) {
        if (r1 != 0) {
            stack.push(r0);
            r1 = (r1+0x7fff) % 0x8000;
            main();
            r1 = r0;
            r0 = stack.pop();
            r0 = (r0+0x7fff) % 0x8000;
            main()
        } else {
            r0 = (r0+0x7fff) % 0x8000;
            r1 = r7;
            main()
        }
    } else {
        r0 = (r1+1) % 0x8000;
    }
}
*/

// after numerous hours spent on snalyzing this !@&^%@, attempts on rewrites and partial tests and more rewrites.. and more &*@#%&^% ..

const loop = (n, r7) => {
    let a = powMod(r7+1, n, 0x8000),
        b = (powMod(r7+1, n, r7*0x8000) || r7)-1;
    return ( a*((r7+1)*(r7+1)+r7) + b*(2*r7+1)/r7 ) % 0x8000;
}

const powMod = (base, exponent, mod, res = 1) => {
    for (let i = 0; i < exponent; i++) res = (res*base) % mod;
    return res;
}

for (let r7 = 1; r7 < 0x8000; r7++) if (loop(loop(r7, r7), r7) == 6) {
    console.log('R7', r7);
    break;
}
