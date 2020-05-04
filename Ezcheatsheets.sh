#!/usr/bin/env python
#!/bin/bash   
import webbrowser
import os

#try:
#    import apt
#except ImportError:
#    print("Please install the 'python3-apt' package")
#    exit(1)


#dev tools
# print format Cprint(Terminal.black,"wadsadw") example willprint black wadsadw
# print "need2add" // not added yet

class col:
    """
    A list of settings for stylish terminal output according to
	http://www.termsys.demon.co.uk/vtansi.htm
    """
    black = "\033[1;30m"
    red = "\033[1;31m"
    green = "\033[1;32m"
    yellow = "\033[1;33m"
    blue = "\033[1;34m"
    orange= "\033[33m"
    magenta = "\033[1;35m"
    cyan = "\033[1;36m"
    white = "\033[1;37m"
    reset = "\033[0m"
    underscore = "\033[4m"
def Cprint(color,text):
		print (color+text) 
def clear():
	os.system('cls' if os.name == 'nt' else 'clear')
def logo():
	
	print ""
	Cprint(col.red,"                    this is elad's Cheat Script lazy     \033[0m  \n")
def Cheatsheet ():
	while True :
		clear()
		logo()
		Cprint (col.red,"****************************** Cheat Scripts *****************************")
		print ""
		Cprint (col.orange,"enter the index of the cheatsheet you want to open ")
		Cprint (col.orange,"enter anything else to exit \n")
		Cprint (col.orange,"1) Reverse Shell Cheat Sheet")
		Cprint (col.orange,"2) SQL Injection Cheat Sheet")
		Cprint (col.orange,"3) XSS cheatsheet")
		Cprint (col.orange,"4) LFI Cheat Sheet")
		Cprint (col.orange,"5) Path Traversal Cheat Sheet: Windows")
		Cprint (col.orange,"b) to go back")
		
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
def Tools ():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** All Tools ********************************")
		print ""
		Cprint (col.orange, "enter the index of the Tool you want to open\install")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Checkers")
		Cprint (col.orange, "2) View tools catagories")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) Install All tools")
		Cprint (col.orange, "b) to go back")
		
		i = raw_input()

		if i is "1":
			Checkers()
		elif i is "2":
			ToolsCat()
		elif i is "3":
			Cprint (col.orange, "need2add")
		elif i is "4":
			Cprint (col.orange, "need2add")
		elif i is "5":
			Cprint (col.orange, "need2add")
		if i is "b":
			mainmenu() 
			break
def Checkers ():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "******************************* Checkers ********************************")
		print ""
		Cprint (col.orange, "enter the index of the Checker you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Multikeker")
		Cprint (col.orange, "2) ")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "b) ")
		
		i = raw_input()

		if i is "1":
			Cprint (col.orange, "need2add")
		elif i is "2":
			Cprint (col.orange, "need2add")
		elif i is "3":
			Cprint (col.orange, "need2add")
		elif i is "4":
			Cprint (col.orange, "need2add")
		elif i is "5":
			Cprint (col.orange, "need2add")
		if i is "b":
			Tools() 
			break
def ToolsCat():
	while True :
		clear()
		logo()
	
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ""
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Info Gathering")
		Cprint (col.orange, "2) Vulnerability Analisis")
		Cprint (col.orange, "3) Web Apps")
		Cprint (col.orange, "4) Maintaining Access")
		Cprint (col.orange, "5) Explotation Tools")
		Cprint (col.orange, "6) Sniffing & Spoofing")
		Cprint (col.orange, "7) Reporting Tools")
		Cprint (col.orange, "5) Explotation Tools")
		Cprint (col.orange, "5) Explotation Tools")
		Cprint (col.orange, "5) Explotation Tools")
		Cprint (col.orange, "b) ")
	
	
	
		i = raw_input()

		if i is "1":
			print "need2add"
		elif i is "2":
			print "need2add"
		elif i is "3":
			print "need2add"
		elif i is "4":
			print "need2add"
		elif i is "5":
			print "need2add"	
		if i is "b":
			Tools()
def mainmenu():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** Main Menu ********************************")
		print ""
		Cprint (col.orange,"enter the index of the cheatsheet you want to open \n")
		Cprint (col.orange, "1) To open cheatsheets")
		Cprint (col.orange, "2) All tools")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) My shop")
		Cprint (col.orange, "0) to exit")
		
		
	
		i = raw_input()
		
		if i is "1":
			Cheatsheet()
			break
		elif i is "2":
			Tools()
			break
		elif i is "3":
			break
			print "need2add"
		elif i is "4":
			print "need2add"
		elif i is "5":
			webbrowser.open('https://shoppy.gg/@rooty')
		elif i is "0":
			break
	



mainmenu()



