package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.EmployeeServiceImpl;

@WebServlet("/employee.do")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeServiceImpl service = EmployeeServiceImpl.getInstance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("사번 : "+request.getParameter("employeeId"));
		String cmd = request.getParameter("cmd");
		System.out.println("cmd :: "+cmd);
		String dir = request.getServletPath().substring(1).replace(".do", "");
		System.out.println("dir ::::: "+dir);
		
		String page = request.getParameter("page");
		System.out.println("페이지 ::: "+page);
		switch(cmd) {
		case "move": request.getRequestDispatcher("/WEB-INF/view/"+dir+"/"+page+".jsp").forward(request, response);
			break;
		}
	}


}
