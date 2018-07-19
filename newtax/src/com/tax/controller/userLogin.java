package com.tax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tax.dao.DB_user;

/**
 * Servlet implementation class userLogin
 */
public class userLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userID = request.getParameter("username");
		String psw = request.getParameter("password");
		PrintWriter out = response.getWriter();
		boolean hasLogined ;
		if (userID == null || "".equals(userID.trim())||psw == null || "".equals(psw.trim())) {
			System.out.println("用户名或者密码不能为空");
		}
		else {
		DB_user dbu = new DB_user();
		if(dbu.loginVerify(userID, psw)) {
			System.out.println("登陆成功");
			hasLogined = true;
			request.getSession().setAttribute("username", userID);
			request.getSession().setAttribute("hasLogined", hasLogined);
			response.sendRedirect("webPages/NewFile.jsp");
			
		}else {
			out.print("<script>alert('登录失败!');window.location.href='http://localhost:8080/ServerTest/webPages/jiedu/login.jsp'</script>");
			System.out.println("登录失败");
			response.sendRedirect("webPages/jiedu/login.jsp");
//			response.sendRedirect("/webPages/login.jsp");
		}
//		RequestDispatcher requestDispatcher=request.getRequestDispatcher("http://www.baidu.com");
//		requestDispatcher.forward(request, response);
		}
	}
	public void init () throws ServletException{
		
		System.out.println("userLogin servlet initing...");
	}
}
