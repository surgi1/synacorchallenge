# Synacor Challenge

https://challenge.synacor.com/

JavaScript Implementation, browser+node

## The fun is real, take the challenge!

## Spoilers below this line

### Reading the binary

- See `read.js`.

### Building VM

- Self-navigating TDD.
- Simple stuff, watch for the incidental fuzziness in arch-spec regarding mainly the `rmem` and `wmem` instructions.
- see `Computer.js`.

### Twisty little mazes, all alike

- Built UI for playing the text game. Deployed [here](https://github.com/surgi1/synacorchallenge/index.html).
- Solved the Grue-heavy part manually by moving through the dungeon, realizing that it occupies some non-Euclidean space (`A -> south -> B -> north -> !A`).

### Ruins

- Permutation of 5 numbers fitting the equation.
- See `solveRuins` in `script.js`.

### Teleporter

- Built the transpiler to asm, see `challenge.asm`.
- Hacked the teleporter to get a code rejected by the website, ouch.
- By stack-tracing found the problematic method. Spent some number of hours, interrupted, trying to simulate/optimize it. Got to an ugly method that produced a solution after some hours.
- Later, found out about https://en.wikipedia.org/wiki/Ackermann_function and produced a proper solver.
- By far the most difficult part of the challenge.
- See `teleporter.js`.

### Beach

- Manually traced down the map.
- Built a simple recursive solver - BFS graph traverse.
- See `beach.js`.


Overall great stuff, really enjoyed it!
