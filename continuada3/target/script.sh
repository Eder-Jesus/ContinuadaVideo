#!/bin/bash
  
which java | grep /bin/java

if [ $? = 0 ]
   then
   echo "Maquina ja possui o Java"
   java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies.jar
else
   sudo apt install zip 
   curl -s "https://get.sdkman.io/" | bash
   source "$HOME/.sdkman/bin/sdkman-init.sh"
   sdk install java 15.0.1.j9-adpt
   echo "Execuntando a Aplicação"
   java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies.jar
fi  

