package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcView {
	public ResultSet registerEmployee(ViewQuery employee) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "select * from at_details, marks where rollnumber like ? "
        		+ "and semester = ? and cgpa>? and cpga<? order by ? desc";
        ResultSet result = null;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/Attendance?useSSL=false", "root", "Raja@1999");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, employee.getRollnumber());
            preparedStatement.setInt(2, employee.getSemester());
            preparedStatement.setFloat(3, employee.getCgpa1());
            preparedStatement.setFloat(4, employee.getCgpa2());
            preparedStatement.setString(3, employee.getSort());
                        
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeQuery();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
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
