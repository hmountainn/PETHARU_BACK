package com.petharu.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petharu.web.service.JDBCWeightService;

@WebServlet("/PETHARU/WeightRecord/del")
public class WeightDelController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		JDBCWeightService service = new JDBCWeightService();
		
		try {
			service.delete(id);
		} catch (Exception e) {
			
		}
		
		resp.sendRedirect("table.jsp");
	}
	
}
