/**
 * <p>Title: testAssociation.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2018</p>   
* @author coffeeliu  
* @date 2018-5-21  
* @version 1.0  
 */
package com.coffee.a2;


import java.io.IOException;
import java.io.Reader;
import java.util.List;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.coffee.entity.tbl_address;



/**
 * @author coffeeliu
 *
 */
public class testAssociation {

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
		try{
		//	List<tbl_address> ap=session.selectList("selectAddressJoin");//联合查询与构造查询
			List<tbl_address> ap=session.selectList("selectAddress");//子查询
			for(tbl_address temp:ap)
			{
				System.out.println("id="+temp.getId()+"姓名="+temp.getUser().getName()+"邮箱="+temp.getUser().getEmail()+
						"地址="+temp.getCountry()+temp.getCity()+temp.getMoney()); 
				//System.out.println("id="+temp.getId()+
				//		"地址="+temp.getCountry()+temp.getCity()); 
				//System.err.println("懒加载！");
				//System.out.println("姓名="+temp.getUser().getName()+"邮箱="+temp.getUser().getEmail()); 
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
	}

}
