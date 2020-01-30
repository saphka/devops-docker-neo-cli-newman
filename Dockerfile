FROM maven:3.6-jdk-8

RUN   apt-get update 
RUN   apt-get install bash
RUN   mvn com.sap.cloud:neo-java-web-maven-plugin:3.96.20:install-sdk -DsdkInstallPath=sdk
RUN   mvn com.sap.cloud:neo-java-web-maven-plugin:3.96.20:install-local -DsdkInstallPath=sdk
RUN   ln -s /sdk/tools/neo.sh /usr/bin/neo.sh
RUN   rm -rf /var/lib/apt/lists/*
RUN   mkdir -p /sdk/server/config_master/com.sap.security.um.provider.neo.local
RUN   chmod -R 777 sdk
RUN   curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs
RUN   npm install --global newman@4.5.7
