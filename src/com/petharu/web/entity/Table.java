package com.petharu.web.entity;

import java.sql.Time;
import java.time.LocalTime;
import java.util.Date;

public class Table {
	private int id;
	private int petId;
	private Date measureDate;
	private Time measureTime;
	private float kg;
	
	
	public Table() {
		// TODO Auto-generated constructor stub
	}


	public Table(int id, int petId, Date measureDate, Time measureTime, float kg) {
		super();
		this.id = id;
		this.petId = petId;
		this.measureDate = measureDate;
		this.measureTime = measureTime;
		this.kg = kg;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getPetId() {
		return petId;
	}


	public void setPetId(int petId) {
		this.petId = petId;
	}


	public Date getMeasureDate() {
		return measureDate;
	}


	public void setMeasureDate(Date measureDate) {
		this.measureDate = measureDate;
	}


	public Time getMeasureTime() {
		return measureTime;
	}


	public void setMeasureTime(Time measureTime) {
		this.measureTime = measureTime;
	}


	public float getKg() {
		return kg;
	}


	public void setKg(float kg) {
		this.kg = kg;
	}


	@Override
	public String toString() {
		return "Table [id=" + id + ", petId=" + petId + ", measureDate=" + measureDate + ", measureTime=" + measureTime
				+ ", kg=" + kg + "]";
	}
	
	
}
