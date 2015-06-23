Om met verschillende java versies een truststore uit te bereiden:
Door deze aangepaste versie, kan een truststore meegegeven worden.

"\Program Files\Java\jdk1.7.0_04\bin\java.exe" InstallCert distribution-xml.booking.com changeit C:\_work\workspacesKepler\anwb\poi-mongoimport-satellite\src\main\conf\cacerts.jks

"\Program Files\Java\jdk1.7.0_04\bin\java.exe" InstallCert distribution-xml.booking.com changeit C:\_work\workspacesKepler\anwb\_localConfigs\alarmservice\esbtst.jks


Geef de keystore mee met system parameters (Tomcat) 
JAVA_OPTS="-server -Xms1024m -Xmx1024m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:PermSize=256m -XX:MaxPermSize=256m -XX:+DisableExplicitGC -Djava.awt.headless=true -Djavax.net.ssl.trustStore=/apps/tomcat-server/poi-mongoimport-satellite/conf/props/cacerts.jks -Djavax.net.ssl.trustStorePassword=changeit -Dfile.encoding=UTF-8 -Dhttp.proxyHost=webproxy -Dhttp.proxyPort=3128 -Dhttps.proxyHost=webproxy -Dhttps.proxyPort=3128"
JAVA_HOME="/usr/java/java7"
export JAVA_HOME JAVA_OPTS CATALINA_HOME CATALINA_BASE
export CATALINA_OPTS="-Dlog4j.configuration=file:${CATALINA_BASE}/conf/props/log4j.xml"
