package com.jeff.model;
// Generated 2016-11-20 16:51:05 by Hibernate Tools 4.0.1.Final

/**
 * Spec generated by hbm2java
 */
public class Spec implements java.io.Serializable {

	private String specCode;
	private String disCode;
	private String specName;
	private String specIntro;

	public Spec() {
	}

	public Spec(String specCode) {
		this.specCode = specCode;
	}

	public Spec(String specCode, String disCode, String specName, String specIntro) {
		this.specCode = specCode;
		this.disCode = disCode;
		this.specName = specName;
		this.specIntro = specIntro;
	}

	public String getSpecCode() {
		return this.specCode;
	}

	public void setSpecCode(String specCode) {
		this.specCode = specCode;
	}

	public String getDisCode() {
		return this.disCode;
	}

	public void setDisCode(String disCode) {
		this.disCode = disCode;
	}

	public String getSpecName() {
		return this.specName;
	}

	public void setSpecName(String specName) {
		this.specName = specName;
	}

	public String getSpecIntro() {
		return this.specIntro;
	}

	public void setSpecIntro(String specIntro) {
		this.specIntro = specIntro;
	}

}
