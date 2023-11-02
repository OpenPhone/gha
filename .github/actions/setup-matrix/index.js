const core = require('@actions/core');

try {
    const numShards = core.getInput('shards') || 3
    const shards = []

    for (let i = 1; i <= numShards; i++) {
        shards.push({
            shard: `${i}/${numShards}`
        })
    }

    console.log('Setting matrix shards:', shards)
    core.setOutput("shards", shards);
} catch (error) {
    core.setFailed(error.message);
}
