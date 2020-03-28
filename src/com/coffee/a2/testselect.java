/**
 * <p>Title: testselectPhashmap.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2018</p>   
* @author coffeeliu  
* @date 2018-5-15  
* @version 1.0  
 */
package com.coffee.a2;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.coffee.entity.tbl_user;



/**
 * @author coffeeliu
 *
 */
public class testselect {

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
			///hashmap传入参数测试//////////////////////
		/*	HashMap<String,String> hm=new HashMap();
			hm.put("userName", "刘伟哇哈哈哈");
			hm.put("password","1111");
			tbl_user temp=session.selectOne("loginSelect",hm);
			if(temp!=null)
			{
				System.out.println("登陆成功！");
			}
			*/
			////对象传入参数测试////////////////////////////////////
		/*	tbl_user user=new tbl_user();
			user.setName("刘伟哇哈哈哈");
			user.setPassword("1111");
			tbl_user temp=session.selectOne("loginSelect2",user);
			if(temp!=null)
			{
				System.out.println("登陆成功！");
			}
		*/
			////////多行记录查询测试///////////////////////
			//List<tbl_user> ap=session.selectList("selectUserList");
			List<tbl_user> ap=session.selectList("selectUsers");
			for(tbl_user temp:ap) {
				System.out.println("用户名="+temp.getEmail()); 
				
			}
			
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
