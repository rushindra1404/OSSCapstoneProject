This is a repository of five simple shell scripts developed as part of a class project to learn about Free and Open Source Software (FOSS), by not only creating scripts but also gaining a better understanding of how Linux systems work and how open-source tools can be applied in real-world settings.
### Purpose of this Study
Through the use of Git, an open-source software tool, and by developing shell scripts to practice various concepts within Linux (automation, file handling, obtaining system info/logs), I explored how to automate tasks and gather system information.
Each script is basic and very simple; however, each demonstrates significant shell scripting concepts.
---
### List of Scripts
#### 1) System Report Script `system_report.sh`
This script generates a simple report of basic system information:

- Distribution and version of the installed Linux OS & Kernel
- Current User (that created this script), Home Directory for that User
- Current Uptime (how long system has been up) & Current Date

**Concepts used:** Variables, Command Substitution, ECHO
#### 2) FOSS Package Detector Script `package_inspector.sh`
This script checks if a package is installed and will display information about that package if it is.
- Check if package is installed
- Displays Package Version, Description
- Uses case statement for displaying package information
**Concepts Used:** If/Else - Case - Grep - Dpkg

#### 3) Disk Space & Permissions Audit (disk_perms_audit.sh)
This script checks all of the important directories (such as ) for the following:
- Permissions for each directory & subdirectory
- Owner of each directory & subdirectory
- Total Disk Space Used by all directories & subdirectories
**Concepts Used:** For Loop - Awk - Df - Dd - Du - Touch - Tcsh

#### 4)Log File Analyzer (log_analyzer.sh)

When you have a log file, this script counts how many times a certain term appears.
Functions Of The Log File Analyzer:
saves the amount of times an error or warning appears in log files
provides you with the last 5 lines of the log file that matched your search criteria
Concepts used in the Log File Analyzer:
while loops, if statements, counters, grep

#### 5) Open Source Manifesto Generator (script5.sh)

This script generates an open source manifesto based on your information.
Functions Of The Open Source Manifesto Generator:
allows you to input your name and information about yourself
produces a paragraph that represents your open source manifesto
saves that paragraph to a file
Concepts used in the Open Source Manifesto Generator:
reading, variables, writing to files, using the date command

#### Clone the repository:
git clone https://github.com/rushindra1404/OSSCapstoneProject.git
cd OSSCapstoneProject
Give execution permission:
chmod +x *.sh
Run any script:
./script_name.sh
Example:
./system_report.sh


#### What I Learned

Basic shell scripting and linux commands
How real world open source applications work
Why automating and improving daily tasks can benefit you greatly
How to apply many of the scripting concepts to the real world

#### Open Source Note

I learned that open source is not just about free tools but about sharing knowledge and collaboratively building things together