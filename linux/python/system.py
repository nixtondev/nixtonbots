#!/usr/bin/env python3

import subprocess
import colorama
from colorama import Fore

ver = "0.1.8"

# Clear screen
subprocess.run(["clear"])

subprocess.run("curl https://nixton.dev/archive/nixton.txt", shell=True)

print("----------------------------------------------------------------")
print("")
print("Version: " + ver)
print("")
# Update system

subprocess.run("sudo apt-get update > /dev/null; echo 'Update system.'", shell=True)
print("[" + Fore.GREEN + " OK " + Fore.WHITE + "]")
subprocess.run("sleep 5", shell=True)
print("")
# Upgrade system
subprocess.run("sudo apt-get upgrade -y > /dev/null; echo 'Upgrade system.'", shell=True)
print("[" + Fore.GREEN + " OK " + Fore.WHITE + "]")
print("")
subprocess.run("sleep 5", shell=True)

print(Fore.RED + "----------------------------------------------------------------")
print(Fore.RED + "Advanced Package Tool: Showing details.")
print("----------------------------------------------------------------")
subprocess.run("sleep 5", shell=True)

# Update System
subprocess.run(["sudo", "apt", "update"])

subprocess.run("sleep 5", shell=True)

# Upgrade System
subprocess.run(["sudo", "apt", "upgrade", "-y"])

subprocess.run("sleep 5", shell=True)
print(Fore.GREEN + "")
subprocess.run("figlet -f big '[ DONE ]'", shell=True)
print("")
print(Fore.BLUE + "Thanks for using our script.")
print("")
