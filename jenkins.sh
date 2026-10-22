#updating the package list
sudo apt update

#installing  java-tool-kit and fontconfig
sudo apt install fontconfig openjdk-21-jre -y

#adding the public key in the given file
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

#updating the  package list for jenkins
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#updating the package list
sudo apt update

#installing the jenkins
sudo apt install jenkins -y

#checking the jenkins is active or no
if systemctl is-active --quiet jenkins; then
    echo "jenkins is active"
else
    echo "jenkins is NOT active"
fi
