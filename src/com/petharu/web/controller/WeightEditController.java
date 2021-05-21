package com.petharu.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petharu.web.entity.Weight;
import com.petharu.web.service.JDBCWeightService;

@WebServlet("/PETHARU/WeightRecord/WeightEdit")
public class WeightEditController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		int id = Integer.parseInt(req.getParameter("id"));
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String kg = req.getParameter("kg");
		
		String datetime = date+" "+time;
		
//		System.out.println(id);
//		System.out.println(datetime);
//		System.out.println(kg);
		
		JDBCWeightService service = new JDBCWeightService();
		Weight weight;
		
		try {
			weight = service.get(id);
			weight.setMeasureDatetime(datetime);
			weight.setKg(Float.parseFloat(kg));
			service.update(weight);
			
		} catch (Exception e) {
			
		}
		
		resp.sendRedirect("table.jsp");

	}
}
