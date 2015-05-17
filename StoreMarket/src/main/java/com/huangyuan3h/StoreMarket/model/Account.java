package com.huangyuan3h.StoreMarket.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="account")
public class Account   {
	
	
	/**
	 * @NotEmpty 用在集合类上面
@NotBlank 用在String上面
@NotNull    用在基本类型上
	 */
	   
	   @Id
	   @GeneratedValue
	   private Long Id;
	   
	   @Column(unique=true)
	   @NotBlank
	   @Size(min = 1, max = 25)	  
	   private String UserName;
	   
	   @NotBlank  ///
	   @Size(min = 1, max = 25)
	   private String Password;
	   
	  
	  private boolean  isMale;  
	  
	 
	  private Date  DOB;
	   
	  
	
	  private String  Address;
	   
	 
	   private String PhoneNumber;	  
	   
	   @Column(unique=true)	   
	   @Email
	   private String Email;


/*
 * 
 * getter and setter method
 */
	   
	public Long getId() {
		return Id;
	}


	public void setId(Long id) {
		Id = id;
	}


	public String getUserName() {
		return UserName;
	}


	public void setUserName(String userName) {
		UserName = userName;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	
	  public boolean isMale() {
		return isMale;
	}


	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}


	public Date getDOB() {
		return DOB;
	}


	public void setDOB(Date dOB) {
		DOB = dOB;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getPhoneNumber() {
		return PhoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	   

	   
	   
	   

}
