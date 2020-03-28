/**
 * <p>Title: testTran.java</p>  
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

import com.coffee.entity.tbl_address;
import com.coffee.entity.tbl_user;


/**
 * @author coffeeliu
 *
 */
public class testTran {

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
		session = sqlMapper.openSession(false);//不使用自动提交
		try{
			tbl_user user=new tbl_user();
			/*
			user.setName("liuwei134455");
			user.setPassword("123456");
			user.setEmail("76876@87879");
			session.insert("insertUser",user);
			*/
			user.setId(2);
			System.out.println("新加入的user id="+user.getId());
			
			tbl_address at=new tbl_address();
			at.setUser(user);
			at.setCity("nanjing");
			at.setCountry("zongguo");
			session.insert("insertAddress", at);
			session.commit();//事务提交

		}
		catch(Exception e)
		{
			e.printStackTrace();
			session.rollback();//回滚
		}
		finally
		{
			session.close();//关闭session
		}

	}

}
