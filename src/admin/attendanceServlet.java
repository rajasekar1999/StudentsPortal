package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class attendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Jdbcconat jdbcconat = new Jdbcconat();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public attendanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollnumber = request.getParameter("rollnumber");
		String semester = request.getParameter("semester");
		String cc1 = request.getParameter("cc1");
		String at1 = request.getParameter("at1");
		String cc2 = request.getParameter("cc2");
		String at2 = request.getParameter("at2");
		String cc3 = request.getParameter("cc3");
		String at3 = request.getParameter("at3");
		String cc4 = request.getParameter("cc4");
		String at4 = request.getParameter("at4");
		String cc5 = request.getParameter("cc5");
		String at5 = request.getParameter("at5");
		String cc6 = request.getParameter("cc6");
		String at6 = request.getParameter("at6");
		
		Attendance attendance = new Attendance();
		attendance.setAt1(Float.parseFloat(at1));
		attendance.setAt2(Float.parseFloat(at2));
		attendance.setAt3(Float.parseFloat(at3));
		attendance.setAt4(Float.parseFloat(at4));
		attendance.setAt5(Float.parseFloat(at5));
		attendance.setAt6(Float.parseFloat(at6));
		attendance.setCc1(cc1);
		attendance.setCc2(cc2);
		attendance.setCc3(cc3);
		attendance.setCc4(cc4);
		attendance.setCc5(cc5);
		attendance.setCc6(cc6);
		attendance.setRollnumber(rollnumber);
		attendance.setSemester(Integer.parseInt(semester));
		
		try {
			jdbcconat.registerEmployee(attendance);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("/admin/viewat_details.jsp");
	}

}
