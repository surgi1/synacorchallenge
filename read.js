let fs = require('fs');

function getByteArray(filePath){
    let fileData = fs.readFileSync(filePath).toString('hex');
    let result = [];
    for (let i = 0; i < fileData.length; i+=4) result.push(parseInt('0x'+fileData[i+2]+''+fileData[i+3]+fileData[i]+''+fileData[i+1]));
    return result;
}

let result = getByteArray('challenge.bin');
console.log(result);
fs.writeFileSync('input.js', 'var input = ['+result.join(",")+']');
