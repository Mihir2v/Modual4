package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Employee;
import com.bean.EmployeeInfo;
import com.util.StudentUtil;

public class EmployeeDao {

	public static void insertEmployeeInfo(EmployeeInfo e)
	{
		Session session=StudentUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}
	public static void insertEmployee(Employee e)
	{
		Session session=StudentUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}
	public static List<Employee> getAllEmployee()
	{
		Session session=StudentUtil.createSession();
		List<Employee> list=session.createQuery("from Employee").list();
		session.close();
		return list;
	}
	public static Employee getEmployee(int eid)
	{
		Session session=StudentUtil.createSession();
		Employee e=session.get(Employee.class, eid);
		session.close();
		return e;
	}
	public static void deleteEmployee(int eid)
	{
		Session session=StudentUtil.createSession();
		Transaction tr=session.beginTransaction();
		Employee e= session.get(Employee.class,eid);
		session.delete(e);
		tr.commit();
		session.close();
	}
}
