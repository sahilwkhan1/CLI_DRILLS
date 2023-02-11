# A. PIPES

# 1. Download the contents of "Harry Potter and the Goblet of fire" using the command line 
wget -O Harry_Porter_Book.txt https://raw.githubusercontent.com/bobdeng/owlreader/master/ERead/assets/books/Harry%20Potter%20and%20the%20Goblet%20of%20Fire.txt


# 2. Print the first three lines in the book
head -n 3 Harry_Porter_Book.txt 


# 3. Print the last 10 lines in the book
tail -n 10 Harry_Porter_Book.txt 


# 4. How many times do the following words occur in the book?
	#Harry
	#Ron
	#Hermione
	#Dumbledore
	
grep -o "Harry" Harry_Porter_Book.txt | wc -w
grep -o "Ron" Harry_Porter_Book.txt | wc -w
grep -o "Hermione" Harry_Porter_Book.txt | wc -w
grep -o "Dumbledore" Harry_Porter_Book.txt | wc -w


# 5. Print lines from 100 through 200 in the book
tail -n +100 Harry_Porter_Book.txt | head -n 101


# 6. How many unique words are present in the book?
cat Harry_Porter_Book.txt | tr A-Z a-z |tr '[:punct:]' ' '| tr -s " " "\n"|sort -u |wc -w


# B. PROCESSES AND PORTS

1. List your browser's process ids (pid) and parent process ids(ppid)
pidof brave # We get pid of browser
cat /proc/<"Any one pid">/status | grep PPid   # Input any one pid from previous command into given cmd to find ppid

2. Stop the browser application from the command line
pkill brave


3. List the top 3 processes by CPU usage.
ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -4


4. List the top 3 processes by memory usage.
ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -4

5. Start a Python HTTP server on port 8000
python3 -m http.server 8000

6. Open another tab. Stop the process you started in the previous step
kill <pid> 

7. Start a Python HTTP server on port 90
sudo python3 -m http.server 90


8. Display all active connections and the corresponding TCP / UDP ports.
netstat -at

9. Find the pid of the process that is listening on port 5432
sudo netstat -nlp | grep 5432



# C. MANAGING SOFTWARES

# 1. Use apt (Ubuntu) or homebrew (Mac) to:
	# Install htop, vim and nginx	
	# Uninstall nginx
sudo apt install htop
sudo apt install vim
sudo apt install nginx
	
	

# D. MISC

1. What's your local IP address?
ip a


2. Find the IP address of google.com
nslookup google.com


3. How to check if Internet is working using CLI?
ping google.com


4. Where is the node command located? What about code?
node :- /usr/bin/node
which node

code :- /usr/bin/code
which code
