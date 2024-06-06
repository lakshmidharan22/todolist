package controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class logout extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws IOException 
	{
		HttpSession session=req.getSession(false);
		session.invalidate();
		
		resp.sendRedirect("login.jsp");
	}

}
