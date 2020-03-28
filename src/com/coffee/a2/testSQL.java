/**
 * <p>Title: testSQL.java</p>  
 * <p>Description: </p>  
 * <p>Copyright: Copyright (c) 2018</p>   
 * @author coffeeliu  
 * @date 2018-5-23  
 * @version 1.0  
 */
package com.coffee.a2;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
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
public class testSQL {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
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

		try {
			// if
		/*	tbl_address address = new tbl_address();
			address.setMoney(200);//为何只有8条记录
			List<tbl_address> ap = session.selectList("selectAddressJoinIF",
					address);
			for (tbl_address temp : ap) {
				System.out.println("用户=" + temp.getUser().getName()+"money"+temp.getMoney());
			}
			*/
			// choose where
		/*	tbl_user user=new tbl_user();
			user.setName("%e%");
			user.setId(1);
			//List<tbl_user> ap=session.selectList("selectUserChoose",user);
			//where标记
			List<tbl_user> ap=session.selectList("selectUserWhere",user);
			for(tbl_user temp:ap) {		
				System.out.println("用户ID="+temp.getId()+"用户名="+temp.getName());
			}
          */
			//set trim
		/*	tbl_user user=new tbl_user();
			user.setId(18);
			user.setName("天王盖地虎");
			user.setPassword("1111");
			//set标记
			//session.update("updateUserSet",user);
			//trim标记
			session.update("updateUserTrim",user);
			*/
			//foreach 循环查询
		/*	ArrayList<Integer> ids=new ArrayList<Integer>();
			ids.add(2);
			ids.add(8);
			ids.add(9);
			List<tbl_user> ap=session.selectList("selectUserForeach", ids);
			for(tbl_user temp:ap) {		
				System.out.println("用户ID="+temp.getId()+"用户名="+temp.getName());
			}
		*/
			//foreach 循环赋值
			ArrayList<tbl_user> aList=new ArrayList();
			tbl_user one=new tbl_user("wwwww","5656","111@s");
			tbl_user two=new tbl_user("eeeee","8484");
			aList.add(one);
			aList.add(two);
			session.insert("insertUserForeach",aList);
			
			session.commit();
					} finally {
			session.close();
		}

	}

}
