package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private JdbcView jdbcconat = new JdbcView();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	      PrintWriter out = response.getWriter();
	      String title = "Database Result";
	      
	      String docType =
	         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
	      
	      out.println(docType +
	         "<html>\n" +
	         "<head><title>" + title + "</title></head>\n" +
	         "<body bgcolor = \"#f0f0f0\">\n" +
	         "<h1 align = \"center\">" + title + "</h1>\n");
	      
	      String rollnumber1 = request.getParameter("rollno1");
	      String rollnumber2 = request.getParameter("rollno2");
	      String rollnumber = "";
	      if(rollnumber1.charAt(15) == rollnumber2.charAt(15))
	      {
	    	  rollnumber = rollnumber1.substring(0, 15)+"_";
	      }
	      else
	      {
	    	  rollnumber = rollnumber1.substring(0, 14)+"%";
	      }
	      String semester = request.getParameter("semester");
	      String cgpa1 = request.getParameter("cgpa1");
	      String cgpa2 = request.getParameter("cgpa2");
	      String sort = request.getParameter("sort");
	      
	      ViewQuery query = new ViewQuery();
	      
	      query.setRollnumber(rollnumber);
	      query.setSemester(Integer.parseInt(semester));
	      query.setCgpa1(Float.parseFloat(cgpa1));
	      query.setCgpa2(Float.parseFloat(cgpa2));
	      query.setSort(sort);
	      
	      try {
	          
	    	  ResultSet rs = jdbcconat.registerEmployee(query);
	    	  
	          while(rs.next()){
	             //Retrieve by column name
	             String rollno  = rs.getString("rollnumber");
	             int sem = rs.getInt("semester");
	             String cc1 = rs.getString("cc1");
	             float m1 = rs.getFloat("m1");
	             float at1 = rs.getFloat("m2");
	             String cc2 = rs.getString("cc2");
	             float m2 = rs.getFloat("m2");
	             float at2 = rs.getFloat("m2");
	             String cc3 = rs.getString("cc3");
	             float m3 = rs.getFloat("m3");
	             float at3 = rs.getFloat("m3");
	             String cc4 = rs.getString("cc4");
	             float m4 = rs.getFloat("m4");
	             float at4 = rs.getFloat("m4");
	             String cc5 = rs.getString("cc5");
	             float m5 = rs.getFloat("m5");
	             float at5 = rs.getFloat("m5");
	             String cc6 = rs.getString("cc6");
	             float m6 = rs.getFloat("m6");
	             float at6 = rs.getFloat("m6");
	             float cgpa = rs.getFloat("cgpa");

	             //Display values
	             out.println("rollno: " + rollno + "<br>");
	             out.println(", sem: " + sem + "<br>");
	             out.println(", cc1: " + cc1 + "<br>");
	             out.println(", at1: " + at1 + "<br>");
	             out.println(", m1: " + m1 + "<br>");
	             out.println(", cc2: " + cc2 + "<br>");
	             out.println(", at2: " + at2 + "<br>");
	             out.println(", m2: " + m2 + "<br>");
	             out.println(", cc3: " + cc3 + "<br>");
	             out.println(", at3: " + at3 + "<br>");
	             out.println(", m3: " + m3 + "<br>");
	             out.println(", cc4: " + cc4 + "<br>");
	             out.println(", at4: " + at4 + "<br>");
	             out.println(", m4: " + m4 + "<br>");
	             out.println(", cc5: " + cc5 + "<br>");
	             out.println(", at5: " + at5 + "<br>");
	             out.println(", m5: " + m5 + "<br>");
	             out.println(", cc6: " + cc6 + "<br>");
	             out.println(", at6: " + at6 + "<br>");
	             out.println(", m6: " + m6 + "<br>");
	             out.println(", cgpa: " + cgpa + "<br>");
	          }
	          out.println("</body></html>");
	          rs.close();
	       } catch(SQLException se) {
	          se.printStackTrace();
	       } catch (ClassNotFoundException e) {
			e.printStackTrace();
		}    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.sendRedirect("/Result");
	}
}
