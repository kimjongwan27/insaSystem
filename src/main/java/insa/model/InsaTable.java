package insa.model;

import java.util.Date;

public class InsaTable {
	private String emp_info;
	private String name;
	private String lang_skill;
	private String grade;
	private String reference;
	private String field_exp;
	private String address;
	private String phone;
	private String email;
	private String degree;
	private String kosa_yn;
	private String certif_yn;
	private Date dob;
	//검색, 페이징 위한 변수들
	private String search;
	private String keyword;
	private String startRow;
	private String endRow;
	
	public String getEmp_info() {
		return emp_info;
	}
	public void setEmp_info(String emp_info) {
		this.emp_info = emp_info;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLang_skill() {
		return lang_skill;
	}
	public void setLang_skill(String lang_skill) {
		this.lang_skill = lang_skill;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public String getField_exp() {
		return field_exp;
	}
	public void setField_exp(String field_exp) {
		this.field_exp = field_exp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getKosa_yn() {
		return kosa_yn;
	}
	public void setKosa_yn(String kosa_yn) {
		this.kosa_yn = kosa_yn;
	}
	public String getCertif_yn() {
		return certif_yn;
	}
	public void setCertif_yn(String certif_yn) {
		this.certif_yn = certif_yn;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getStartRow() {
		return startRow;
	}
	public void setStartRow(String startRow) {
		this.startRow = startRow;
	}
	public String getEndRow() {
		return endRow;
	}
	public void setEndRow(String endRow) {
		this.endRow = endRow;
	}
}