/**
 * <p>Title: tbl_address.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2018</p>   
* @author coffeeliu  
* @date 2018-5-15  
* @version 1.0  
 */
package com.coffee.entity;
/**
 * @author coffeeliu
 *
 */
public class tbl_address {
  private int id;
  private String city;
  private String country;
  private tbl_user user;
  private int money;
  
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}


public int getMoney() {
	return money;
}
public void setMoney(int money) {
	this.money = money;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public tbl_user getUser() {
	return user;
}
public void setUser(tbl_user user) {
	this.user = user;
}
  
}
