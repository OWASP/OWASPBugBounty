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
    String color= request.getParameter(sanitizer.sanitize("color"));    
    PrintWriter out = response.getWriter();
    out.println (
      "<!DOCTYPE html>"+
      "<html> \n" +
        "<head> \n" +
          "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"> \n" +
          "<title> My first jsp  </title> \n" +
        "</head> \n" +
        "<body> \n" +
          "<font size=\"12px\" color=\"" + color + "\">" +
            "Hello World" +
          "</font> \n" +
        "</body> \n" +
      "</html>"
    );  
  }  
}
