package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		
		try
		{
		List<Customer> cusDetails = CustomerDBUtil.validate(username, password); 
		request.setAttribute("cusDetails", cusDetails);
		}
		catch (Exception e) {
			e.printStackTrace(); 
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
		dis.forward(request, response);*/
		
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = UserDBUtil.validate(username, password);
		
		/*if(isTrue == true) {
			List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
			request.setAttribute("cusDetails", cusDetails);
			//RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}*/
		
		
		
		
		
		
		
		if(isTrue == true){
			List<user> cusDetails = UserDBUtil.getCustomer(username);
            HttpSession session = request.getSession();
            
            //String name = request.getParameter("username");
            session.setAttribute("cusDetails", cusDetails);
            response.sendRedirect("Home.jsp");
           
        }else{
        	out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
        }
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*try
		{
		List<Customer> cusDetails = CustomerDBUtil.validate(username, password); 
		request.setAttribute("cusDetails", cusDetails);
		}
		catch (Exception e) {
			e.printStackTrace(); 
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
		dis.forward(request, response);*/
		
		
		
		
		
		
	}

}
