#!/bin/bash

which java | grep /bin/java

if [[ $? = 0 ]]
   then
   echo "Maquina ja possui o Java"
   java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies
else
   sudo apt install curl
   curl -s "https://get.sdkman.io/" | bash
   source "$HOME/.sdkman/bin/sdkman-init.sh"
   sdk install java 8.0.272.j9-adpt
   echo "Execuntando a Aplicação"
   java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies
fi