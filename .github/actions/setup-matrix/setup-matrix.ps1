$Jobs = @()

for (($i = 1); $i -le $Env:shard_count; $i++)
{
    $Jobs += ""+$i+"/"+$Env:shard_count
}

Write-Output "shards=$( $Jobs | ConvertTo-JSON -Compress )" >> $Env:GITHUB_OUTPUT
