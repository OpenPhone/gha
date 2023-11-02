$Jobs = @()

for (($i = 1); $i -le $Env:shards; $i++)
{
    $Jobs += ""+$i+"/"+$Env:shards
}

Write-Output "shards=$( $Jobs | ConvertTo-JSON -Compress )" >> $Env:GITHUB_OUTPUT
