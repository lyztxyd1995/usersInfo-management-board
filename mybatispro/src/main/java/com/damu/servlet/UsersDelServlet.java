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

@WebServlet("/delUser")
public class UsersDelServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        this.doPost(httpServletRequest, httpServletResponse);
    }

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String id = httpServletRequest.getParameter("id");
        String type = httpServletRequest.getParameter("type");
        if("lock".equals(type)) {
            Users user = new Users();
            user.setId(Integer.parseInt(id));
            user.setUserStatus(1);
            userDao.updateUsers(user);
        } else if("delete".equals(type)){
            userDao.delUsers(Integer.parseInt(id));
        } else if("unlock".equals(type)){
            Users user = new Users();
            user.setId(Integer.parseInt(id));
            user.setUserStatus(0);
            userDao.updateUsers(user);
        }
        httpServletResponse.sendRedirect("/index");
    }
}
