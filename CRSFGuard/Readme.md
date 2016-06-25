CRSFGuard Bounty
============================

This is a version of Apache Shiro web application using OWASP CRSFGuard to protect forms and Post request with a unique token

#Bounty Researchers read here:
Bug Hunters please visit BugCrowd page for the scope:
*OWASPCRSFGuard:https://bugcrowd.com/owaspcrsfguard?preview=db24e118ea34e13a78677ea8374f790c05cbd08ef4f0ddcf


##About the project

This project can be run from Eclipse Mars using Jetty
Eclipse Java EE IDE for Web Developers.
Version: Mars Release (4.5.0)
Build id: 20150621-1200

Using Eclipse Jetty 3.9.0
Available through the marketplace

##Instructions
The web app is using Stormpath as OAUTH. In order to run this properly you must obtain a apiKey as instructed in the Apache Shiro Documentation to setup Stormpath:
http://shiro.apache.org/webapp-tutorial.html#step2
Make sure you set get an apiKey.properties file with your key 
Make sure you edit the information in the Shiro.ini file:
