<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

echo "${deployed.file.path}"
cd ${deployed.container.client.clientHome}/scripts
java -Dserver.parser.inqmy=true -Dproxy=DC -classpath "../lib/*" com.sap.engine.deployment.DMClient ${deployed.container.username}:${deployed.container.password}@${deployed.container.hostname}:${deployed.container.port}  ${deployed.file.path}

