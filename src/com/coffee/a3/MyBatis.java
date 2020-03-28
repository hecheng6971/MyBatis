package com.coffee.a3;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatis
{
	// 全局实例
	public static SqlSessionFactory factory;
	
	static{
		System.out.println("MyBatis factory 初始化 ...");

		// 静态代码块: 初始化 SqlSessionFactory 实例
		try{
			String resource = "mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(inputStream);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
	
	// 随便加一个方法
	public static void foo()
	{		

	}
}
