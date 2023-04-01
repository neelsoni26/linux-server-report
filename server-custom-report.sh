o -e "\nWelcome user $(whoami), here's quick report:"
#Date: 
echo -e "\nToday's Date is: $(date | awk '{print $1 " " $2 " "  $3 " "  $6}')"
#Time:
echo -e "\nCurrent Time is: $(date | awk '{print $4 " " $5}')"
echo -e "\n*************************************"
#Uptime:
echo -e "\nCheck Server's Uptime:\n"
uptime
#Last $1 logins
echo -e "\n\nCheck Last $1 logings:"
last | head -$1
echo -e "\n*************************************"
#Disk Utilization 
echo -e "\nCheck Server Disk Utilization:"
#df -h | xargs | awk '{print $9 " " $10 " " $11 " "$12}'
df -h | xargs | awk '{print "\nTotal Space is: " $9}'
df -h | xargs | awk '{print "\nTotal Used Space is: " $10 " (" $12 ")"}'
df -h | xargs | awk '{print "\nTotal Available Space is: " $11}'
echo -e "\n*************************************"
#RAM utilization
echo -e "\nCheck RAM(Memory) Utilization:"
free -h | xargs | awk '{print "\nTotal space is: " $8}'
free -h | xargs | awk '{print "\nFree RAM is: " $10}'
echo -e "\n*************************************"
#CPU Utilization
echo -e "\nCheck CPU Utilization:\n"
top -b | head -$2
echo -e "\n*************************************\n"
