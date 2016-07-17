<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>OWASP XSS Tests</title>
	</head>	
	<body>		
		<h1>OWASP HTML Sanitizer Test</h1>
		<form action="SanitizeServlet" method="POST">			
			<b>Please enter some HTML and try to XSS the server-side sanitizer!</b><br/><br/>
			The current server-side policy allows the following tags ("a", "p", "div", "i", "b", "em",<br/>
			"blockquote", "tt", "strong", "br", "ul", "ol", "li") and only certain attributes.<br/><br/> Good luck!<br/><br/>
			<textarea rows="10" cols="80" name="usercontent"></textarea><br/>
			<input type="submit" value="submit">						
		</form>	
		<br/>
		<h1>OWASP Java Encoder Test</h1>
		<form action="EncodeServlet" method="POST">
		&lt;!DOCTYPE html&gt;<br/>
		&lt;html&gt;<br/>
		&lt;head&gt;<br/>
		&lt;title&gt;<input type="text" name="title_input" size="30" value=""/>&lt;/title&gt;<br/>
		&lt;/head&gt;<br/>
		&lt;body&gt;<br/>
		&lt;h1&gt;<input type="text" name="h1_input" size="30" value=""/>&lt;/h1&gt;<br/><br/>
		&lt;form&gt;<br/>
		&lt;textarea&gt;<br/><textarea rows="3" cols="80" name="textarea_input"></textarea><br/>&lt;/textarea&gt;<br/>
		&lt;input type=&quot;text&quot; name=&quot;address&quot; value=&quot;<input type="text" name="attribute_input" size="30" value=""/>&quot; /&gt;<br/>
		&lt;/form&gt;<br/><br/>
		&lt;div style=&quot;width:&nbsp;<input type="text" name="csswidth_input" size="30" value=""/>; height: 200px; border: 1px solid black;&quot;&gt;Style1&lt;/div&gt;<br/>
		&lt;div style=&quot;background-image: url(<input type="text" name="cssbackground_input" size="30" value=""/>); height: 200px; width: 400px; border: 1px solid black;&quot;&gt;Style2&lt;/div&gt;<br/><br/>
		&lt;/body&gt;<br/>
		&lt;/html&gt;<br/>
		<input type="submit" value="submit">
		</form>
		<h2>After submitting this form, here is the expected output:</h2>
		&quot;&lt;!DOCTYPE html&gt;&quot;+<br/>
		&quot;&lt;html&gt;&lt;head&gt;\n&quot; + <br/>
		&quot;&lt;title&gt;&quot; + Encode.forHtml(title) + &quot;&lt;/title&gt;\n&quot; +<br/>
		&quot;&lt;/head&gt;\n&quot; +<br/>
		&quot;&lt;body&gt;&lt;h2&gt;Results (Go back to try again!)&lt;/h2&gt;&lt;hr&gt;&lt;br/&gt;\n&quot; +<br/>
		&quot;&lt;h1&gt;&quot; + Encode.forHtml(h1) + &quot;&lt;/h1&gt;\n&quot; +<br/>
		&quot;&lt;form&gt;&quot; + <br/>
		&quot;&lt;textarea&gt;&quot; + Encode.forHtmlContent(textarea) + &quot;&lt;/textarea&gt;&lt;br/&gt;\n&quot; +<br/>
		&quot;&lt;input type=\&quot;text\&quot; name=\&quot;address\&quot; value=\&quot;&quot; + Encode.forHtmlAttribute(attribute) + &quot;\&quot; /&gt;&lt;br/&gt;\n&quot; +<br/>
		&quot;&lt;/form&gt;\n&quot; + 	  <br/>
		&quot;&lt;div style=\&quot;width: &quot; + Encode.forCssString(csswidth) + &quot;; height: 200px; border: 1px solid black;\&quot;&gt;Style1&lt;/div&gt;\n&quot; +<br/>
		&quot;&lt;div style=\&quot;background-image: url(&quot; + Encode.forCssUrl(cssbackground) + &quot;); height: 200px; width: 400px; border: 1px solid black;\&quot;&gt;Style2&lt;/div&gt;\n&quot; + <br/>
		&quot;&lt;/body&gt;\n&quot; +<br/>
		&quot;&lt;/html&gt;&quot;
	</body>	
</html>