package com.servlet;
import java.util.List;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Dao;
import com.pojo.Emp;

/**
 * Servlet implementation class servletpage
 */

public class servletpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Map<String, Emp> hello = new HashMap<>();

    /**
     * Default constructor. 
     */
    public servletpage() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("inside get");
		Dao dao=new Dao();
		List<Emp> empList=dao.getAllUsers();
		request.setAttribute("empList", empList);
		request.setAttribute("name", "hello");
		RequestDispatcher rs=request.getRequestDispatcher("view.jsp");
		rs.forward(request, response);
		
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   System.out.println("inside post");
	   Dao dao=new Dao();
		String name=request.getParameter("uname");
		String dept=request.getParameter("udept");
		String clg=request.getParameter("uclg"); 
        System.out.println(clg);
        Emp emp=new Emp();
        System.out.println("after pojo object");
        emp.setName(name);
        emp.setDept(dept);
        emp.setClg(clg);
    
        try {
            dao.insert(emp);
            System.out.println("success");
            response.sendRedirect("success.html");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.html"); 
        }
	}

}
