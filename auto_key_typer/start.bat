rem 実行するps1ファイルの指定
set start_filename="%~dp0main.ps1"

rem 実行
powershell -ExecutionPolicy Unrestricted -File %start_filename%

echo 完了しました。
pause
