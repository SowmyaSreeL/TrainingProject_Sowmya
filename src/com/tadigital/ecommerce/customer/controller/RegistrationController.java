package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")
public class RegistrationController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("signIn.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");

		String[] n = name.split(" ");
		String fname = n[0];
		String lname;
		if(n.length==1)
			 lname = "null";
		else
			 lname = n[1];
		

		Customer c = new Customer();
		c.setFirstName(fname);
		c.setLastName(lname);
		c.setEmail(email);
		c.setPassword(password);
		
		CustomerService cs=new CustomerService();
		boolean b=cs.registerCustomer(c);
		
		if(b){
			//HttpSession ses = req.getSession();
			req.setAttribute("regstatus","true");
			
			RequestDispatcher rd=req.getRequestDispatcher("signIn.jsp");
			rd.forward(req, resp);
		}
		else
		{
			//HttpSession ses = req.getSession();
			req.setAttribute("regstatus","false");
			RequestDispatcher rd=req.getRequestDispatcher("signIn.jsp");
			rd.forward(req, resp);
		}

	}
}
