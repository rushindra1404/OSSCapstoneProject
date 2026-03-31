# Getting Linux distribution name
distro=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
# Getting kernel version
kernel=$(uname -r)
# Getting current user
user=$(whoami)
# Getting home directory
home_dir=$HOME
# Getting system uptime
uptime_info=$(uptime -p)
# Getting current date and time
current_time=$(date)
# Assuming Linux uses GPL license (general statement)
license="GNU General Public License (GPL)"
# Displaying the information
echo "----------------------------------------"
echo "   Welcome to Your Linux System 🚀"
echo "----------------------------------------"
echo "Distribution : $distro"
echo "Kernel       : $kernel"
echo ""
echo "User         : $user"
echo "Home Dir     : $home_dir"
echo ""
echo "Uptime       : $uptime_info"
echo "Date & Time  : $current_time"
echo ""
echo "License Info : This system is based on $license"
echo "----------------------------------------"
echo "Have a great day! 😊"
echo "----------------------------------------"