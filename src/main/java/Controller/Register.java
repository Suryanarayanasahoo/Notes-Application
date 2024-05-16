package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.Dao.UserDao;
import com.org.Dto.User;
@WebServlet("/register")
public class Register  extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name= req.getParameter("name");
		int age =Integer.parseInt(req.getParameter("age"));
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		User user = new User();
		user.setName(name);
		user.setAge(age);
		user.setEmail(email);
		user.setPassword(password);
		user.setMobile(mobile);
		
		UserDao dao = new UserDao();
		dao.saveAndUpdateUser(user);
		
		HttpSession session =req.getSession();
		session.setAttribute("success", "Registration succesful");
		
		resp.sendRedirect("Register.jsp");
	}

}