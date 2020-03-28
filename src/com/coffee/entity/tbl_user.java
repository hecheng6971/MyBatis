/**
 * <p>Title: tbl_user.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2018</p>   
* @author coffeeliu  
* @date 2018-5-13  
* @version 1.0  
 */
package com.coffee.entity;

import java.util.List;
/**
 * @author coffeeliu
 *
 */
public class tbl_user {
   private int id;
   private String name;
   private String password;
   private String email;
   private List<tbl_visit> visitList;
   
/**
 * @param name
 * @param password
 */
   
public tbl_user(String name, String password) {
	super();
	this.name = name;
	this.password = password;
}

/**
 * @param name
 * @param password
 * @param email
 */
public tbl_user(String name, String password, String email) {
	super();
	this.name = name;
	this.password = password;
	this.email = email;
}

/**
 * 
 */

public tbl_user() {
	super();
}
public List<tbl_visit> getVisitList() {
	return visitList;
}
public void setVisitList(List<tbl_visit> visitList) {
	this.visitList = visitList;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
}
