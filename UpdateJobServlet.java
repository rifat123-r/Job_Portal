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

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet {

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String tittle = req.getParameter("title");
			String Location = req.getParameter("Location");
			String catagory = req.getParameter("catagory");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");

			Jobs j = new Jobs();
			j.setId(id);
			j.setTitle(tittle);
			j.setCatagory(catagory);
			j.setDescription(desc);
			j.setStatus(status);
			j.setLocation(Location);

			HttpSession session = req.getSession();

			JobDao dao = new JobDao(DBConnect.getConn());
			boolean f = dao.updateJob(j);
			if (f) {
				session.setAttribute("msg", "Job Update Successfully");
				resp.sendRedirect("viewjob.jsp");
			} else {
				session.setAttribute("msg", "Something wrong on server");
				resp.sendRedirect("viewjob.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
