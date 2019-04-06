package com.tadigital.ecommerce.customer.service;

import java.util.Properties;
import java.io.InputStream;
import java.io.IOException;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao customerDao = new CustomerDao();

	public boolean loginCustomer(Customer customer) {
		return customerDao.selectCustomerByEmailAndPassword(customer);

	}

	public boolean updatePassword(Customer c) {
	return  customerDao.insertPassword(c);
		
	}

	public String display(Customer c) {
		String s = customerDao.welcome(c);
		return s;
	}

	public boolean registerCustomer(Customer customer) {
		boolean status = customerDao.insertCustomer(customer);

		if (status) {
			sendWelcomeMail(customer.getFirstName() + " " + customer.getLastName(), customer.getEmail());
		}

		return status;
	}
	

	public String sendWelcomeMail(String name, String email) {
		String status = "NOT SENT";

//MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		InputStream inputStream = getClass().getResourceAsStream("email.properties");
		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		String host=properties.getProperty("host");
		String port1=properties.getProperty("port1");
		String cls=properties.getProperty("cls");
		String auth=properties.getProperty("authentication");
		String port2=properties.getProperty("port2");
		String username=properties.getProperty("mail");
		String password=properties.getProperty("password");
		
		properties.put("mail.smtp.host",host);
		properties.put("mail.smtp.socketFactory.port",port1);
		properties.put("mail.smtp.socketFactory.class", cls);
		properties.put("mail.smtp.auth",auth);
		properties.put("mail.smtp.port", port2);

//CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username,password);
			}
		});
		try {
//COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(username));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("Welcome to the world of TA Digital!");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='#DAF7A6'>Dear <i><font color='#FF7A33'>" + name + "</font></i>,<br/><br/>"
					+ "<img src='cid:image1'><br/><h2><font color='#C70039'>Welcome to TA Digital Family!</font></h2>"
					+ "<br/><font color='#900C3F'>We are excited to have you on-board.</font>"
					+ "<br/><br/><br/><font color='#581845'>Stay tuned and we have got some great things in store for you.</font>"
					+ "<br/><br/><br/><font color='#FFC300'>Happy Shopping!<br/>TA Digital<br/><br/></font><img src='cid:image'></body>";
			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			DataSource fds = new FileDataSource(
					"E://Trainee Engineers March 2019/workspace/TrainingProject_Sowmya/WebContent/images/logo.jpg");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image>");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			fds = new FileDataSource(
					"E://Trainee Engineers March 2019/workspace/TrainingProject_Sowmya/WebContent/images/welcome.jpg");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image1>");
			mp.addBodyPart(mbp1);

			mimeMessage.setContent(mp);

//SEND MAIL
			Transport.send(mimeMessage);

			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return status;
	}
	
	public String sendReportMail(String rep,String mail) {
		String status = "NOT SENT";

		//MAIL SERVER CONFIGURATION
		Properties properties=new Properties();
		InputStream inputStream = getClass().getResourceAsStream("email.properties");
		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		String host=properties.getProperty("host");
		String port1=properties.getProperty("port1");
		String cls=properties.getProperty("cls");
		String auth=properties.getProperty("authentication");
		String port2=properties.getProperty("port2");
		String username=properties.getProperty("mail");
		String password=properties.getProperty("password");
		
		properties.put("mail.smtp.host",host);
		properties.put("mail.smtp.socketFactory.port",port1);
		properties.put("mail.smtp.socketFactory.class", cls);
		properties.put("mail.smtp.auth",auth);
		properties.put("mail.smtp.port", port2);

		//CONNECT TO MAIL SERVER
				Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username,password);
					}
				});
				try {
		//COMPOSE MESSAGE
					MimeMessage mimeMessage = new MimeMessage(session);
					mimeMessage.setFrom(new InternetAddress(username));
					mimeMessage.addRecipient(Message.RecipientType.TO,new InternetAddress(mail));
					mimeMessage.setSubject("Welcome to the world of TA Digital!");
					MimeMultipart mp = new MimeMultipart();
					MimeBodyPart mbp1 = new MimeBodyPart();

					String msg = "<body bgcolor='#DAF7A6'>Dear,<br/> <i><font color='#FF7A33'>" + rep + "</font></i>,<br/><br/>"
							+ "TA Digital<br/><br/></font><img src='cid:image1' width:15px heught:10px></body>";
					mbp1.setContent(msg, "text/html");
					mp.addBodyPart(mbp1);

					mbp1 = new MimeBodyPart();
					DataSource fds = new FileDataSource(
							"E:\\Trainee Engineers March 2019\\workspace\\TrainingProject_Sowmya\\WebContent\\images\\exc.jpg");
					mbp1.setDataHandler(new DataHandler(fds));
					mbp1.setHeader("Content-ID", "<image1>");
					mp.addBodyPart(mbp1);

					mimeMessage.setContent(mp);

		//SEND MAIL
					Transport.send(mimeMessage);

					status = "SENT";
				} catch (MessagingException mex) {
					mex.printStackTrace();
				}

				return status;
		
	}
}



