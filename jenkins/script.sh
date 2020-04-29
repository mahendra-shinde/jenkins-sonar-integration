## install all required packages
apt update -y 
apt install -y  unzip wget
## Create temp directory
mkdir  /app
## download the maven and sonar-scanner
wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -O /maven.zip
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip -O /sonar-cli.zip
cd /app

## extract maven and sonar-scanner
unzip ../maven.zip 
unzip ../sonar-cli.zip

## rename to smaller directory name
mv /app/apache-maven-3.6.3 /app/maven
mv /app/sonar-scanner-4.2.0.1873-linux /app/sonar-cli
