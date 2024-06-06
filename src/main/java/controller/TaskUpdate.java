package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclass.taskdao;
import dtoclass.Taskdto;
import dtoclass.Userdto;

@WebServlet("/TaskUpdate")
public class TaskUpdate extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int t=Integer.parseInt(req.getParameter("num"));
				String title=req.getParameter("title");
				String desc=req.getParameter("descr");
				String priority=req.getParameter("priority1");
				String due=req.getParameter("duedate1");
				Taskdto td=new Taskdto();	
		
				Userdto d=(Userdto)req.getSession().getAttribute("userdata");		
int user =d.getUid();
		td.setTaskid(t);
		td.setTaskTitle(title);
		td.setTaskDescription(desc);
		td.setTaskPriority(priority);
		td.setTaskDueDate(due);
		td.setUserid(user);
		
		
		
		taskdao kd=new taskdao();
		try {
		int num=	kd.UpdateTask(td);
		List<Taskdto> list =kd.FindTask(num);
		
		
		 req.setAttribute("data",d);
		 req.setAttribute("listdata",list);
		 
		 req.getRequestDispatcher("home.jsp").forward(req, resp);
		
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		

}
}
