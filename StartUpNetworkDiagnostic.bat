:: This batch file checks for network connection problems 
:: and saves the output to a .txt file.
:: used mostly after the netowrk breaking win10 update
ECHO OFF
:: View network connection details
ipconfig /all >>  results.txt
:: Check if Google.com is reachable
ping google.com >> results.txt
:: Run a traceroute to check the route to Google.com
tracert google.com >> results.txt
:: Try to fix the connectivity issue
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns