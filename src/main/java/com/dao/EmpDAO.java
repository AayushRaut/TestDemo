package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Employee;
import com.model.Login;
import com.model.Student;

public class EmpDAO {
	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public boolean saveDataEmp(Employee emp) {
		String query = "insert into employee(empName,empAddress,empEmail,empGender,empPhone,empdob,password,role) values(?,?,?,?,?,?,?,?)";
		return template.execute(query, (PreparedStatement ps) -> {
			ps.setString(1, emp.getEmpName());
			ps.setString(2, emp.getEmpAddress());
			ps.setString(3, emp.getEmpEmail());
			ps.setInt(4, emp.getEmpGender());
			ps.setString(5, emp.getEmpPhone());
			ps.setString(6, emp.getEmpdob());
			ps.setString(7, emp.getPassword());
			ps.setString(8, "employee");
			return ps.execute();

		});
	}

	public boolean saveDataStu(Student stu) {
		String query = "insert into student(sName,sAddress,sGender,course,email,sDOB,sphone,password,role) values(?,?,?,?,?,?,?,?,?)";
		return template.execute(query, (PreparedStatement ps) -> {
			ps.setString(1, stu.getsName());
			ps.setString(2, stu.getsAddress());
			ps.setInt(3, stu.getsGender());
			ps.setString(4, stu.getCourse());
			ps.setString(5, stu.getEmail());
			ps.setString(6, stu.getsDOB());
			ps.setString(7, stu.getSphone());
			ps.setString(8, stu.getPassword());
			ps.setString(9, "student");
			return ps.execute();

		});
	}

	public List<Student> loginStudent(Login log) {

		List<Student> stu1 = template.query("select * from student where email = ? AND password = ?",
				(ResultSet rs, int row) -> {
					Student stu = new Student();
					stu.setSid(rs.getInt("sid"));
					stu.setsName(rs.getString("sName"));
					stu.setsAddress(rs.getString("sAddress"));
					stu.setsGender(rs.getInt("sGender"));
					stu.setCourse(rs.getString("course"));
					stu.setEmail(rs.getString("email"));
					stu.setsDOB(rs.getString("sDOB"));
					stu.setSphone(rs.getString("sphone"));
					stu.setPassword(rs.getString("password"));
					stu.setRole(rs.getString("role"));

					return stu;

				}, log.getEmail(), log.getPassword());

		return (stu1 != null) ? stu1 : null;

	}

	public List<Employee> loginEmployee(Login log) {
		
		List<Employee> em1 = template.query("select * from employee where empEmail = ? AND password = ?",
				(ResultSet rs, int row) -> {
					Employee em = new Employee();
					em.setEmpName(rs.getString("empName"));
					em.setEmpAddress(rs.getString("empAddress"));
					em.setEmpEmail(rs.getString("empEmail"));
					em.setEmpGender(rs.getInt("empGender"));
					em.setEmpPhone(rs.getString("empPhone"));
					em.setEmpdob(rs.getString("empdob"));
					em.setPassword(rs.getString("password"));
					em.setRole(rs.getString("role"));

					return em;

				}, log.getEmail(), log.getPassword());

		return (em1 != null) ? em1 : null;
	}

	public List<Employee> getAllEmployee() {
		return template.query("select * from employee", (ResultSet rs, int row) -> {
			Employee em = new Employee();
			em.setEmpid(rs.getInt("empid"));
			em.setEmpName(rs.getString("empName"));
			em.setEmpAddress(rs.getString("empAddress"));
			em.setEmpEmail(rs.getString("empEmail"));
			em.setEmpGender(rs.getInt("empGender"));
			em.setEmpPhone(rs.getString("empPhone"));
			em.setEmpdob(rs.getString("empdob"));
			em.setPassword(rs.getString("password"));
			em.setRole(rs.getString("role"));

			return em;

		});
	}

	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		return template.query("select * from student", (ResultSet rs, int row) -> {
			Student stu = new Student();
			stu.setSid(rs.getInt("sid"));
			stu.setsName(rs.getString("sName"));
			stu.setsAddress(rs.getString("sAddress"));
			stu.setsGender(rs.getInt("sGender"));
			stu.setCourse(rs.getString("course"));
			stu.setEmail(rs.getString("email"));
			stu.setsDOB(rs.getString("sDOB"));
			stu.setSphone(rs.getString("sphone"));
			stu.setPassword(rs.getString("password"));
			stu.setRole(rs.getString("role"));

			return stu;

		});
	}

	public int deleteEmp(int id) {
		String query = "delete from employee where empid=" + id + "  ";
		
		int r = template.update(query);
		return r;
		
	}
	
	public int deleteStd(int id) {
		String query = "delete from student where sid=" + id + "  ";
		
		int r = template.update(query);
		return r;
		
	}

	public Employee getEmpById(int id) {
		return template.queryForObject("select * from employee where empid = ?", (ResultSet rs, int row) -> {
			Employee em = new Employee();
			em.setEmpid(rs.getInt("empid"));
			em.setEmpName(rs.getString("empName"));
			em.setEmpAddress(rs.getString("empAddress"));
			em.setEmpEmail(rs.getString("empEmail"));
			em.setEmpGender(rs.getInt("empGender"));
			em.setEmpPhone(rs.getString("empPhone"));
			em.setEmpdob(rs.getString("empdob"));
			em.setPassword(rs.getString("password"));
			em.setRole(rs.getString("role"));

			return em;

		},id);
	}
	
	public Student getStuById(int id) {
		return template.queryForObject("select * from student where sid = ?", (ResultSet rs, int row) -> {
			Student stu = new Student();
			stu.setSid(rs.getInt("sid"));
			stu.setsName(rs.getString("sName"));
			stu.setsAddress(rs.getString("sAddress"));
			stu.setsGender(rs.getInt("sGender"));
//			stu.setCourse(rs.getString("course"));
			stu.setEmail(rs.getString("email"));
			stu.setsDOB(rs.getString("sDOB"));
			stu.setSphone(rs.getString("sphone"));
			stu.setPassword(rs.getString("password"));
			stu.setRole(rs.getString("role"));

			return stu;

		},id);
	}

	public int updateEmp(Employee emp) {

		String query = "update employee set empName = ?,empAddress = ?,empEmail = ?,empGender =?,empPhone = ?,empdob = ? where empid = ?";
		return template.update(query,emp.getEmpName(),emp.getEmpAddress(),emp.getEmpEmail(),emp.getEmpGender(),emp.getEmpPhone(),emp.getEmpdob(),emp.getEmpid());
	}

	public int updateStu(Student stu) {
		
		String query = "update student set sName = ?,sAddress = ?,sGender =?,course=?,email=?,sDOB=?,sphone=? where sid = ?";
		
		return template.update(query,stu.getsName(),stu.getsAddress(),stu.getsGender(),stu.getCourse(),stu.getEmail(),stu.getsDOB(),stu.getSphone(),stu.getSid());

	}

}
