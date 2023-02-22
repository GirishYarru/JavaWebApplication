
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExcelServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String jsonString = request.getParameter("jsonValue").toString().replaceAll("\\s", "").replaceAll("\\n", "")
				.replaceAll("\\r", "");

		request.getSession().setAttribute("json", jsonString);

		request.getRequestDispatcher("display_xl.jsp").forward(request, response);
		return;
	}

}
