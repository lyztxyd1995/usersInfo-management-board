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

@WebServlet("/updateUsers")
public class UsersUpdateServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        this.doPost(httpServletRequest, httpServletResponse);
    }

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String id = httpServletRequest.getParameter("id");
        String username = httpServletRequest.getParameter("username");
        String userpass = httpServletRequest.getParameter("userpass");
        String nickname = httpServletRequest.getParameter("nickname");
        String age = httpServletRequest.getParameter("age");
        String gender = httpServletRequest.getParameter("gender");
        String email = httpServletRequest.getParameter("email");
        String phone = httpServletRequest.getParameter("phone");
        String remark = httpServletRequest.getParameter("remark");

        Users user = new Users();
        user.setId(Integer.parseInt(id));
        user.setUsername(username);
        user.setUserpass(userpass);
        user.setNickname(nickname);
        user.setAge(Integer.parseInt(age));
        user.setGender(gender);
        user.setEmail(email);
        user.setPhone(phone);
        user.setRemark(remark);
        user.setUpdateTime(new Date());

        userDao.updateUsers(user);
        httpServletResponse.sendRedirect("/detail?id=" + user.getId());
    }
}
