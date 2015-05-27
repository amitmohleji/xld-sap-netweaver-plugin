# Preface #

This document describes the functionality provided by the XLD SAP Netweaver plugin.

See the **XL Deploy Reference Manual** for background information on XL Deploy and deployment concepts.

# Overview #

This XLD SAP Netweaver plugin is capable of doing WAR deployment to SAP Netweaver. It connects to a Deployment Client tool that comes with SAP Netweaver and can be used to deploy EAR packages with java

# Requirements #

* **Requirements**
	* **XL Deploy** 4.5.0+
	* **Netweaver Deployment Client on a host** 
	* **JDK/JRE/6+ on host** 
	

# Installation #

Place the plugin JAR file into your `SERVER_HOME/plugins` directory.  

# Usage #

# Tips #
The code snippet in the deploy.sh.ftl works with 4.5.3 and above versions . If you wish to use it for 4.5.2 and below, replace the code in that file with this code

```
cp ${deployed.file.name} ${deployed.container.client.clientHome}/scripts/
cd ${deployed.container.client.clientHome}/scripts
java -Dserver.parser.inqmy=true -Dproxy=DC -classpath "../lib/*" com.sap.engine.deployment.DMClient ${deployed.container.username}:${deployed.container.password}@${deployed.container.hostname}:${deployed.container.port}  ${deployed.file.name}
rm ${deployed.file.name}
```