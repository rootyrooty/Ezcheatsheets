#!/usr/bin/env python
#!/bin/bash   
import webbrowser
import os

#try:
#    import apt
#except ImportError:
#    print("Please install the 'python3-apt' package")
#    exit(1)

def clear():
	os.system('cls' if os.name == 'nt' else 'clear')
	

def logo():
	
	print ""
	print "\033[1;31;40m     this is elad's Cheat Script lazy     \033[0m  \n"
	
def Cheatsheet ():
	while True :
		clear()
		logo()
	
		print ""
		print "enter the index of the cheatsheet you want to open "
		print "enter anything else to exit \n"
		print "1) Reverse Shell Cheat Sheet"
		print "2) SQL Injection Cheat Sheet"
		print "3) XSS cheatsheet"
		print "4) LFI Cheat Sheet"
		print "5) Path Traversal Cheat Sheet: Windows"
		print "b) to go back"
		
		i = raw_input()

		if i is "1":
			webbrowser.open('https://highon.coffee/blog/reverse-shell-cheat-sheet/')
		elif i is "2":
			webbrowser.open('https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet/ ')
		elif i is "3":
			webbrowser.open('http://n0p.net/penguicon/php_app_sec/mirror/xss.html ')
		elif i is "4":
			webbrowser.open('https://highon.coffee/blog/lfi-cheat-sheet/ ')
		elif i is "5":
			webbrowser.open('https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/')
		if i is "b":
			mainmenu() 
			break

def Checkers ():
	while True :
		clear()
		logo()
	
		print ""
		print "enter the index of the Checker you want to open "
		print "enter anything else to exit \n"
		print "1) Multikeker"
		print "2) SQL Injection Cheat Sheet"
		print "3) XSS cheatsheet"
		print "4) LFI Cheat Sheet"
		print "5) "
		print "b) to go back"
		
		i = raw_input()

		if i is "1":
			print ""
		elif i is "2":
			print ""
		elif i is "3":
			print ""
		elif i is "4":
			print ""
		elif i is "5":
			print ""
		if i is "b":
			mainmenu() 
			break
			
def mainmenu():
	while True :
		clear()
		logo()
		
		print ""
		print "enter the index of the cheatsheet you want to open \n"
		print "1) To open cheatsheets"
		print "2) All tools"
		print "3) Checkers"
		print "4) "
		print "5) My shop"
		print "0) to exit"
		
		
	
		i = raw_input()
		
		if i is "1":
			Cheatsheet()
			break
		elif i is "2":
			print "all tools"
			break
		elif i is "3":
			Checkers()
			break
			print ""
		elif i is "4":
			print ""
		elif i is "5":
			webbrowser.open('https://shoppy.gg/@rooty')
		elif i is "0":
			break
	
	
	
	
	
	


mainmenu()



