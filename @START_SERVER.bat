@echo off
echo Starting MySQL database. Please wait 5-10 seconds.
start /D.\MySQL\ MySQL.bat
ping 127.0.0.1 -n 5 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo.
echo Executing spawn script...
.\MySQL\bin\mysql.exe --user=dayz --password=dayz --host=127.0.0.1 --port=3307 --database=hivemind --execute="call pMain(1)"
ping 127.0.0.1 -n 5 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo.
echo Starting server...
start C:\arma2dayzmod\arma2dayzmod\arma2oaserver.exe -mod=EXPANSION\beta;EXPANSION;ca;@dayz;@hive -name=cfgdayz -config=cfgdayz\server.cfg -cfg=cfgdayz\arma2.cfg -profiles=cfgdayz -cpuCount=4 -maxmem=2047
.\MySQL\cecho {0A}	OK.{07} 
echo.
echo.
echo.
.\MySQL\cecho {0B}Launcher created by Pwnoz0r.{07}
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
.\MySQL\cecho {0A}Leaving le launcher...{07}
ping 127.0.0.1 -n 5 >NUL
exit