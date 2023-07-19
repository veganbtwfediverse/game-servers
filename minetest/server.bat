SET GAME_HOME=%USERPROFILE%\bin\minetest-*
PUSHD %GAME_HOME%
START "" bin\minetest.exe --config minetest.server.conf --server --logfile minetest-server.log --quiet
Powershell.exe -Command "Get-Content minetest-server.log -Wait"
timeout -1