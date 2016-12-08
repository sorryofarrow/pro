package com.jeff.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.jeff.dao.UnivDao;
import com.jeff.model.Bridge;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;

public class UnivDaoImpl implements UnivDao {
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Univ queryUnivById(String univCode) {
		// TODO Auto-generated method stub
		String hql = "from Univ where univCode="+univCode;
		return (Univ) getSession().createQuery(hql.toString()).list().get(0);
	}

	@Override
	public List<Dis> queryDisOfUniv(String univCode) {
		// TODO Auto-generated method stub
		String hql = "From Dis d WHERE d.disCode in(SELECT DISTINCT s.disCode from Spec s WHERE s.specCode in(SELECT DISTINCT m.specCode from Major m WHERE m.majorCode in(SELECT b.majorCode FROM Bridge b WHERE b.univCode='"+univCode+"')))";
		List<Dis> d = getSession().createQuery(hql.toString()).list();
		return d;
	}

	@Override
	public List<Spec> querySpecOfUniv(String univCode, String disCode) {
		// TODO Auto-generated method stub
		String hql = "FROM Spec s WHERE s.specCode in(SELECT DISTINCT m.specCode FROM Major m WHERE m.majorCode in(SELECT b.majorCode FROM Bridge b WHERE b.univCode='"+univCode+"')) AND s.disCode='"+disCode+"'";
		List<Spec> s = getSession().createQuery(hql.toString()).list();
		return s;
	}

	@Override
	public List<Major> queryMajorOfUniv(String univCode, String specCode) {
		// TODO Auto-generated method stub
		String hql = "FROM Major m WHERE m.majorCode IN(SELECT b.majorCode FROM Bridge b WHERE b.univCode='"+univCode+"')AND SUBSTR(m.majorCode,1,4)='"+specCode+"'";
		List<Major> m = getSession().createQuery(hql.toString()).list();
		return m;
	}

}
