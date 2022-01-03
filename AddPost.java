package com.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DB.DBConnect;
import com.Dao.JobDao;
import com.Entity.Jobs;

@WebServlet("/add_job")
public class AddPost extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String tittle = req.getParameter("title");
			String Location = req.getParameter("Location");
			String catagory = req.getParameter("catagory");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");

			Jobs j = new Jobs();
			j.setTitle(tittle);
			j.setLocation(Location);
			j.setCatagory(catagory);
			j.setStatus(status);
			j.setDescription(desc);

			HttpSession session = req.getSession();

			JobDao dao = new JobDao(DBConnect.getConn());
			boolean f = dao.addJobs(j);
			if (f) {
				session.setAttribute("msg", "Job Post Successfully");
				resp.sendRedirect("add_job.jsp");
			} else {
				session.setAttribute("msg", "Something wrong on server");
				resp.sendRedirect("add_job.jsp");
			}

		} catch (Exception e) {

		}
	}

}
