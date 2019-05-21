import com.mysql.cj.jdbc.MysqlDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /** get post information **/
        String user = request.getParameter("uname");
        String pass = request.getParameter("pass");

        /** set variables for password and username comparisons **/
        String foundUser = null;
        String foundPass = null;

        /** database connection information **/
        MysqlDataSource ds = new MysqlDataSource();
        ds.setServerName("localhost");
        ds.setPortNumber(3306);
        ds.setDatabaseName("mydb");
        ds.setUser("root");
        ds.setPassword("");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet result = null;

        try{
            conn = ds.getConnection();

            /** prepare and execute query using prepared statements **/
            stmt = conn.prepareStatement("SELECT `user_name`, `password` FROM `administrator` WHERE `user_name` = ? AND `password` = ?");
            stmt.setString(1,user);
            stmt.setString(2,pass);
            result = stmt.executeQuery();

            /** check if row was found **/
            if(result.next()) {
                foundUser = result.getString("user_name");
                foundPass = result.getString("password");
                System.out.println("username: " + foundUser + "       password: " + foundPass);
            }
            else{/** console error if incorrect user/pass **/
                System.out.println("Incorrect username or password");
            }
        }catch(SQLException exc){
            /** print the stack trace of the error if present **/
            exc.printStackTrace();
        }
        finally{
            try{
                if(result != null)
                    result.close();
                if(stmt != null)
                    stmt.close();
                if(conn != null)
                    conn.close();
            }catch(Exception exc){
                exc.printStackTrace();
            }
        }
        /** redirect conditionals **/
        if(user.equals(foundUser) && pass.equals(foundPass))
            response.sendRedirect("home.jsp");
        else
            response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
