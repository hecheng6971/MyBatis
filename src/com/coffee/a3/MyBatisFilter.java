package com.coffee.a3;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter()
public class MyBatisFilter implements Filter
{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException
	{
		// 调用  MyBatis 的任意一个方法，进而执行 MyBatis里的静态代码块，完成实始化工作
		MyBatis.foo();
	}
	
	@Override
	public void destroy()
	{
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException
	{
		chain.doFilter(req, resp);
	}

}
