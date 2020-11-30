package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Jdbcconupat {

    public int registerEmployee(Attendance employee) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "Update at_details set cc1 = ?, at1 = ?, cc2 = ?, at2 =?, cc3 = ?, at3=?, cc4=?,at4=?,cc5=?,at5=?,cc6=?,at6=? where"
        		+ " rollnumber=? and semester=?";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/Attendance?useSSL=false", "root", "Raja@1999");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(13, employee.getRollnumber());
            preparedStatement.setInt(14, employee.getSemester());
            preparedStatement.setString(1, employee.getCc1());
            preparedStatement.setFloat(2, employee.getAt1());
            preparedStatement.setString(3, employee.getCc2());
            preparedStatement.setFloat(4, employee.getAt2());
            preparedStatement.setString(5, employee.getCc3());
            preparedStatement.setFloat(6, employee.getAt3());
            preparedStatement.setString(7, employee.getCc4());
            preparedStatement.setFloat(8, employee.getAt4());
            preparedStatement.setString(9, employee.getCc5());
            preparedStatement.setFloat(10, employee.getAt5());
            preparedStatement.setString(11, employee.getCc6());
            preparedStatement.setFloat(12, employee.getAt6());
                        
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

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
