package com.tadigital.ecommerce.customer.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/reportbug")
public class ErrorReportController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession sess = req.getSession();
		String ses = (String) sess.getAttribute("err");

		String email = "sowmyal1998@gmail.com";

		CustomerService customer = new CustomerService();
		customer.sendReportMail(ses, email);

		RequestDispatcher rd = req.getRequestDispatcher("signIn.jsp");
		rd.forward(req, res);
	}

}
