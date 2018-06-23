package controller;

import model.User;
import dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/users/update")
public class UserUpdateServlet extends HttpServlet {

    private UserDao userDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        try {
            User user = userDao.findById(id);

            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/formularz-edycji.jsp");
            rd.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}