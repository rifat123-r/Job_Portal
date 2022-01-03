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

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet {

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			JobDao dao = new JobDao(DBConnect.getConn());
			boolean f = dao.deleteJobs(id);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("msg", "Job Delete Successfully");
				resp.sendRedirect("add_job.jsp");
			} else {
				session.setAttribute("msg", "Something wrong on server");
				resp.sendRedirect("add_job.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
