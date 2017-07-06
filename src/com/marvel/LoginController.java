package com.marvel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menci on 2017/7/6.
 */
public class LoginController extends HttpServlet {

    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println("username=" + username);
        System.out.println("password=" + password);

        if (password != null && password.length() >= 3) {
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.forward(req, resp);
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
            req.setAttribute("err", "密码不能少于3个字符哦");
            rd.forward(req, resp);
        }
    }
}
