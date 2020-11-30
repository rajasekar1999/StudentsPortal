package admin;

public class ViewQuery {
	private String rollnumber;
	private int semester;
	private float cgpa1;
	private float cgpa2;
	private String sort;
	
	public String getRollnumber() {
		return rollnumber;
	}
	public void setRollnumber(String rollnumber) {
		this.rollnumber = rollnumber;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public float getCgpa1() {
		return cgpa1;
	}
	public void setCgpa1(float cgpa1) {
		this.cgpa1 = cgpa1;
	}
	public float getCgpa2() {
		return cgpa2;
	}
	public void setCgpa2(float cgpa2) {
		this.cgpa2 = cgpa2;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
}
