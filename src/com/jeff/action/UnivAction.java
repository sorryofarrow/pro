package com.jeff.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeff.model.Dis;
import com.jeff.model.Major;
import com.jeff.model.Spec;
import com.jeff.model.Univ;
import com.jeff.service.UnivService;
import com.opensymphony.xwork2.ActionSupport;

public class UnivAction extends ActionSupport{

	private UnivService univService;
	private Univ university;
	private Dis dis;
	private Spec spec;
	private List<Dis> univDis;
	private Map<String,Object> specMap=new HashMap<String, Object>();
	private Map<String,Object> majorMap=new HashMap<String, Object>();
	
	public List<Dis> getUnivDis() {
		return univDis;
	}

	public void setUnivDis(List<Dis> univDis) {
		this.univDis = univDis;
	}

	public Spec getSpec() {
		return spec;
	}

	public void setSpec(Spec spec) {
		this.spec = spec;
	}

	public Univ getUniversity() {
		return university;
	}

	public void setUniversity(Univ university) {
		this.university = university;
	}

	public void setUnivService(UnivService univService) {
		this.univService = univService;
	}
	
	public Map<String, Object> getSpecMap() {
		return specMap;
	}

	public Map<String, Object> getMajorMap() {
		return majorMap;
	}

	public Dis getDis() {
		return dis;
	}

	public void setDis(Dis dis) {
		this.dis = dis;
	}

	/**
	 * @return
	 * 根据ID查找学校
	 */
	public String queryUnivById(){
		this.university = univService.queryUnivById(this.university.getUnivCode());
		this.univDis = univService.queryDisOfUniv(this.university.getUnivCode());
		return "college";
	}
	
	public String querySpecOfUniv(){
		List<Spec> list = univService.querySpecOfUniv(this.university.getUnivCode(),this.dis.getDisCode());
		specMap.put("rows", list);
		return "specMap";
	}
	
	public String queryMajorOfUniv(){
		List<Major> list = univService.queryMajorOfUniv(this.university.getUnivCode(),this.spec.getSpecCode());
		majorMap.put("rows", list);
		return "majorMap";
	}
	
}