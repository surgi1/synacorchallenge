const map = [
['*', 8, '-', 1],
[4, '*', 11, '*'],
['+', 4, '-', 18],
[22, '-', 9, '*']]

const directions = [{x: 0, y: -1, v: 'north'}, {x: 0, y: 1, v: 'south'},
                    {x: -1, y: 0, v: 'west'},  {x: 1, y: 0, v: 'east'}];

let start = {x:0, y:3}, end = {x:3, y:0}, maxSteps = 15, i = 0,
    paths = [{x: start.x, y: start.y, val: 0, op: '+', steps: []}];

while (paths[i]) {
    let p = paths[i++], val = map[p.y][p.x], expand = true;

    if (isNaN(val)) p.op = val;
    else if (p.op == '+') p.val += val;
    else if (p.op == '-') p.val -= val;
    else if (p.op == '*') p.val *= val;

    if (p.val < -20 || p.val > 120) expand = false;
    if (p.x == start.x && p.y == start.y && p.steps[0]) expand = false;
    if (p.x == end.x && p.y == end.y) {
        expand = false;
        if (p.val == 30 && p.steps.length < maxSteps) {
            console.log('shortest trip found', p.steps, p);
            maxSteps = p.steps.length;
        }
    }

    if (expand) directions.map(d => {
        let np = {x: p.x+d.x, y: p.y+d.y, val: p.val, op: p.op, steps: [...p.steps, d.v]}
        if (map[np.y] && map[np.y][np.x] && np.steps.length < maxSteps) paths.push(np);
    })
}
