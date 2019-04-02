package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.tadigital.ecommerce.customer.entity.Customer;


public class CustomerDao extends Dao {
	
	public boolean selectCustomerByEmailAndPassword(Customer c) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_info WHERE c_email = '" + c.getEmail() + "' AND c_password = '" + c.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				status = true;
				c.setFirstName(rs.getString(2));
				c.setLastName(rs.getString(3));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public boolean insertCustomer(Customer c) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO customer_info(c_fname,c_lname,c_email,c_password) " +
					 "VALUES('" + c.getFirstName() + "', '" + c.getLastName() +
					 "', '" + c.getEmail() + "', '" + c.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	

}
