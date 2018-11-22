package cn.zzpigt.bean;

public class QueryVo {

	//用户表和用户验证码
	private User user;
	private String code;
	//表格当前页数和每页条数
	private Integer pageNum;
	private Integer pageSize;
	//部门表
	private Department department;
	
	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "QueryVo [user=" + user + ", code=" + code + "]";
	}

}
