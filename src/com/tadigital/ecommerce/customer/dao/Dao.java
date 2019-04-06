package com.tadigital.ecommerce.customer.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.util.Properties;

//import com.sun.xml.internal.fastinfoset.sax.Properties;


public class Dao {
		protected Connection openConnection() {
			Connection con = null;
			Properties props = new Properties();
			InputStream inputStream = getClass().getResourceAsStream("db.properties");
			try {
				props.load(inputStream);
			} catch (IOException ioe) {
				ioe.printStackTrace();
			}
			
			try {
				String driver= props.getProperty("driver");
				String url=props.getProperty("url");
				String username=props.getProperty("username");
				String password=props.getProperty("password");
				Class.forName(driver);
				con = DriverManager.getConnection(url,username,password);
			} catch (ClassNotFoundException cnfe) {
				cnfe.printStackTrace();
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
			
			return con;
		}
		
		protected Statement openStatement(Connection con) {
			Statement stmt = null;
			
			try {
				stmt = con.createStatement();
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
			
			return stmt;
		}
		
		protected void closeResultSet(ResultSet rs) {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		
		protected void closeStatement(Statement stmt) {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		
		protected void closeConnection(Connection con) {
			try {
				if(con != null) {
					con.close();
				}
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}

}
