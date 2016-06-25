Apache-Shiro-CRSFGuard
============================

This is a version of Apache Shiro web application using OWASP CRSFGuard to protect forms and Post request with a unique token

Tutorial project:
http://shiro.apache.org/webapp-tutorial.html
https://github.com/lhazlewood/apache-shiro-tutorial-webapp
![Apache-Shiro-CSRFGuard](https://github.com/owaspjocur/Apache-Shiro-CSRFGuard/blob/master/Screen Shot 2016-06-21 at 7.37.12 AM.png)

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

 ```
 stormpathClient.apiKeyFileLocation = /pathtoyourkey/stormpath/apiKey.properties
 stormpathRealm.applicationRestUrl = https://api.stormpath.com/v1/applications/yourApplicationkeyHere
  ```

##Set a token
To add a protection token to a [post] form you need to add the following hidden field

 ```
 <form name="test1" action="protect.html">
     <input type="text" name="text" value="text"/>
     <input type="submit" name="submit" value="submit"/>
     <input type="hidden" name="<csrf:tokenname/>" value="<csrf:tokenvalue uri="protect.html"/>"/>
 </form>
  ```
  
##Example in code
  This web app is using CRSFGuard in the Login.jsp page
  In order to do enable the token, you must set the following tag:
  
 ```
 <%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %>
 ```
  
  In the form the following code (extract from login.jsp)

 ```
   <form name="loginform" action="" method="POST" accept-charset="UTF-8" role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Username or Email" name="username" type="text">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">                                  
                                </div>                             
                                    <input type="hidden" name="<csrf:tokenname/>" value="<csrf:tokenvalue uri="account/index.jsp"/>">
                                <div class="checkbox">
                                    <label>
                                        <input name="rememberMe" type="checkbox" value="true"> Remember Me
                                    </label>
                                </div>
                                <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                               
                            </fieldset>
                        </form>
 ```


