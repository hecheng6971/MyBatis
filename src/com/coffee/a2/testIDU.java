/**
 * <p>Title: testIDU.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2018</p>   
* @author coffeeliu  
* @date 2018-5-15  
* @version 1.0  
 */
package com.coffee.a2;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;



/**
 * @author coffeeliu
 *
 */
public class testIDU {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String resource = "mybatis-config.xml";
		Reader reader = null;
		SqlSession session;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder()
				.build(reader);
		session = sqlMapper.openSession();
		////////////////////////////////////////////
		try {
			//////////////////////////////
		/*	tbl_user user=new tbl_user();
			user.setName("liuweiliuwei");
			user.setPassword("1111");
			user.setEmail("4444@kk");
			session.insert("insertUser", user);
			System.out.println(user.getId());
		*/
		/*	tbl_user user=new tbl_user();
			user.setName("刘伟哇哈哈哈");
			user.setPassword("1111");
			user.setEmail("55555@qq.com");
			user.setId(1);
			session.update("updateUser", user);
		*/	
			session.delete("deleteUser", 25);
			
			
			//////////////////////////////
			session.commit();
			/////////////
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
			
		}

	}

}
