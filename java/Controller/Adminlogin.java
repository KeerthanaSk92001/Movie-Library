package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Dao;
import DTO.Admin;
@WebServlet("/adminlogin")
public class Adminlogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String adminmail = req.getParameter("adminmail");
		String adminpassword= req.getParameter("adminpassword");
		
		Dao dao = new Dao();
		try {
			Admin admin = dao.findByEmail(adminmail);
			System.out.println("====================from service====================");
			if(admin!=null) {
				System.out.println("====================from 1st if====================");

				if(admin.getAdminpassword().equals(adminpassword)) {
					System.out.println("====================from 2nd if====================");

					req.setAttribute("movies", dao.getAllMovies());
					RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
					dispatcher.include(req, resp);
				}
				else {
					System.out.println("====================from 1st else====================");

					req.setAttribute("message","password is wrong");
					RequestDispatcher dispatcher = req.getRequestDispatcher("alogin.jsp");
					dispatcher.include(req, resp);
				}
			}
			else {
				System.out.println("====================from 2nd else====================");

				req.setAttribute("message","email is wrong");
				RequestDispatcher dispatcher = req.getRequestDispatcher("alogin.jsp");
				dispatcher.include(req, resp);
			}
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
