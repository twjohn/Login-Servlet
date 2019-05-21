import com.mysql.cj.jdbc.MysqlDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.io.*;

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

        try {
            conn = ds.getConnection();

            /** prepare and execute query using prepared statements **/
            stmt = conn.prepareStatement("SELECT `username`, `password` FROM `userLogin` WHERE `username` = ? AND `password` = ?");
            stmt.setString(1, user);
            stmt.setString(2, pass);
            result = stmt.executeQuery();

            /** check if row was found **/
            if (result.next()) {
                foundUser = result.getString("username");
                foundPass = result.getString("password");
                System.out.println("        username: " + foundUser + "         password: " + foundPass);
                if (user.equals(foundUser) && pass.equals(foundPass)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", foundUser);
                    String uname = (String)session.getAttribute("username");

                    System.out.println(uname);
                    response.sendRedirect("home.jsp");
                }
            } else {/** console error if incorrect user/pass **/
                response.setContentType("text/html");
                PrintWriter out=response.getWriter();
                out.print("Sorry, wrong username and/or password!");
                response.sendRedirect("index.jsp");
            }
        } catch (SQLException exc) {
            /** print the stack trace of the error if present **/
            exc.printStackTrace();
        } finally {
            try {
                if (result != null)
                    result.close();
                if (stmt != null)
                    stmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception exc) {
                exc.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
