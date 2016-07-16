import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.owasp.html.HtmlPolicyBuilder;

public class HelloWorld extends HttpServlet { 
  private static final long serialVersionUID = 1L;

 /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    response.getWriter().append("GET out of here!");
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, 
      HttpServletResponse response) throws ServletException, IOException 
  {
    // building a policy described in https://www.owasp.org/index.php/OWASP_Java_HTML_Sanitizer_Project#tab=Creating_a_HTML_Policy
	  org.owasp.html.PolicyFactory sanitizer = new HtmlPolicyBuilder()
          .allowStandardUrlProtocols()
          // Allow title="..." on any element.
          .allowAttributes("title").globally()
          // Allow href="..." on <a> elements.
          .allowAttributes("href").onElements("a")
          // Defeat link spammers.
          .requireRelNofollowOnLinks()
          // Allow lang= with an alphabetic value on any element.
          .allowAttributes("lang").matching(Pattern.compile("[a-zA-Z]{2,20}"))
              .globally()
          // The align attribute on <p> elements can have any value below.
          .allowAttributes("align")
              .matching(true, "center", "left", "right", "justify", "char")
              .onElements("p")
          // These elements are allowed.
          .allowElements(
              "a", "p", "div", "i", "b", "em", "blockquote", "tt", "strong",
              "br", "ul", "ol", "li")
          // Custom slashdot tags.
          // These could be rewritten in the sanitizer using an ElementPolicy.
          .allowElements("quote", "ecode")
          .toFactory();

    //accepting user content and converting nulls to empty strings
    String usercontent = request.getParameter("usercontent");
    if (usercontent == null) usercontent = "";  

    PrintWriter out = response.getWriter();
    out.println (
      "<!DOCTYPE html>"+
      "<html> \n" +
        "<head> \n" +
          "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"> \n" +
          "<title>Can you XSS the OWASP HTML Sanitizer?</title> \n" +
        "</head> \n" +
        "<body><h2>Results (Go back to try again!)</h2><hr><br/>" + sanitizer.sanitize(usercontent) + "</body> \n" +
      "</html>"
    );  
  }  
}