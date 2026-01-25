#prepare Jenkins server
#Bridge Adapter should be selected
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
#?????
sudo systemctl status ssh-------if ssh is up & running should be  "active(running)"
sudo ss -tlnp | grep :22-----we want to see if SSH listen to port 22
nano /etc/ssh/ssh_config---------port 22 comment nabashad
systemctl ssh start
systemctl ssh restart
ssh localhost--------ettesale dakheli
#active in boot:
sudo systemctl enable ssh
#clone------------------------hame chiz az avval






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
sudo apt upgrade -y

#Install Java (required)
#Jenkins needs Java. OpenJDK 17 is the current safe default.
sudo apt install openjdk-17-jdk -y

#Verify:
java -version

#Add the Jenkins repository & key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key \
  | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ \
  | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

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

#or if local:
http://localhost:8080

#Unlock Jenkins
#Get the initial admin password:
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
#Paste it into the web UI → install recommended plugins → create admin user 🎉