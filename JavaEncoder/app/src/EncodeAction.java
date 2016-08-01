import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.owasp.encoder.*;

public class EncodeAction extends HttpServlet { 
  private static final long serialVersionUID = 1L;

 /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    response.getWriter().append("GET out of here!!!");
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
protected void doPost(HttpServletRequest request, 
      HttpServletResponse response) throws ServletException, IOException 
  {
	  //titles
	  String title = request.getParameter("title_input");
	  String h1 = request.getParameter("h1_input");
	  
	  //form
	  String textarea = request.getParameter("textarea_input");
	  String attribute = request.getParameter("attribute_input");
	  
	  //css
	  String csswidth = request.getParameter("csswidth_input");
	  String cssbackground = request.getParameter("cssbackground_input");

	  PrintWriter out = response.getWriter();
	  out.println (
		  "<!DOCTYPE html>"+
		  "<html><head>\n" + 
		  "<title>" + Encode.forHtml(title) + "</title>\n" +
		  "</head>\n" +
		  "<body><h2>Results (Go back to try again!)</h2><hr><br/>\n" +
		  "<h1>" + Encode.forHtml(h1) + "</h1>\n" +
		  "<form>" + 
		  "<textarea>" + Encode.forHtmlContent(textarea) + "</textarea><br/>\n" +
		  "<input type=\"text\" name=\"address\" value=\"" + Encode.forHtmlAttribute(attribute) + "\" /><br/>\n" +
		  "</form>\n" + 	  
		  "<div style=\"width: " + Encode.forCssString(csswidth) + "; height: 200px; border: 1px solid black;\">Style1</div>\n" +
		  "<div style=\"background-image: url(" + Encode.forCssUrl(cssbackground) + "); height: 200px; width: 400px; border: 1px solid black;\">Style2</div>\n" + 
		  "</body>\n" +
		  "</html>"
	 );  
  }  
}