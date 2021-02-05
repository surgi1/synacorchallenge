let start = {x: 0, y: 3}, end = {x: 3, y: 0};

const map = [
['*', 8, '-', 1],
[4, '*', 11, '*'],
['+', 4, '-', 18],
[22, '-', 9, '*']]

const directions = [{x: 0, y: -1, v: 'north'}, {x: 0, y: 1, v: 'south'},
                    {x: -1, y: 0, v: 'west'},  {x: 1, y: 0, v: 'east'}];

const updatePathValue = (path, val) => {
    switch (path.op) {
        case '+': return path.val + val;
        case '-': return path.val - val;
        case '*': return path.val * val;
    }
}

let paths = [{pos: $.extend(true, {}, start), val: 0, op: '+', steps: []}], minSteps = 15;

for (let i = 0; i < paths.length; i++) {
    let path = paths[i], val = map[path.pos.y][path.pos.x];

    if (path.pos.x == start.x && path.pos.y == start.y && path.steps.length > 0) path.done = true;
    if (['+','*','-'].includes(val)) path.op = val; else path.val = updatePathValue(path, val);
    if (path.val < -23 || path.val > 120) path.done = true;

    if (path.pos.x == end.x && path.pos.y == end.y) {
        path.done = true;
        if (path.val == 30 && path.steps.length < minSteps) {
            console.log('shortest trip found', path.steps, path);
            minSteps = path.steps.length;
        }
    }

    if (!path.done) directions.map(dir => {
        let p = $.extend(true, {}, path);
        p.pos.x += dir.x;
        p.pos.y += dir.y;
        p.steps.push(dir.v);
        if (p.pos.x >= 0 && p.pos.x < 4 && p.pos.y >= 0 && p.pos.y < 4 && p.steps.length < minSteps) paths.push(p);
    })
}
