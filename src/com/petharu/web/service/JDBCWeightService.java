package com.petharu.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import com.petharu.web.entity.Weight;

public class JDBCWeightService implements WeightService {
	public List<Weight> getList(){
		List<Weight> list = new ArrayList<>();
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
//		String sql = "SELECT * FROM WEIGHT";
		String sql = "SELECT W.*,SUBSTR(MEASURE_DATETIME,0,10) DA FROM WEIGHT W ORDER BY DA";
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //����̹� ����
			Connection con = DriverManager.getConnection(url, "PETHARU", "1357"); //����
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt("ID");
				int petId = rs.getInt("PET_ID");
				String measureDatetime = rs.getString("MEASURE_DATETIME");
				float kg = rs.getFloat("KG");
				
				Weight weight = new Weight();
				weight.setId(id);
				weight.setPetId(petId);
				weight.setMeasureDatetime(measureDatetime);
				weight.setKg(kg);
				
				list.add(weight);
			}
			
			rs.close();
			st.close();
		}catch (Exception e) {
			throw new ServiceException();
		}
		return list;
	}
	
	public int insert(Weight weight) throws SQLException, ClassNotFoundException {
		int result = 0;
		
		String sql = "INSERT INTO WEIGHT(PET_ID,MEASURE_DATETIME,KG) VALUES(?,?,?)"; //?�� ������ �ȾƳ�������
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		Class.forName("oracle.jdbc.OracleDriver"); 
		Connection con = DriverManager.getConnection(url, "PETHARU","1357"); //����̹� �ε�
		
		PreparedStatement st = con.prepareStatement(sql);
		System.out.println(weight.getMeasureDatetime());
		st.setInt(1,weight.getPetId()); //�����͸� ����
		st.setString(2,weight.getMeasureDatetime());
		st.setFloat(3, weight.getKg());
		
		
		result = st.executeUpdate();
		
		st.close();
		con.close();
		
		return result;
		
	}
	
	public Weight get(int id) throws ClassNotFoundException, SQLException {
		Weight weight = null;
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		String sql = "SELECT * FROM WEIGHT WHERE ID="+id;
		
		Class.forName("oracle.jdbc.OracleDriver"); 
		Connection con = DriverManager.getConnection(url, "PETHARU","1357"); //����̹� �ε�
		Statement st = con.createStatement(); //�������
		ResultSet rs = st.executeQuery(sql); //�������
		
		
		if(rs.next()) {
			int petId = rs.getInt("PET_ID");
			String measureDatetime = rs.getString("MEASURE_DATETIME");
			float kg = rs.getFloat("KG");
			
			weight = new Weight();
			weight.setId(id);
			weight.setPetId(petId);
			weight.setMeasureDatetime(measureDatetime);
			weight.setKg(kg);
		}
		
		
		rs.close();
		st.close();
		con.close();
		
		
		return weight;
	}

	public int update(Weight weight) throws ClassNotFoundException, SQLException {
		int result = 0;
		
		String sql = "UPDATE WEIGHT SET MEASURE_DATETIME=?,KG=? WHERE ID=?";
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		Class.forName("oracle.jdbc.OracleDriver"); 
		Connection con = DriverManager.getConnection(url, "PETHARU","1357"); //����̹� �ε�
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1,weight.getMeasureDatetime()); //�����͸� ����
		st.setFloat(2,weight.getKg());
		st.setInt(3,weight.getId());
		
		
		//executeQuery(): Select
		//executeUpdate(): Update/Delete/Insert
		result = st.executeUpdate(); 
		
		st.close();
		con.close();
		
		return result;
		
	}
	
	
}

