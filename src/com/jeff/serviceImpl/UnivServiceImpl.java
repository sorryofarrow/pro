package com.jeff.serviceImpl;

import java.util.List;

import com.jeff.dao.UnivDao;
import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.UnivService;

public class UnivServiceImpl implements UnivService{
	
	private UnivDao univDao; 
	
	public void setUnivDao(UnivDao univDao) {
		this.univDao = univDao;
	}

	@Override
	public Univ queryUnivById(String univCode) {
		// TODO Auto-generated method stub
		return univDao.queryUnivById(univCode);
	}

	@Override
	public List<Dis> queryDisOfUniv(String univCode) {
		// TODO Auto-generated method stub
		return univDao.queryDisOfUniv(univCode);
	}

	@Override
	public List<Spec> querySpecOfUniv(String univCode, String disCode) {
		// TODO Auto-generated method stub
		return univDao.querySpecOfUniv(univCode, disCode);
	}

	@Override
	public List<Major> queryMajorOfUniv(String univCode, String specCode) {
		// TODO Auto-generated method stub
		return univDao.queryMajorOfUniv(univCode, specCode);
	}
	
}
