$Jobs = @()

for (($i = 1); $i -le $Env:shards; $i++)
{
    $Jobs += ""+$i+"/"+$Env:shards
}

Write-Host "::set-output name=shards::$( $Jobs | ConvertTo-JSON -Compress ))"
