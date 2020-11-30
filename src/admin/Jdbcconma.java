package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import admin.Marks;

public class Jdbcconma {

    public int registerEmployee(Marks employee) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO marks" +
            "  (rollnumber, semester, cc1, m1, cc2, m2,cc3, m3,cc4, m4,cc5, m5,cc6, m6,cgpa) VALUES " +
            " (?, ?, ?, ?, ?,?,?,?, ?, ?, ?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/Attendance?useSSL=false", "root", "Raja@1999");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, employee.getRollnumber());
            preparedStatement.setInt(2, employee.getSemester());
            preparedStatement.setString(3, employee.getCc1());
            preparedStatement.setFloat(4, employee.getM1());
            preparedStatement.setString(5, employee.getCc2());
            preparedStatement.setFloat(6, employee.getM2());
            preparedStatement.setString(7, employee.getCc3());
            preparedStatement.setFloat(8, employee.getM3());
            preparedStatement.setString(9, employee.getCc4());
            preparedStatement.setFloat(10, employee.getM4());
            preparedStatement.setString(11, employee.getCc5());
            preparedStatement.setFloat(12, employee.getM5());
            preparedStatement.setString(13, employee.getCc6());
            preparedStatement.setFloat(14, employee.getM6());
            preparedStatement.setFloat(15, employee.getCgpa());
                        
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
