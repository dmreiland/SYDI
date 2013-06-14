@echo off

cscript.exe D:\SYDI\sydi-server.vbs -wabefipqrsSu -n -t. -ex -o"D:\SYDI\%computername%.xml"

cscript.exe D:\SYDI\sydi-server.vbs -wabefipqrsSu -n -t. -d -ew -o"D:\SYDI\Output\DOC\%computername%.doc"

cscript.exe D:\SYDI\tools\sydi-transform.vbs -xD:\SYDI\%computername%.xml -sD:\SYDI\XML\serverhtml.xsl -oD:\SYDI\Output\HTML\%computername%.html

del D:\SYDI\%computername%.xml /q