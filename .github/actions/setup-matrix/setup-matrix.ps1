$Jobs = @()

for (($i = 1); $i -le $Env:shards; $i++)
{
    $Jobs += $i
}

Write-Host "::set-output name=shards::$( $Jobs | ConvertTo-JSON -Compress ))"
