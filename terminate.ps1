$ports= @('8080','9091','9092')
foreach ($i in $ports) {
    $processPID =  $($(netstat -aon | findstr $i)[0] -split '\s+')[-1]
    taskkill /f /pid $processPID
}
