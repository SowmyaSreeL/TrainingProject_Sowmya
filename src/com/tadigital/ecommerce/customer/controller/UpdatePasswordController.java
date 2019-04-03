package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/update")
public class UpdatePasswordController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("signIn.html");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oldPassword = req.getParameter("f1");
		String newPassword = req.getParameter("f2");
		String retype = req.getParameter("f3");
		HttpSession session = req.getSession();
		Customer c = new Customer();
		String pw = (String) session.getAttribute("pas");
		c.setPassword(pw);

		if (pw.equals(oldPassword)) {

			if (newPassword.equals(retype)) {

				String mail = (String) session.getAttribute("email");

				c.setPassword(newPassword);
				c.setEmail(mail);
				CustomerService cs = new CustomerService();
				boolean status = cs.updatePassword(c);
				if (status) {
					req.setAttribute("pwstatus", "true");
					RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
					rd.forward(req, resp);
				} else {
					req.setAttribute("pwstatus", "false");
					RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
					rd.forward(req, resp);
				}
			} else {
				req.setAttribute("pwstatus", "unmatched");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			req.setAttribute("pwstatus","no");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		}

	}
}
