package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register3
 */
@WebServlet("/Register3")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		if(password == password2)
		{
			try {
				query(username, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("/admin/login.jsp");
		}
		else
		{
			response.sendRedirect("/admin/register.jsp");
		}
	}

	private void query(String username, String password) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO Users" +
	            "  (username, password) VALUES " +
	            " (?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	                .getConnection("jdbc:mysql://localhost:3306/Attendance?useSSL=false", "root", "Raja@1999");

	                // Step 2:Create a statement using connection object
	                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	                preparedStatement.setString(1, username);
	                preparedStatement.setString(2, password);
	                            
	                System.out.println(preparedStatement);
	                result = preparedStatement.executeUpdate();

	            } catch (SQLException e) {
	                // process sql exception
	                printSQLException(e);
	            }		
		
	}
	
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
