const MAX_RUNNERS = process.argv[2];
const runners = [];

if (MAX_RUNNERS <= 0) throw new Error('Invalid number of runners');
for (let index = 1; index <= MAX_RUNNERS; index++) {
    runners.push(index);
}

process.stdout.write(JSON.stringify(runners));
