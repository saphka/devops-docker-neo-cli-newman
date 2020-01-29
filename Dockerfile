FROM maven:3.6-jdk-8

RUN   apt-get update 
RUN   apt-get install bash
RUN   mvn com.sap.cloud:neo-java-web-maven-plugin:3.97.8:install-sdk -DsdkInstallPath=sdk
RUN   mvn com.sap.cloud:neo-java-web-maven-plugin:3.97.8:install-local -DsdkInstallPath=sdk
RUN   ln -s /sdk/tools/neo.sh /usr/bin/neo.sh
RUN   rm -rf /var/lib/apt/lists/*
RUN   mkdir -p /sdk/server/config_master/com.sap.security.um.provider.neo.local
RUN   echo '{"Users":[{"UID":"int-test","Password":"{SSHA}OPFlBj4ic6G5LCMyE8v5dLoeGp8bD5K3","Roles":["Administrator"],"Attributes":[{"attributeName":"firstname","attributeValue":"Integration"},{"attributeName":"lastname","attributeValue":"Test"},{"attributeName":"email","attributeValue":"int.test@masterdata.ru"}]}]}' > /sdk/server/config_master/com.sap.security.um.provider.neo.local/neousers.json
RUN   chmod -R 777 sdk
RUN   apt-get install nodejs nodejs-npm
RUN   npm install --global newman@4.5.7
