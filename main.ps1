# © 2023 metaroro
$job1 = Start-Job { sleep 10; "[+] Finished (1)" }
# キー入力に必要な処理
Add-Type -AssemblyName System.Windows.Forms

# 入力設定を取得
$arr = Get-Content "key_set.txt"

# 実際に処理
foreach ($str in $arr) { 
 [System.Windows.Forms.SendKeys]::SendWait($str+"{ENTER}")
}
stop-job -Id $job1.Id
Remove-Job -Id $job1.Id
# © 2023 metaroro