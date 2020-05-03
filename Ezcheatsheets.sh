#!/usr/bin/env python
#!/bin/bash   
import webbrowser
import os

#try:
#    import apt
#except ImportError:
#    print("Please install the 'python3-apt' package")
#    exit(1)




print "\033[1;31;40m     this is elad's Cheat Script lazy     \033[0m  \n"

print " "
print "enter the index of the cheatsheet you want to open "
print "enter anything else to exit \n"
print "1) Reverse Shell Cheat Sheet"
print "2) SQL Injection Cheat Sheet"
print "3) XSS cheatsheet"
print "4) LFI Cheat Sheet"
print "5) Path Traversal Cheat Sheet: Windows"

i = int(input())

if i == 1:
	webbrowser.open('https://highon.coffee/blog/reverse-shell-cheat-sheet/')
elif i == 2:
	webbrowser.open('https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet/ ')
elif i == 3:
	webbrowser.open('http://n0p.net/penguicon/php_app_sec/mirror/xss.html ')
elif i == 4:
	webbrowser.open('https://highon.coffee/blog/lfi-cheat-sheet/ ')
elif i == 5:
	webbrowser.open('https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/')
