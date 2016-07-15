#OWASP Java HTML Sanitizer Bug Bounty

This simple web application is hosting a single web form that is protected from XSS by the <a href="https://www.owasp.org/index.php/OWASP_Java_HTML_Sanitizer_Project">OWASP Java HTML Sanitizer</a>. This form will accept HTML input and directly render that HTML input in the response - after that HTML has been sanitized!

This library protects against XSS attacks using a configurable policy. This test uses the default "Slashdot policy" (defined here https://github.com/OWASP/java-html-sanitizer/blob/master/src/main/java/org/owasp/html/examples/SlashdotPolicyExample.java) allows the following tags ("a", "p", "div", "i", "b", "em", "blockquote", "tt", "strong"n "br", "ul", "ol", "li") and only certain attributes. This policy also allows for the custom slashdot tags, "quote" and "ecode".


###Scope
Researchers please refer to BugCrowd bounty page to read about the scope of this bounty:
https://bugcrowd.com/owaspjavasanitizer?preview=00a750fda36e488832bff79e4220c2c6


