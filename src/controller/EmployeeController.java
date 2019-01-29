package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.EmployeeDTO;
import service.EmployeeServiceImpl;

@WebServlet("/employee.do")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeServiceImpl service = EmployeeServiceImpl.getInstance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("사번 : "+request.getParameter("employeeId")+
							"\n이름 : "+request.getParameter("name")+
							"\n매니저 : "+request.getParameter("manager")+
							"\n생년월일 : "+request.getParameter("birthDate")+
							"\n세부사항 : "+request.getParameter("notes"));
		EmployeeDTO e = (EmployeeDTO) session.getAttribute("admin");
		if(request.getParameter("admin")==null) {
			System.out.println("널");
			request.setAttribute("compo", "access");
		}else {
			request.setAttribute("compo", "cus_list");
		}
		request.getRequestDispatcher("/WEB-INF/view/employee/main.jsp").forward(request, response);
	}


}
