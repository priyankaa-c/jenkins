1. Install java (open JDK and JRE)
2. Add jenkins apt-get Repository
3. Install Jenkins

### Install java (open JDK and JRE)

```
sudo apt-get install default-jre
```

```
sudo apt-get install default-jdk
```

```
java -version
```

## Add jenkins apt-get Repository
### Download the security key for the Jenkins repository & add it to the keychain

```
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
```

### Add the Jenkins sources to apt

```
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
```

### Update the list of packages
```
sudo apt-get update
```

# Install Jenkins (will also install its dependencies, eg OpenJDK)
sudo apt-get install jenkins

### On Firefox Web Browser
localhost:8080 (jenkins port 8080)
