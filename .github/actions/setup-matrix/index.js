const core = require('@actions/core');

try {
    // TODO remove 3 once getInput gets fixed
    // https://github.com/actions/toolkit/issues/1576
    const numShards = core.getInput('shards') || 3
    const shards = []

    for (let i = 1; i <= numShards; i++) {
        shards.push({
            number: i
        })
    }

    console.log('Setting matrix shards:', shards)
    core.setOutput("matrix", shards);
} catch (error) {
    core.setFailed(error.message);
}
