package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Product;

public class AddProductDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddProductDetailsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Fetch the product details from request
		String productName = request.getParameter("productName");
		long quantity = 0;
		double unitPrice = 0;
		quantity = Long.valueOf(request.getParameter("quantity"));
		unitPrice = Long.valueOf(request.getParameter("unitPrice"));

		Product product = new Product(productName, quantity, unitPrice);

		request.getSession().setAttribute("productDetails", product);

		RequestDispatcher rd = request.getRequestDispatcher("displayProductDetails.jsp");

		rd.forward(request, response);

	}

}
