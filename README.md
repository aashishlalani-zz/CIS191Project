# CIS191Project
Raspberry Pi Project

Breakdown of code files:

Tool.sh
- This script runs the entire program. It calls on the other scripts to determine intermediates such as temperature, precipitation, number of unread emails, etc. It has the overal while loop that is constantly updating the program. It also initializes most of the voltages for the LED lights.
- 
printTemp.sh
- This script is used by the Tool script. It calls the weather util api (which must be installed) and parses out the temperature and echos it.
-
