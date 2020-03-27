package com.coffee.a1;

import java.io.InputStream;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import com.coffee.entity.Student;

public class MyTest1
{

	public static void main(String[] args) throws Exception
	{
		// 创建 SqlSessionFactory
		String resource = "mybatis-config.xml";
		//InputStream inputStream = Resources.getResourceAsStream(resource);
		Reader reader = null;
		reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sqlSessionFactory =
				new SqlSessionFactoryBuilder().build(reader);
		
		// 获取 Session
		SqlSession session = sqlSessionFactory.openSession();
		
		// 执行查询
		try {
			Student row = session.selectOne("com.coffee.test.getStudent", 20200001);
			if(row != null)
				System.out.println(row.id + "," + row.name + "," + row.sex + "," + row.phone+","+row.birthday);
		}
		finally {
			session.close();		
		}
			
		System.out.println("Exit");
	}

}
