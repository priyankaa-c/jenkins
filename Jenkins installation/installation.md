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
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
```

### Add the Jenkins sources to apt

```
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
```

### Update the list of packages
```
sudo apt-get update
```

# Install Jenkins (will also install its dependencies, eg OpenJDK)
sudo apt-get install jenkins

### On Firefox Web Browser
localhost:8080 (jenkins port 8080)
