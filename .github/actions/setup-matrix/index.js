const core = require('@actions/core');

try {
    const numShards = core.getInput('shards') || 1
    const shards = []

    for(let i =1; i <=numShards; i++) {
        shards.push(i)
    }

    console.log('Setting matrix shards:', shards)
    core.setOutput("matrix", shards);
} catch (error) {
    core.setFailed(error.message);
}
