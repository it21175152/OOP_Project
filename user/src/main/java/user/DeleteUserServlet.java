package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCustomerServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cusid");
		boolean isTrue;
		isTrue =UserDBUtil.deleteCustomer(id);
	
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerInsert.jsp");
			dispatcher.forward(request, response);
		}else {
			List<user> cusDetails = UserDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserAccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
