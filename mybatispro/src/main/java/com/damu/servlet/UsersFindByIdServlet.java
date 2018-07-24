package com.damu.servlet;

import com.damu.dao.UserDao;
import com.damu.entity.Users;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/detail")
public class UsersFindByIdServlet extends HttpServlet {
    private Logger log= Logger.getLogger(UsersFindByIdServlet.class);
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        this.doPost(httpServletRequest, httpServletResponse);
    }

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
       String id = httpServletRequest.getParameter("id");
       log.info("获取查询参数id" + id);
       Users user = userDao.findById(Integer.parseInt(id));
       log.info("查询到的参数user" + user);
       httpServletRequest.setAttribute("user", user);
       httpServletRequest.getRequestDispatcher("detail.jsp").forward(httpServletRequest, httpServletResponse);
    }
}
