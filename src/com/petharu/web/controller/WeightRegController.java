package com.petharu.web.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import com.petharu.web.entity.Weight;
import com.petharu.web.service.JDBCWeightService;

@WebServlet("/pet-management/weight-record/WeightReg")
public class WeightRegController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String kg = req.getParameter("kg");

		String datetime = date+" "+time;
		
		System.out.println(datetime);
		
//		SimpleDateFormat trans = new SimpleDateFormat("yy-mm-dd");
//		DateFormat transtime = new SimpleDateFormat("hh:mm:ss");
//		Date date;
//		Time time;
		
		JDBCWeightService weightservice = new JDBCWeightService();
		
		try {
//			date = trans.parse(date_);
//			time = (Time) transtime.parse(time_);
			Weight weight = new Weight();
			weight.setPetId(1);
			weight.setMeasureDatetime(datetime);
			weight.setKg(Float.parseFloat(kg));
			weightservice.insert(weight);
			
		} catch (Exception e) {
			
		}
		
		resp.sendRedirect("table.jsp");
			
		}
		
		
	}
	

