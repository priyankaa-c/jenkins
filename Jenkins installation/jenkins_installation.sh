#!/bin/bash

echo "Updating system"
sudo apt-get update

echo "Installing deefault jre..."
sudo apt-get install default-jre
echo "Default jre installed."

echo "Installing deefault jre..."
sudo apt-get install default-jdk
echo "Default jre installed."

echo "checking if java installed..."
java --version

echo "Downloading the security key for the Jenkins repository & adding it to the keychain"
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "Adding Jenkins sources to apt"
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "Updating system"
sudo apt-get update

echo "Installing Jenkins..."
sudo apt-get install jenkins

echo "Launching jenking portal..."
firefox http://localhost:8080&
