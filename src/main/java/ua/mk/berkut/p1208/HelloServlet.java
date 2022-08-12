package ua.mk.berkut.p1208;

import ua.mk.berkut.p1208.beans.UserBean;
import ua.mk.berkut.p1208.data.User;

import java.io.*;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = {"/hello-servlet"})
public class HelloServlet extends HttpServlet {
    private String message;

    private List<User> userList;

    public void init() {
        message = "Hello World!";
        userList = List.of(
                new User(1, "Vasya", 21),
                new User(2, "Igor", 23),
                new User(3, "Masha", 25),
                new User(4, "Petya", 20),
                new User(5, "Katya", 19)
        );
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        UserBean ub = new UserBean();
        ub.setUsername(username);
        ub.setUsers(userList);
        request.setAttribute("userBean", ub);
        request.getRequestDispatcher("/users.jsp").forward(request, response);
    }

    public void destroy() {
    }
}