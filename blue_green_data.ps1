$instanceid = invoke-restmethod -uri http://169.254.169.254/latest/meta-data/instance-id
$indexfile = 'c:\inetpub\wwwroot\index.html'
Install-WindowsFeature -Name Web-Server


[System.IO.File]::WriteAllLines($indexfile,'<html>')
[System.IO.File]::AppendAllText($indexfile,'<body>' + ([Environment]::NewLine))
[System.IO.File]::AppendAllText($indexfile,'node_name ' + 'I am the' + $appcolor + "my instance id is:" + $instanceid + ([Environment]::NewLine))
[System.IO.File]::AppendAllText($indexfile,'<\body>' + ([Environment]::NewLine))
[System.IO.File]::AppendAllText($indexfile,'<\html>' + ([Environment]::NewLine))