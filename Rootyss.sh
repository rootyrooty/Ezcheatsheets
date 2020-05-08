#!/usr/bin/env python3
import webbrowser
import os
import sys
#checkers imports ##requests 4 both
import requests
import ctypes
from multiprocessing.dummy import Pool
from multiprocessing import Lock
import json
#6270
#try:
#    import apt
#except ImportError:
#    print("Please install the 'python3-apt' package")
#    exit(1)



#max size of line to not start new line " 0) to exit                                                                      v"

#check dir (permission denied? mby coz not run as root)
#Dir=os.system("$(dirname $(readlink -f $0))")

#check installed packages
#installed_packages = os.system("dpkg --get-selections")

#get into dir permission denied? mby coz not run as root)
#os.system("cd $(dirname $(readlink -f $0))")


# creat installed packages txt && import it
os.system("dpkg --get-selections > installed_packages.txt")
installed_packages = open('installed_packages.txt', 'r+')

# check current ver with ver.text and internet connection

tver = 0.5
ver = requests.get('https://raw.githubusercontent.com/rootyrooty/Rottyss/master/version')

#dev tools
# print format Cprint(Terminal.black,"wadsadw") example willprint black wadsadw
# print "need2add" // not added yet
#packages lists
#get package packages[categorynumber][packagenumber]
#numbers start at 0]

#dpkg --get-selections | grep -v deinstall package list


Exploitation_Tools = [
        "armitage",
        "backdoor-factory",
        "beef-xss",
        "cisco-auditing-tool",
        "cisco-global-exploiter",
        "cisco-ocs",
        "cisco-torch",
        "commix",
        "crackle",
        "exploitdb",
        "jboss-autopwn",
        "linux-exploit-suggester",
        "metasploit-framework",
        "msfpc",
        "routersploit",
        "set",
        "shellnoob",
        "sqlmap",
        "thc-ipv6",
        "yersinia"
	]
Forensics_Tools = [
        "bulk-extractor",
        "capstone-tool",
        "chntpw",
        "cuckoo",
        "dc3dd",
        "ddrescue",
        "dumpzilla",
        "extundelete",
        "foremost",
        "galleta",
        "guymager",
        "libdistorm3-3",
        "p0f",
        "pdf-parser",
        "pdfid",
        "peepdf",
        "python-distorm3",
        "python3-capstone",
        "python3-distorm3",
        "regripper",
        "volatility",
        "xplico"
	]  
Hardware_Hacking = [
        "android-sdk",
        "apktool",
        "arduino",
        "dex2jar",
        "sakis3g",
        "smali"
	]
Information_Gathering = [
        "ace-voip",
        "amap",
        "apt2",
        "arp-scan",
        "bing-ip2hosts",
        "braa",
        "casefile",
        "cdpsnarf",
        "cisco-torch",
        "copy-router-config",
        "dmitry",
        "dnsenum",
        "dnsmap",
        "dnsrecon",
        "dnstracer",
        "dnswalk",
        "dotdotpwn",
        "enum4linux",
        "enumiax",
        "eyewitness",
        "faraday",
        "fierce",
        "firewalk",
        "fragroute",
        "fragrouter",
        "golismero",
        "goofile",
        "hping3",
        "ident-user-enum",
        "inspy",
        "intrace",
        "ismtp",
        "lbd",
        "masscan",
        "metagoofil",
        "nbtscan-unixwiz",
        "nikto",
        "nmap",
        "ntopng",
        "ntopng-data",
        "ntopng-doc",
        "osrframework",
        "p0f",
        "parsero",
        "qsslcaudit",
        "recon-ng",
        "set",
        "smbmap",
        "smtp-user-enum",
        "sntop",
        "sparta",
        "sslsplit",
        "sslstrip",
        "sslyze",
        "sublist3r",
        "thc-ipv6",
        "theharvester",
        "tlssled",
        "twofi",
        "unicornscan",
        "urlcrazy",
        "wireshark",
        "xplico"
	]
Maintaining_Access = [
        "cryptcat",
        "cymothoa",
        "dbd",
        "dns2tcp",
        "httptunnel",
        "nishang",
        "polenum",
        "powersploit",
        "pwnat",
        "ridenum",
        "sbd",
        "shellter",
        "webshells",
        "weevely",
        "winexe"
	]	
Password_Attacks = [
        "brutespray",
        "burpsuite",
        "cewl",
        "chntpw",
        "cisco-auditing-tool",
        "cmospwd",
        "creddump7",
        "crowbar",
        "crunch",
        "gpp-decrypt",
        "hash-identifier",
        "hashcat",
        "hydra",
        "john",
        "johnny",
        "maskprocessor",
        "multiforcer",
        "ncrack",
        "oclgausscrack",
        "patator",
        "polenum",
        "rainbowcrack",
        "rcracki-mt",
        "rsmangler",
        "seclists",
        "sqldict",
        "statsprocessor",
        "thc-pptp-bruter",
        "truecrack",
        "webscarab",
        "wordlists",
        "zaproxy"
	]
Reporting_Tools = [
        "casefile",
        "cherrytree",
        "cutycapt",
        "dos2unix",
        "dradis",
        "metagoofil",
        "nipper-ng",
        "pipal",
	]
Reverse_Engineering = [
        "apktool",
        "dex2jar",
        "edb-debugger",
        "javasnoop",
        "jd-gui",
        "ollydbg",
        "python-distorm3",
        "python3-distorm3",
        "smali",
        "valgrind",
        "yara"
	]
Sniffing_and_Spoofing = [
        "bettercap",
        "burpsuite",
        "dnschef",
        "fiked",
        "hamster-sidejack",
        "hexinject",
        "iaxflood",
        "inviteflood",
        "ismtp",
        "isr-evilgrade",
        "mitmproxy",
        "ohrwurm",
        "protos-sip",
        "rebind",
        "responder",
        "rtpbreak",
        "rtpinsertsound",
        "rtpmixsound",
        "sctpscan",
        "siparmyknife",
        "sipp",
        "sipvicious",
        "sniffjoke",
        "sslsplit",
        "sslstrip",
        "thc-ipv6",
        "voiphopper",
        "webscarab",
        "wifi-honey",
        "wireshark",
        "xspy",
        "yersinia",
        "zaproxy"
	]
Stress_Testing = [
        "dhcpig",
        "funkload",
        "iaxflood",
        "inviteflood",
        "ipv6-toolkit",
        "mdk3",
        "reaver",
        "rtpflood",
        "slowhttptest",
        "t50",
        "termineter",
        "thc-ipv6",
        "thc-ssl-dos"
	]
Vulnerability_Analysis = [
        "bbqsql",
        "bed",
        "cisco-auditing-tool",
        "cisco-global-exploiter",
        "cisco-ocs",
        "cisco-torch",
        "copy-router-config",
        "doona",
        "dotdotpwn",
        "jsql",
        "lynis",
        "nmap",
        "ohrwurm",
        "openvas",
        "oscanner",
        "sfuzz",
        "sidguesser",
        "siparmyknife",
        "sqlmap",
        "sqlninja",
        "sqlsus",
        "thc-ipv6",
        "tnscmd10g",
        "unix-privesc-check",
        "yersinia"
	]
Web_Applications = [
        "apache-users",
        "arachni",
        "bbqsql",
        "burpsuite",
        "cutycapt",
        "davtest",
        "dirb",
        "dirbuster",
        "funkload",
        "gobuster",
        "hurl",
        "jboss-autopwn",
        "joomscan",
        "jsql",
        "nikto",
        "padbuster",
        "paros",
        "parsero",
        "plecost",
        "recon-ng",
        "skipfish",
        "sqlmap",
        "sqlninja",
        "sqlsus",
        "uniscan",
        "webscarab",
        "websploit",
        "wfuzz",
        "whatweb",
        "wpscan",
        "xsser",
        "zaproxy"
	]
Wireless_Attacks = [
        "aircrack-ng",
        "airgraph-ng",
        "asleap",
        "bluelog",
        "blueranger",
        "bluesnarfer",
        "bully",
        "cowpatty",
        "crackle",
        "eapmd5pass",
        "fern-wifi-cracker",
        "freeradius-wpe",
        "hostapd-wpe",
        "kalibrate-rtl",
        "killerbee",
        "kismet",
        "mdk3",
        "mfcuk",
        "mfoc",
        "mfterm",
        "multimon-ng",
        "pixiewps",
        "pyrit",
        "reaver",
        "redfang",
        "rtlsdr-scanner",
        "spooftooph",
        "wifi-honey",
        "wifiphisher",
        "wifite"
	]

packages=[
	Exploitation_Tools,
	Forensics_Tools,
	Hardware_Hacking,
	Information_Gathering,
	Maintaining_Access,
	Password_Attacks,
	Reporting_Tools,
	Reverse_Engineering,
	Sniffing_and_Spoofing,
	Stress_Testing,
	Vulnerability_Analysis,
	Web_Applications,
	Wireless_Attacks
	]
#handeling
# os.system(aptgi+packages[0][1]) to install package


def installp(ptype,p):
	clear()
	logo()
	
	if packages[ptype][p] not in installed_packages.read() :
		Cprint(col.orange,"are you sure you want to install this "+packages[ptype][p]+ " package?(y/n)")
		i = input()
		if i == "y":
			os.system("sudo apt-get install "+packages[ptype][p])
			os.system (input())
	else:
		Cprint(col.orange,packages[ptype][p])
		Cprint(col.orange,"package is already installed")
	cntnu()
def installall():
	clear()
	Cprint(col.orange,"Are you sure you want to commit this Action y/n (It will take some time  )")
	i=input()
	if i == "y":
		ptype=0
		p=0
		
		while ptype < len(packages):
			while p < len(packages[ptype]):
				if packages[ptype][p] not in installed_packages.read() :
					os.system("sudo apt-get install "+packages[ptype][p])
					clear()
				else:
					Cprint(col.orange,packages[ptype][p])
					Cprint(col.orange,"package is already installed")
				p +=1
			ptype+=1
def Cconnection():
	try:
		ver = requests.get('https://raw.githubusercontent.com/rootyrooty/Rottyss/master/version')
		Connection = True
	except:
		connection = False
						
					
					
class Instalapplist:		
	def isinstalled(ptype,p):
			try:
				import p
			except ImportError as e:
				pass
			 
	
def cntnu():
	print("\033[33m Press"+"\033[1;31m Enter"+"\033[33m key to go "+"\033[1;31m back")
	i= input()
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
	
	print ("")
	Cprint(col.red,"                         This is Rooty's Script            \033[0m  \n")
def Cheatsheet ():
	while True :
		clear()
		logo()
		Cprint (col.red,"****************************** Cheat Scripts *****************************")
		print ("")
		Cprint (col.orange,"enter the index of the cheatsheet you want to open ")
		Cprint (col.orange,"enter anything else to exit \n")
		Cprint (col.orange,"1) Reverse Shell Cheat Sheet")
		Cprint (col.orange,"2) SQL Injection Cheat Sheet")
		Cprint (col.orange,"3) XSS cheatsheet")
		Cprint (col.orange,"4) LFI Cheat Sheet")
		Cprint (col.orange,"5) Path Traversal Cheat Sheet: Windows")
		Cprint (col.orange,"b) to go back")
		
		i = input()
		
		if i == "1    ":
			webbrowser.open('https://highon.coffee/blog/reverse-shell-cheat-sheet/')
		elif i == "2":
			webbrowser.open('https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet/ ')
		elif i == "3":
			webbrowser.open('http://n0p.net/penguicon/php_app_sec/mirror/xss.html ')
		elif i == "4":
			webbrowser.open('https://highon.coffee/blog/lfi-cheat-sheet/ ')
		elif i == "5":
			webbrowser.open('https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/')
		if i == "b":
			mainmenu() 
			break
def Tools ():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** All Tools ********************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open\install")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Checkers")
		Cprint (col.orange, "2) View tools catagories")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) Install All tools")
		Cprint (col.orange, "b) to go back")
		
		i = input()

		if i == "1":
			Checkers()
		elif i == "2":
			ToolsCat()
		elif i == "3":
			Cprint (col.orange, "need2add")
		elif i == "4":
			Cprint (col.orange, "need2add")
		elif i == "5":
			installall()
		if i == "b":
			mainmenu() 
			break
def Checkers ():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "******************************* Checkers ********************************")
		print ("")
		Cprint (col.orange, "enter the index of the Checker you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Multikeker")
		Cprint (col.orange, "2) ")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "b) ")
		
		i = input()

		if i == "1":
			Cprint (col.orange, "need2add")
		elif i == "2":
			Cprint (col.orange, "need2add")
		elif i == "3":
			Cprint (col.orange, "need2add")
		elif i == "4":
			Cprint (col.orange, "need2add")
		elif i == "5":
			Cprint (col.orange, "need2add")
		if i == "b":
			Tools() 
			break
def ToolsCat():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			Expltools()
		elif i == "2":
			Frctools()
		elif i == "3":
			Hdhack()
		elif i == "4":
			InfoGath()
		elif i == "5":
			MntngAcc()
		elif i == "6":
			PsswdAttk()	
		elif i == "7":
			Reprttools()	
		elif i == "8":
			RevrEngne()
		elif i == "9":
			SnifnSpof()
		elif i == "10":
			Strsstst()
		elif i == "11":
			VulAnal()
		elif i == "12":
			WebApps()
		elif i == "13":
			WireAttks()
		if i == "b":
			Tools()
def contact():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "***************************** ContactInfo *******************************")
		print ("")
		Cprint (col.orange,"enter the index of the cheatsheet you want to open \n")
		Cprint (col.orange, " 1) GitHub")
		Cprint (col.orange, " 2) Discord")
		Cprint (col.orange, " 3) Open Metasploit")
		Cprint (col.orange, " 4) Contact me")
		Cprint (col.orange, " 5) My shop")
		Cprint (col.orange, " b) to go back")
		
		i = input()
		
		if i == "1":
			webbrowser.open('https://github.com/rootyrooty')
			break
		elif i == "2":
			webbrowser.open('https://discord.gg/qSMzcj5')
			break
		elif i == "3":
			break
			os.system("msfconsole")
		elif i == "4":
			contact()
		elif i == "5":
			webbrowser.open('https://shoppy.gg/@rooty')
		elif i == "0":
			break	
		if i == "b":
			mainmenu()


def InfoGath():
	while True :
		clear()
		logo()
		Cprint (col.red, "*************************** Pentesting Tools ****************************")
		Cprint (col.orange, "**************************** Info Gathering *****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) ace-voip")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) back")
		Cprint (col.orange, " 0) Exit")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(3,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()		
def VulAnal():
	while True :
		clear()
		logo()
		Cprint (col.red, "*************************** Pentesting Tools ****************************")
		Cprint (col.orange, "************************* Vulnerbility Analisis *************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) bbqsq                     16) sidguesser")
		Cprint (col.orange, " 2) bed                       17) siparmyknife")
		Cprint (col.orange, " 3) cisco-auditing-tool       18) sqlmap")
		Cprint (col.orange, " 4) cisco-global-exploiter    19) sqlninja")
		Cprint (col.orange, " 5) cisco-ocs                 20) sqlsus")
		Cprint (col.orange, " 6) cisco-torch               21) tnscmd10g")
		Cprint (col.orange, " 7) copy-router-config        22) yersinia")
		Cprint (col.orange, " 8) doona                     23) unix-privesc-check")
		Cprint (col.orange, " 9) dotdotpwn                 ")
		Cprint (col.orange, "10) jsql                      ")
		Cprint (col.orange, "11) lynis                     ")
		Cprint (col.orange, "12) nmap                      ") 
		Cprint (col.orange, "13) openvas                   ") 
		Cprint (col.orange, "14) oscanner                  ")
		Cprint (col.orange, "15) sfuzz                     ") 
		Cprint (col.orange, " b) back")
	
	

		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(10,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()				
def Expltools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) armitage                  16)set")
		Cprint (col.orange, " 2) backdoor-factory          17)shellnoob")
		Cprint (col.orange, " 3) beef-xss                  18)sqlmap")
		Cprint (col.orange, " 4) cisco-auditing-tool       19)thc-ipv6")
		Cprint (col.orange, " 5) cisco-global-exploiter    20)yersinia")
		Cprint (col.orange, " 6) cisco-ocs                    ")
		Cprint (col.orange, " 7) cisco-torch                  ")
		Cprint (col.orange, " 8) commix                       ")
		Cprint (col.orange, " 9) crackle                      ")
		Cprint (col.orange, "10) exploitdb                    ")
		Cprint (col.orange, "11) jboss-autopwn                ")
		Cprint (col.orange, "12) linux-exploit-suggester      ")
		Cprint (col.orange, "13) metasploit-framework         ")
		Cprint (col.orange, "14) msfpc                        ")
		Cprint (col.orange, "15) routersploit                 ")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(0,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def Frctools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) bulk-extractor            16)peepdf")
		Cprint (col.orange, " 2) capstone-tool             17)python-distorm3")
		Cprint (col.orange, " 3) chntpw                    18)python3-capstone")
		Cprint (col.orange, " 4) cuckoo                    19)python3-distorm3")
		Cprint (col.orange, " 5) dc3dd                     20)regripper")
		Cprint (col.orange, " 6) ddrescue                  21)volatility")
		Cprint (col.orange, " 7) dumpzilla                 22)xplico")
		Cprint (col.orange, " 8) extundelete               ")
		Cprint (col.orange, " 9) foremost                  ")
		Cprint (col.orange, "10) galleta                   ")
		Cprint (col.orange, "11) guymager                  ")
		Cprint (col.orange, "12) libdistorm3-3             ")
		Cprint (col.orange, "13) p0f                       ")
		Cprint (col.orange, "14) pdf-parser                ")
		Cprint (col.orange, "15) pdfid                     ")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(1,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def Hdhack():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) android-sdk")
		Cprint (col.orange, " 2) apktool")
		Cprint (col.orange, " 3) arduino")
		Cprint (col.orange, " 4) dex2jar")
		Cprint (col.orange, " 5) sakis3g")
		Cprint (col.orange, " 6) smali")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(2,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def MntngAcc():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(4,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def PsswdAttk():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(5,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def Reprttools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(6,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def RevrEngne():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(7,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def SnifnSpof():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(8,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def Strsstst():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) dhcpig")
		Cprint (col.orange, " 2) funkload")
		Cprint (col.orange, " 3) iaxflood")
		Cprint (col.orange, " 4) inviteflood")
		Cprint (col.orange, " 5) ipv6-toolkit")
		Cprint (col.orange, " 6) mdk3")
		Cprint (col.orange, " 7) reaver")
		Cprint (col.orange, " 8) rtpflood")
		Cprint (col.orange, " 9) slowhttptest")
		Cprint (col.orange, "10) t50")
		Cprint (col.orange, "11) termineter")
		Cprint (col.orange, "12) thc-ipv6")
		Cprint (col.orange, "13) thc-ssl-dos")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(9,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def WebApps():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(11,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()
def WireAttks():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		try:
			i=int(i)
			if type(i) == int:
				print ("yay")
				installp(12,(i-1))
			if i == "0":
				os.system(exit)
		except:
			if i == "b":
				ToolsCat()

def mainmenu():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** Main Menu ********************************")
		print ("")
		Cprint (col.orange,"enter the index of the cheatsheet you want to open \n")
		Cprint (col.orange, " 1) To open cheatsheets")
		Cprint (col.orange, " 2) All tools")
		Cprint (col.orange, " 3) Open Metasploit")
		Cprint (col.orange, " 4) Contact me")
		Cprint (col.orange, " 5) My shop")
		Cprint (col.orange, " 6) update Rootyss")
		Cprint (col.orange, " 0) to exit                                                                      v")
		
		i = input()
		
		if i == "1":
			Cheatsheet()
			break
		elif i == "2":
			Tools()
			break
		elif i == "3":
			break
			os.system("msfconsole")
		elif i == "4":
			contact()
		elif i == "5":
			webbrowser.open('https://shoppy.gg/@rooty')
		elif i == "6":
			Cconnection()
			if Cconnection:
				clear()
				Cprint(col.orange,"Checking for updates")
				if float(tver) == float(ver.text):
					Cprint(col.green,"Current version is alteady installed")
					cntnu()
				else:
					Cprint(col.orange,"Updating")
					os.system("cd Dir")
					os.system("git clone https://github.com/rootyrooty/Rottyss.git")
					cntnu()
			else:
				Cprint (col.red, "No connection Established")
		elif i == "0":
			break


#checker

combo=0
hits=0
proxies=0
loaded=0
errors = 0
	
class checker(object):
	def __init__(self,proxy_location,combo_location):
		self.proxy_l = proxy_location
		self.combo_l = combo_location
		
		
		
	def checkermain(self,email,password):
		pass
		
	def combo_loader(self):
		pass
		
	def proxy_machine(self):
		pass
		
	def sender(self):
		pass
	
	def threads(self):
		pass
		
		

post_context_data = {
	"address": {},
	"avatarURL": "assets/i/avatar/default.png",
	"newPassword": "",
	"password": "awdsadw",
	"passwordVerification": "",
	"state":"auth",
	"userName":"test@gmail.com",
}

headers_context_data = {
	"content-type": "application/vnd-v4.0+json",
	"x-device-os-id": "8c6ba119-2f93-48e4-9a92-ec095a6ca48e",
	"accept-enconding":"gzip, deflate, br",
	"accept": "application/json, text/plain, */*",
}


api_sender = requests.session()
json_content = api_sender.post("https://api.grabpoints.com/login", data = json.dumps(post_context_data), headers=headers_context_data).content
print(json_content)








#print(installed_packages) do not if else is print
#installp(1,21)




#clear()
#mainmenu()

#checker()


#input()








