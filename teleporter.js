/*
156b:  set R0 0004
156e:  set R1 0001
1571: call 178b
1573:   eq R1 R0 0006

...

178b:   jt R0 1793
178e:  add R0 R1 0001
1792:  ret 
1793:   jt R1 17a0
1796:  add R0 R0 7fff
179a:  set R1 R7
179d: call 178b
179f:  ret 
17a0: push R0
17a2:  add R1 R1 7fff
17a6: call 178b
17a8:  set R1 R0
17ab:  pop R0
17ad:  add R0 R0 7fff
17b1: call 178b
17b3:  ret 
*/

/*
// one of the middle steps
let r0 = 4, r1 = 1, r7 = 1;
let cache = {};
const main = (a, b) => {
    if (a == 0) return (b+1) & 0x7FFF;
    let res, res2, k;
    if (b == 0) {
        k = ((a-1) & 0x7FFF) +'_'+ r7;
        if (cache[k] != undefined) res = cache[k]; else {
            res = main( (a-1) & 0x7FFF, r7 );
            cache[k] = res;
        }
        return res;
    }

    k = a +'_'+ ((b-1) & 0x7FFF);
    if (cache[k] != undefined) res = cache[k]; else {
        res = main(a, (b-1) & 0x7FFF);
        cache[k] = res;
    }

    k = ((a-1) & 0x7FFF) + '_'+ res;
    if (cache[k] != undefined) res2 = cache[k]; else {
        res2 = main((a-1) & 0x7FFF, res);
        cache[k] = res2;
    }

    return res2;
}
console.log(main(r0, r1));
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

// after numerous hours spent on analyzing this !@&^%@, attempts on rewrites and partial tests and more rewrites.. and more &*@#%&^% ..
// I produced an ugly long-hours running simulation, that got to the result at the end..
// later, after reading some theory: https://en.wikipedia.org/wiki/Ackermann_function and more
// there is a much more elegant implementation available:

const f = (n, r7) => {
    let a = powMod(r7+1, n, 0x8000),
        b = (powMod(r7+1, n, r7*0x8000) || r7)-1;
    return ( a*((r7+1)*(r7+1)+r7) + b*(2*r7+1)/r7 ) % 0x8000;
}

const powMod = (base, exponent, mod, res = 1) => {
    for (let i = 0; i < exponent; i++) res = (res*base) % mod;
    return res;
}

for (let r7 = 1; r7 < 0x8000; r7++) if (f(f(r7, r7), r7) == 6) {
    console.log('R7', r7);
    break;
}
