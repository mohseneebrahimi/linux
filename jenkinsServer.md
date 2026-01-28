#prepare Jenkins server
#0- VirtualBox/ new Server/ download ISO file/ cpu:2 mem:2 storage:4G(2.6g min) / R-click/setting/network/Bridged Adapter should be selected-----premitous:all
# 1- find local IP(192.168.1.1)
# 2- ping IP(from CMD)
# 3 install SSH/ start Service---------should be ---active-running
# 4- mobaXtrem
# 5- install Java
# SSL, 443 certificate,https certification-------for download-----------if 443...: just wait
# 6-add Jenkins Repository/ install Jenkins/ call in browser // add key for jenkins---
# job1: shell--------just type "hello"
# 7-install Plagin GIT
#provide User/pass and hostname
sudo su -            to change to root
#private IP
ip a
hostname -I
sudo apt install net-tools     --------- for ifconfig
ifconfig
#check Network:
ping 192.168.x.x
ip route -------- give router IP,local network works
#check internet:
ping -c 4 8.8.8.8-------ping 8.8.8.8
ping google.com
#get public Ip
curl ifconfig.me
ping 192.168.0.0 -------------------------------- age in javab nade moshkel ssh nis moshkel networkeee
sudo apt install openssh-server -y
# 2 important job in ssh: 1- user/pass Authentication is to be activated, 2- key-gen to create publicKey privatekey-----publicKey for tokhmgozary, privatekey another way
# ?????
sudo systemctl status ssh-------if ssh is up & running should be  "active(running)"
sudo ss -tlnp | grep :22-----we want to see if SSH listen to port 22
nano /etc/ssh/ssh_config---------port 22 comment nabashad
systemctl ssh start
systemctl ssh restart
ssh localhost--------ettesale dakheli
#active in boot:
sudo systemctl enable ssh
#clone------------------------hame chiz az avval

#change hostname
cat /etc/hostname
hostname jenkinsServer

#where is installed GIT
whereis git
# /usr/bin/git----------jenkins/tool/git/ ----last part:"git"

# jobGit: just Git-URL-repository-------------Build
# automatic before all, make PULL.............save in:/var/lib/jenkins/workspace/git1
cd /var/lib/jenkins/workspace/git1
cd /var/lib/jenkins/workspace----------------all jobs Workspace

# install Maven
sudo apt install maven
mvn --version
mvn -v

# install Maven, approach2:    maven website/find file.tar.gz, R click/copy address/ 
wget <address>
cd /opt/maven/bin
./mvn -v

# Environment Variable: 
find / -name openjdk*--------------------/usr/bin/jvm
vi /root/.bash_profile
M2=/opt/maven
M2_HOME=/opt/maven/bin
JAVA_HOME=/usr/bin/jvm/java-21-openjdk-amd64
Path:home/bin:     $JAVA_HOME:$M2_HOME:$M2



#file & dir
sudo apt install nano -y
#create dir
mkdir dir
#create file
vi file1------touch file1------nano file1-----tee file1
#full in file
echo '<h1>Hello world</h1>' | tee /var/www/html/file1.html/file1
#append to file
echo 'felann...' >> file1.html
#find filename
find /var/www/html/ 'index*'
#find text in file
grep  'boo*' /var/www/html/index.html
#replace in file
sed 's/old/new/ig' file1
#user group other permition
chmod u+x,g-w,o=r file1
#add user and set pass
sudo adduser user2-----------difinitly with sudo
passwd user2----------
#change pass
passwd user2
#login with user2
su - user2
sudo su -   ---------just for user with group sudo can be executed
#add user to group sudo
sudo usermod -aG sudo user3







#Update your system
sudo apt update
#sudo apt upgrade -y

#Install Java (required)
#Jenkins needs Java. OpenJDK 17 is the current safe default.
sudo apt update
sudo apt install fontconfig openjdk-21-jre


#Verify:
java -version

#Add the Jenkins repository & key
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
  
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#SSL, 443 certificate,https certification
#Update again:
sudo apt update

#Install Jenkins
sudo apt install jenkins -y

#Start & enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

#Check status:
sudo systemctl status jenkins
#You should see active (running) ✅

#Allow Jenkins through the firewall (if using UFW)
sudo ufw allow 8080
sudo ufw reload

#Access Jenkins
Open your browser:
http://<your-server-ip>:8080
http://192.168.0.161:8080/
http://192.168.0.183:8080/

#or if local:
http://localhost:8080

#Unlock Jenkins
#Get the initial admin password:
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
#Paste it into the web UI → install recommended plugins → create admin user 🎉

user: user1
pass:2237523
http://192.168.0.161:8080/


# job1: shell--------just type "hello"
# description
# Build/ shell script/ echo "hello"


#GIT
#install
sudo apt install git -y
git --version

# install GIT Plagin on Jenkins







#change Jenkins Language
#install locale Plagin:    manage/avalable Plagin/locale---install