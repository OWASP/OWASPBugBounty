import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

import org.owasp.html.HtmlPolicyBuilder;
import org.owasp.html.Sanitizers;

public class HelloWorld extends HttpServlet { 
  protected void doGet(HttpServletRequest request, 
      HttpServletResponse response) throws ServletException, IOException 
  {
    // reading the user input
	  
	org.owasp.html.PolicyFactory sanitizer = Sanitizers.FORMATTING.and(Sanitizers.BLOCKS);
    String usercontent = request.getParameter("usercontent");
    if (usercontent == null) usercontent = ""; //just avoiding nulls

    PrintWriter out = response.getWriter();
    out.println (
      "<!DOCTYPE html>"+
      "<html> \n" +
        "<head> \n" +
          "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"> \n" +
          "<title>Can you XSS the OWASP HTML Sanitizer?</title> \n" +
        "</head> \n" +
        "<body>" + sanitizer.sanitize(usercontent) + "</body> \n" +
      "</html>"
    );  
  }  
}
