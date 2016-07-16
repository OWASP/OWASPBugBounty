<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>OWASP Sanitizer Test</title>
	</head>	
	<body>		
		<form action="HelloServlet" method="POST">			
			<b>Please enter some HTML and try to XSS the server-side sanitizer!</b><br/><br/>
			The current server-side policy allows the following tags ("a", "p", "div", "i", "b", "em",<br/>
			"blockquote", "tt", "strong", "br", "ul", "ol", "li") and only certain attributes.<br/><br/> Good luck!<br/><br/>
			<textarea rows="10" cols="120" name="usercontent"></textarea><br/>
			<input type="submit" value="submit">						
		</form>	
	</body>	
</html>