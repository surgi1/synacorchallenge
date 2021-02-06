let comp = new Computer().load(input),
    root = document.getElementById('root'),
    com = document.getElementById('command'),
    commands = [];

const tick = (s = '') => {
    let params = [];
    if (s != '') {
        params = s.split('');
        params.push("\n");
    }
    let res = comp.run(params);
    root.innerHTML = '<div class="output generated">'+res.output.join('').split("\n").join("<br>")+'</div>';
    return res;
}

const command = c => {
    if (c == '') return;
    commands.push(c);
    tick(c);
    com.value = '';
    com.focus();
}

const initGUI = () => {
    document.getElementById('send').addEventListener('click', e => command(com.value));
    com.addEventListener('keypress', e => {
        if (e.code == 'Enter') command(com.value);
        return false;
    });
    com.focus();
}

initGUI();
tick();

// this gets to the synacor hq
const load = () => {
    let save = ["take tablet","doorway","north","north","bridge","continue","down","west","east","east","take empty lantern","west","west","passage","ladder","north","west","west","west","north","west","west","north","east","inv","look","look grue","look","north","north","south","north","south","north","north","west","east","east","north","south","south","south","east","north","north","north","north","north","north","north","east","east","east","north","north","west","west","west","north","north","east","south","south","south","north","east","west","west","west","north","north","east","south","south","north","north","north","south","south","south","east","north","south","south","south","east","west","north","north","east","north","north","north","north","north","north","west","east","west","south","west","north","west","north","north","north","south","south","south","west","north","north","east","north","west","west","west","north","east","east","east","south","south","east","west","east","south","south","south","north","north","south","south","east","north","east","west","west","north","north","north","north","north","north","north","north","east","north","south","south","east","south","south","south","south","east","south","south","north","north","east","east","east","south","south","take ladder","look","north","north","north","north","west","west","north","east","east","north","west","east","west","north","north","south","south","south","west","wouth","south","west","east","south","north","north","south","east","east","south","east","west","west","north","north","west","north","east","west","south","west","north","south","east","north","west","south","west","north","west","south","south","south","east","west","north","north","north","east","north","east","west","south","east","north","north","east","north","east","north","south","south","south","south","east","west","south","east","west","east","south","south","south","west","west","east","west","south","north","use tablet","look","take can","look can","use can","look lantern","look","west","use lantern","east","west","ladder","darkness","back","ladder","east","east","north","north","east","east","south","south","ladder","darkness","continue","west","use lantern","look","inv","look","west","west","west","east","west","north","take red coin","look red coin","look dots","use red coin","look","north","look monument","look","use red coin","look","inv","use red coin","look","look monument","look","north","look","south","south","east","east","east","east","east","continue","west","west","west","west","north","north","east","take concave coin","look concave coin","look","west","use concave coin","look","take concave coin","look","west","take blue coin","look","look blue coin","look","east","use blue coin","look","east","down","take corroded coin","look corroded coin","look","up","west","use corroded coin","look","east","down","up","west","north","look north","look","south","north","north","look","east","down","up","west","170","help","look","inv","use lit lantern","use tablet","look","north","look","look door","north","look door","take door","look","2 + 7 * 9^2 + 3^3 - 170 = 399","help","look","east","down","up","west","west","up","take shiny coin","look shiny coin","look","down","east","use shiny coin","look","take red coin","take corroded coin","take shiny coin","take blue coin","look","takce concave coin","look","inv","look","take concave coin","look","inv","look red coin","inv","look shiny coin","look blue","look blue coin","look concave coin","look corroded","look corroded coin","look","use blue coin","look","use red coin","use shiny coin","use concave coin","use corroded coin","look","north","look teleporter","look","take teleporter","look teleporter","look","use teleporter","look business card","take business card","look","look strange book","look","take strange book","look","look teleporter","look","outside","inside","use teleporter"];
    save.map(c => command(c));
}

const hackTP = () => {
    comp.mem[6027] = 18;
    comp.mem[5451] = 21;
    comp.mem[5452] = 21;
    comp.mem[5453] = 21;

    comp.mem[5491] = 21;
    comp.mem[5492] = 21;
    comp.mem[5493] = 21;
    comp.mem[5494] = 21;
    comp.registers[7] = 25734; // see teleporter.js
    tick('use teleporter');
}

// see beach.js
const solveBeach = () => {
    let solution = ["take orb", "north", "east", "east", "north", "west", "south", "east", "east", "west", "north", "north", "east", "vault"];
    [...Array(9).fill("north"), ...solution].map(c => command(c));
}

const solveRuins = () => {
    const equation = (a,b,c,d,e) => a + b*c*c + d*d*d - e == 399
    const permutations = a => !a.length ? [[]] : a.flatMap((e, i) => permutations(a.filter((v, j) => i!==j)).map(v => [e, ...v]))
    permutations([2,3,5,7,9]).map(p => equation(...p) && console.log('ruins solution', p))
}

// ["take tablet","doorway","north","north","bridge","continue","down","west","east","east","take empty lantern","west","west","passage","ladder","north","west","west","west","north","west","west","north","east","inv","look","look grue","look","north","north","south","north","south","north","north","west","east","east","north","south","south","south","east","north","north","north","north","north","north","north","east","east","east","north","north","west","west","west","north","north","east","south","south","south","north","east","west","west","west","north","north","east","south","south","north","north","north","south","south","south","east","north","south","south","south","east","west","north","north","east","north","north","north","north","north","north","west","east","west","south","west","north","west","north","north","north","south","south","south","west","north","north","east","north","west","west","west","north","east","east","east","south","south","east","west","east","south","south","south","north","north","south","south","east","north","east","west","west","north","north","north","north","north","north","north","north","east","north","south","south","east","south","south","south","south","east","south","south","north","north","east","east","east","south","south","take ladder","look","north","north","north","north","west","west","north","east","east","north","west","east","west","north","north","south","south","south","west","wouth","south","west","east","south","north","north","south","east","east","south","east","west","west","north","north","west","north","east","west","south","west","north","south","east","north","west","south","west","north","west","south","south","south","east","west","north","north","north","east","north","east","west","south","east","north","north","east","north","east","north","south","south","south","south","east","west","south","east","west","east","south","south","south","west","west","east","west","south","north","use tablet","look","take can","look can","use can","look lantern","look","west"]
// after LTA maze
// ruins
// ["take tablet","doorway","north","north","bridge","continue","down","west","east","east","take empty lantern","west","west","passage","ladder","north","west","west","west","north","west","west","north","east","inv","look","look grue","look","north","north","south","north","south","north","north","west","east","east","north","south","south","south","east","north","north","north","north","north","north","north","east","east","east","north","north","west","west","west","north","north","east","south","south","south","north","east","west","west","west","north","north","east","south","south","north","north","north","south","south","south","east","north","south","south","south","east","west","north","north","east","north","north","north","north","north","north","west","east","west","south","west","north","west","north","north","north","south","south","south","west","north","north","east","north","west","west","west","north","east","east","east","south","south","east","west","east","south","south","south","north","north","south","south","east","north","east","west","west","north","north","north","north","north","north","north","north","east","north","south","south","east","south","south","south","south","east","south","south","north","north","east","east","east","south","south","take ladder","look","north","north","north","north","west","west","north","east","east","north","west","east","west","north","north","south","south","south","west","wouth","south","west","east","south","north","north","south","east","east","south","east","west","west","north","north","west","north","east","west","south","west","north","south","east","north","west","south","west","north","west","south","south","south","east","west","north","north","north","east","north","east","west","south","east","north","north","east","north","east","north","south","south","south","south","east","west","south","east","west","east","south","south","south","west","west","east","west","south","north","use tablet","look","take can","look can","use can","look lantern","look","west","use lantern","east","west","ladder","darkness","back","ladder","east","east","north","north","east","east","south","south","ladder","darkness","continue","west","use lantern","look","inv","look","west","west","west","east","west"]

// ruins solved
// ["take tablet","doorway","north","north","bridge","continue","down","west","east","east","take empty lantern","west","west","passage","ladder","north","west","west","west","north","west","west","north","east","inv","look","look grue","look","north","north","south","north","south","north","north","west","east","east","north","south","south","south","east","north","north","north","north","north","north","north","east","east","east","north","north","west","west","west","north","north","east","south","south","south","north","east","west","west","west","north","north","east","south","south","north","north","north","south","south","south","east","north","south","south","south","east","west","north","north","east","north","north","north","north","north","north","west","east","west","south","west","north","west","north","north","north","south","south","south","west","north","north","east","north","west","west","west","north","east","east","east","south","south","east","west","east","south","south","south","north","north","south","south","east","north","east","west","west","north","north","north","north","north","north","north","north","east","north","south","south","east","south","south","south","south","east","south","south","north","north","east","east","east","south","south","take ladder","look","north","north","north","north","west","west","north","east","east","north","west","east","west","north","north","south","south","south","west","wouth","south","west","east","south","north","north","south","east","east","south","east","west","west","north","north","west","north","east","west","south","west","north","south","east","north","west","south","west","north","west","south","south","south","east","west","north","north","north","east","north","east","west","south","east","north","north","east","north","east","north","south","south","south","south","east","west","south","east","west","east","south","south","south","west","west","east","west","south","north","use tablet","look","take can","look can","use can","look lantern","look","west","use lantern","east","west","ladder","darkness","back","ladder","east","east","north","north","east","east","south","south","ladder","darkness","continue","west","use lantern","look","inv","look","west","west","west","east","west","north","take red coin","look red coin","look dots","use red coin","look","north","look monument","look","use red coin","look","inv","use red coin","look","look monument","look","north","look","south","south","east","east","east","east","east","continue","west","west","west","west","north","north","east","take concave coin","look concave coin","look","west","use concave coin","look","take concave coin","look","west","take blue coin","look","look blue coin","look","east","use blue coin","look","east","down","take corroded coin","look corroded coin","look","up","west","use corroded coin","look","east","down","up","west","north","look north","look","south","north","north","look","east","down","up","west","170","help","look","inv","use lit lantern","use tablet","look","north","look","look door","north","look door","take door","look","2 + 7 * 9^2 + 3^3 - 170 = 399","help","look","east","down","up","west","west","up","take shiny coin","look shiny coin","look","down","east","use shiny coin","look","take red coin","take corroded coin","take shiny coin","take blue coin","look","takce concave coin","look","inv","look","take concave coin","look","inv","look red coin","inv","look shiny coin","look blue","look blue coin","look concave coin","look corroded","look corroded coin","look","use blue coin","look","use red coin","use shiny coin","use concave coin","use corroded coin","look","north","look teleporter","look"]

// mirror qTpbTYuW8ppA Aqq8WuYTdqTp