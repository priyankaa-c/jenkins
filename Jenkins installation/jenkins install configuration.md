create ec2 instance(Jenkins-lab) with amazon linux 2 AMI with t3 medium paid instance

then ssh to it 

run command on ssh or putty to install jenkins on ec2 instance

https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/
this link for to ssh , download install jenkins , configure jenkins

commands are :

[ec2-user ~]$ sudo yum update –y

[ec2-user ~]$ sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

[ec2-user ~]$ sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

[ec2-user ~]$ sudo yum upgrade

[ec2-user ~]$ sudo yum install java-17-amazon-corretto -y

[ec2-user ~]$ sudo yum install jenkins -y

[ec2-user ~]$ sudo systemctl start jenkins

[ec2-user ~]$ sudo systemctl enable jenkins

[ec2-user ~]$ sudo systemctl status jenkins

[ec2-user ~]$ sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo

[ec2-user ~]$ sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo

[ec2-user ~]$ sudo yum install apache-maven

[ec2-user ~]$ mvn --version

[ec2-user ~]$ sudo alternatives --config java
Enter to keep the current selection[+], or type selection number: 1


then go to google 
paste public ip address of ec2 instance and :8080 port of jenkin 

it show the unlock jenkin page

copy the path from unlock jenkin

[ec2-user ~]$ sudo cat /var/lib/jenkins/secrets/initialAdminPassword
a0b8696ab1c049bca3c2b8f836a7ae12

copy password paste it in administrator password column of unlock jenkin page then contiue

click on install suggested plugins
after install all plugins then Create First Admin User
 as jenkins jenkins all the name
then save and contiue

Instance Configuration
Jenkins URL:	
http://15.206.122.155:8080/

then save and finish

Jenkins is ready!
Your Jenkins setup is complete.

then click on start using jenkins 


welcome page of jenkins is shows

click on new items
enter the item name like hello-job
select free style project
click ok
click on build step
in add build step click on execute shell

type in shell
echo "hello Bhagya"
then save apply

click on build now 
then it will build your job

click on below the builded job like #1
then console output 
it will show output of job


for maven
go to dashboard
go to manage jenkins
go to plugins
click on available plugins
 search for maven
dont get enter 
on select plugins
Maven IntegrationVersion
Pipeline Maven IntegrationVersion
Maven Release Plug-inVersion
Maven Info
Maven InvokerVersion
click on install
wait for all success 
then restart jenkins
login jenkins

lets configure the maven
go to manage jenkins
go to tools 
search for maven
go to maven installation

add maven 
give the name maven3.9
select install from apache version 3.9.4

one more 
add maven 
give the name maven3.5
select install from apache version 3.5.2

check on putty mvn --version that select version
apply save 
its done maven integreation 

now build job
select new item
name of item like maven_job
select maven project
click on ok

go to source code management
click on git
repository url is https://github.com/jenkins-docs/simple-java-maven-app


install git on jenkins terminal
sudo yum install git -y

lets go to build
type in goals and option 
clean install

apply save now build now
then go to console output


