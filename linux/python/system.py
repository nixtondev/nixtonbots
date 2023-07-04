#!/usr/bin/env python3

import subprocess

# Clear screen
subprocess.run(["clear"])

subprocess.run("curl https://nixton.dev/archive/nixton.txt", shell=True)

# Update system
subprocess.run("sudo apt-get update > /dev/null; echo 'Update system.'", shell=True)

subprocess.run("sleep 5", shell=True)

# Upgrade system
subprocess.run("sudo apt-get upgrade -y > /dev/null; echo 'Upgrade system.'", shell=True)

subprocess.run("sleep 5", shell=True)

print("Advanced Package Tool: Showing details.")

subprocess.run("sleep 5", shell=True)

# Update System
subprocess.run(["sudo", "apt", "update"])

subprocess.run("sleep 5", shell=True)

# Upgrade System
subprocess.run(["sudo", "apt", "upgrade", "-y"])

subprocess.run("sleep 5", shell=True)

print("[ Done ]")
