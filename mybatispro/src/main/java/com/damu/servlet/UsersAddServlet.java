package com.damu.servlet;

import com.damu.dao.UserDao;
import com.damu.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addUsers")
public class UsersAddServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        this.doPost(httpServletRequest, httpServletResponse);
    }

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String username = httpServletRequest.getParameter("username");
        String userpass = httpServletRequest.getParameter("userpass");
        String nickname = httpServletRequest.getParameter("nickname");
        String age = httpServletRequest.getParameter("age");
        String gender = httpServletRequest.getParameter("gender");
        String email = httpServletRequest.getParameter("email");
        String phone = httpServletRequest.getParameter("phone");

        Users user = new Users(username,userpass,nickname,Integer.parseInt(age), gender, email,phone, new Date(),new
        Date(), new Date(), 0);
        user = userDao.addUser(user);
        httpServletResponse.sendRedirect("/detail?id=" + user.getId());
    }
}
