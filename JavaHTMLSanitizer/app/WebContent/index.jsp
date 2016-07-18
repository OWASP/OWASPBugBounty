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
			"blockquote", "tt", "strong", "br", "ul", "ol", "li") and only certain attributes.<br/>
			We have also enabled "allowStyling" so you can test against our new CSS sanitization.<br/>
            Good luck!<br/><br/>
			<textarea rows="10" cols="80" name="usercontent"></textarea><br/>
			<input type="submit" value="submit">	
			<hr>
			<h1>Policy in use</h1>
	  org.owasp.html.PolicyFactory sanitizer = new HtmlPolicyBuilder()<br/>
      .allowStandardUrlProtocols()<br/>
      // Allow title=&quot;...&quot; on any element.<br/>
      .allowAttributes(&quot;title&quot;).globally()<br/>
      // Allow href=&quot;...&quot; on &lt;a&gt; elements.<br/>
      .allowAttributes(&quot;href&quot;).onElements(&quot;a&quot;)<br/>
      // Defeat link spammers.<br/>
      .requireRelNofollowOnLinks()<br/>
      // Allow lang= with an alphabetic value on any element.<br/>
      .allowAttributes(&quot;lang&quot;).matching(Pattern.compile(&quot;[a-zA-Z]{2,20}&quot;))<br/>
          .globally()<br/>
      // The align attribute on &lt;p&gt; elements can have any value below.<br/>
      .allowAttributes(&quot;align&quot;)<br/>
          .matching(true, &quot;center&quot;, &quot;left&quot;, &quot;right&quot;, &quot;justify&quot;, &quot;char&quot;)<br/>
          .onElements(&quot;p&quot;)<br/>
      // These elements are allowed.<br/>
      .allowElements(<br/>
          &quot;a&quot;, &quot;p&quot;, &quot;div&quot;, &quot;i&quot;, &quot;b&quot;, &quot;em&quot;, &quot;blockquote&quot;, &quot;tt&quot;, &quot;strong&quot;,<br/>
          &quot;br&quot;, &quot;ul&quot;, &quot;ol&quot;, &quot;li&quot;)<br/>
      // Custom slashdot tags.<br/>
      // These could be rewritten in the sanitizer using an ElementPolicy.<br/>
      .allowElements(&quot;quote&quot;, &quot;ecode&quot;)<br/>
      // Allows for tests against new CSS sanitization<br/>
      .allowStyling()<br/>
      .toFactory();	<br/>
		</form>	
	</body>	
</html>