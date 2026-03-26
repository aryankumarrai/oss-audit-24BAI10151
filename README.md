# Open Source Audit: MySQL

**Student Name:** Aryan Kumar Rai  
**Registration Number:** 24BAI10151  
**Chosen Software:** MySQL 

## Project Overview
This repository contains the shell scripts developed for the Open Source Audit capstone project. It demonstrates practical Linux command-line skills and automates the inspection of MySQL's system footprint, dependencies, and operational logs.

## Required Dependencies 
To successfully execute the scripts in this repository, the following environment is required:
* **Operating System:** An Ubuntu based Linux distribution (or an equivalent VM).
* **Shell:** Bash.
* **Permissions:** `sudo` (root) access is mandatory for Scripts 3 and 4 to read system directories and daemon logs.
* **Software:** The `mysql-server` package must be installed and configured on the system.

## Script Descriptions and Execution Instructions 

Below are the descriptions and step-by-step instructions to run each of the five required shell scripts on your Linux machine.

### Script 1: System Identity Report (`script1.sh`)
* **Description:** This script acts as a system welcome screen. It retrieves and formats essential system information, including the current Linux distribution, kernel version, active user, and system uptime. It also outputs a note about the open-source license covering the OS. [cite: 248, 94, 95, 96, 97, 98]
* **How to Run:**
  1. Open your terminal.
  2. Ensure the script is executable by running: `chmod +x script1.sh`
  3. Execute the script: `./script1.sh` 

### Script 2: FOSS Package Inspector (`script2.sh`)
* **Description:** This script verifies if a specific open-source tool (defaulting to `mysql-server`) is installed on the system using the `dpkg` package manager. If installed, it outputs the version and architecture. It utilizes a case statement to append a brief philosophical note about the software's impact. [cite: 248, 126]
* **How to Run:**
  1. Open your terminal.
  2. Make the script executable: `chmod +x script2.sh`
  3. Execute the script (it defaults to checking MySQL): `./script2.sh`
  4. *Optional:* Test it with another package by passing an argument: `./script2.sh apache2`

### Script 3: Disk and Permission Auditor (`script3.sh`)
* **Description:** This script automates a security and storage audit. It iterates through an array of critical system directories and MySQL-specific paths (like `/var/lib/mysql` and `/etc/mysql`), extracting and displaying the read/write/execute permissions, the owning user/group, and the total disk space consumed by each directory. [cite: 248, 146, 147]
* **How to Run:**
  1. Open your terminal.
  2. Make the script executable: `chmod +x script3.sh`
  3. Execute the script with root privileges (required to read restricted directories): `sudo ./script3.sh`

### Script 4: Log File Analyzer (`script4.sh`)
* **Description:** This script parses system or daemon log files line-by-line. It takes a file path and a keyword (defaulting to 'error') as arguments, counts the total number of occurrences of that keyword, and prints the last 5 matching lines for quick debugging. [cite: 248, 164]
* **How to Run:**
  1. Open your terminal.
  2. Make the script executable: `chmod +x script4.sh`
  3. Execute the script with root privileges, providing the path to the MySQL error log and the keyword you want to search for: `sudo ./script4.sh /var/log/mysql/error.log warning`

### Script 5: The Open Source Manifesto Generator (`script5.sh`)
* **Description:** This is an interactive script that prompts the user with three questions regarding their views on open-source software and freedom. It captures these inputs, concatenates them into a formatted paragraph, and saves the output to a dynamically named `.txt` file using redirection. [cite: 248, 186]
* **How to Run:**
  1. Open your terminal.
  2. Make the script executable: `chmod +x script5.sh`
  3. Execute the script: `./script5.sh`
  4. Answer the interactive prompts in the terminal to generate your custom text file.