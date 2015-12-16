package BusinessInformation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class CompanyDAO {

	private Connection conn = null;
	  private PreparedStatement pstmt = null;
	 
	  private String insert = "insert into companyinf values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	  private String update = "update companyinf set companyname = ?, name = ?, adress = ?, phone= ?, department = ?, takecharge = ?, fax = ?, position = ?, writer = ?, email = ?, establishyear = ?, workernum = ?, researchernum = ?,"
	      		+ "bigsmall = ?, employeenum = ?, man = ?, woman = ?, overseas = ?, management = ?, technology = ?, production = ?, development = ?, totalmoney = ?, exportmoney = ?,"
			    + "income  = ?, developmentmoney = ?, etc = ?, major = ?, mainproduction = ?, patent = ?, patentregister = ?, utilitymodel = ?, nonpatent = ?, lawsuit = ? where companyname = ? and name = ?";
	  
	  public void connectionDB(){
		 
	      try {
	          Class.forName("com.mysql.jdbc.Driver");
	          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/malldb", 
	                                             "root", "apmsetup");
	          System.out.println("데이터베이스에 접속했습니다.");
	      }
	      catch (ClassNotFoundException cnfe) {
	          System.out.println("해당 클래스를 찾을 수 없습니다." + cnfe.getMessage());
	      }
	      catch (SQLException se) {
	          System.out.println(se.getMessage());
	      }
	  }
		
	  public void INorUP(BIBean bean, String sql){
			String query=null;
		    if(sql == "insert"){
		    	query=insert;
		    }else{
		    	query=update;
		    }
		    
			try{
			connectionDB();
			pstmt = conn.prepareStatement(query);    
			pstmt.setObject(1,bean.getCompanyname());
			pstmt.setObject(2,bean.getName());
			pstmt.setObject(3,bean.getAdress()); 
			pstmt.setObject(4,bean.getPhone());
			pstmt.setObject(5,bean.getDepartment());
			pstmt.setObject(6,bean.getTakecharge());
			pstmt.setObject(7,bean.getFax());
			pstmt.setObject(8,bean.getPosition());
			pstmt.setObject(9,bean.getWriter());
			pstmt.setObject(10,bean.getEmail());
			pstmt.setObject(11,bean.getEstablishyear());
			pstmt.setObject(12,bean.getWorkernum());
			pstmt.setObject(13,bean.getResearchernum());
			pstmt.setObject(14,bean.getBigsmall());
			pstmt.setObject(15,bean.getEmployeenum());
			pstmt.setObject(16,bean.getMan());
			pstmt.setObject(17,bean.getWoman());
			pstmt.setObject(18,bean.getOverseas());
			pstmt.setObject(19,bean.getManagement());
			pstmt.setObject(20,bean.getTechnology());
			pstmt.setObject(21,bean.getProduction());
			pstmt.setObject(22,bean.getDevelopment());
			pstmt.setObject(23,bean.getTotalmoney());
			pstmt.setObject(24,bean.getExportmoney());
			pstmt.setObject(25,bean.getIncome());
			pstmt.setObject(26,bean.getDevelopmentmoney());
			pstmt.setObject(27,bean.getEtc());
			pstmt.setObject(28,bean.getMajor());
			pstmt.setObject(29,bean.getMainproduction());		
			pstmt.setObject(30,bean.getPatent());	
			pstmt.setObject(31,bean.getPatentregister());		
			pstmt.setObject(32,bean.getUtilitymodel());
			pstmt.setObject(33,bean.getNonpatent());			
			pstmt.setObject(34,bean.getLawsuit());
			if(sql == "insert"){
				pstmt.executeUpdate(); 
		    }else{
		    	pstmt.setObject(35,bean.getCompanyname());
				pstmt.setObject(36,bean.getName());
				pstmt.executeUpdate(); 
		    }
			                                  

			}catch(Exception e){                                                   
			e.printStackTrace();
			System.out.println("테이블에 새로운 레코드 추가에 실패했습니다.");
			
			}finally{                                                            
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}           
			if(conn != null) try{conn.close();}catch(SQLException sqle){}           
			}
		}
	  
	  public boolean delete(String CoN, String Na){	 
		    
		  boolean flag = false;
		  
		  try {
		      
		      connectionDB();
		     
		      String query = "delete from companyinf where companyname = ? and name = ?";
		      pstmt = conn.prepareStatement(query);
		      pstmt.setObject(1,CoN);
		      pstmt.setObject(2,Na);
		     
		      if(pstmt.executeUpdate()==1){
		    	flag=false;  
		      }else{
		    	  flag=true;
		      }
		 
		      
		      pstmt.close();
		      conn.close();

		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception! ");
		      System.err.println(e.getMessage());
		    }
		   return flag;
		  }
	  
	  public Vector select(String CoN, String Na){
		  
		
		  Vector vlist = new Vector();
		  
		  try
		    {
		    
			  connectionDB();
		      String query = "select*from companyinf where companyname = '"+CoN+"' and name = '"+Na+"'";
		 
		      
		      pstmt = conn.prepareStatement(query);
		       
		      
		      ResultSet rs = pstmt.executeQuery(query);
		  
		      /* rs.last();
		      int nRecord = rs.getRow();
		      rs.beforeFirst(); 
		      System.out.println(nRecord);
              db검색시 총 행의 개수 구하기 */
              
		      while (rs.next())
		      {
		    	BIBean bean = new BIBean();
		    	bean.setCompanyname(rs.getString("companyname"));
		    	bean.setName(rs.getString("name"));
		    	bean.setAdress(rs.getString("adress"));
		    	bean.setPhone(rs.getString("phone"));
		    	bean.setDepartment(rs.getString("department"));
		    	bean.setTakecharge(rs.getString("takecharge"));
		    	bean.setFax(rs.getString("fax"));
		    	bean.setPosition(rs.getString("position"));
		    	bean.setWriter(rs.getString("writer"));
		    	bean.setEmail(rs.getString("email"));
		    	
		    	bean.setEstablishyear(rs.getInt("establishyear"));
		    	bean.setWorkernum(rs.getInt("workernum"));
		    	bean.setResearchernum(rs.getInt("researchernum"));
		    	
		    	bean.setBigsmall(rs.getString("bigsmall"));
		    	
		    	bean.setEmployeenum(rs.getInt("employeenum"));
		    	bean.setMan(rs.getInt("man"));
		    	bean.setWoman(rs.getInt("woman"));
		    	bean.setOverseas(rs.getInt("overseas"));
		    	bean.setManagement(rs.getInt("management"));
		    	bean.setTechnology(rs.getInt("technology"));
		    	bean.setProduction(rs.getInt("production"));
		    	bean.setDevelopment(rs.getInt("development"));
		    	bean.setTotalmoney(rs.getInt("totalmoney"));
		    	bean.setExportmoney(rs.getInt("exportmoney"));
		    	bean.setIncome(rs.getInt("income"));
		    	bean.setDevelopmentmoney(rs.getInt("developmentmoney"));
		    	bean.setEtc(rs.getInt("etc"));
		    	
		    	bean.setMajor(rs.getString("major"));
		    	bean.setMainproduction(rs.getString("mainproduction"));
		    	
		    	bean.setPatent(rs.getInt("patent"));
		    	bean.setPatentregister(rs.getInt("patentregister"));
		    	bean.setUtilitymodel(rs.getInt("utilitymodel"));
		    	bean.setNonpatent(rs.getInt("nonpatent"));
		    	bean.setLawsuit(rs.getInt("lawsuit"));
		    	
		    	vlist.add(bean);
		    	
		      }
		      pstmt.close();
		      conn.close();
		    }
		    catch (Exception e)
		    {
		      System.err.println("Got an exception! ");
		      System.err.println(e.getMessage());
		    }
		  
		  return vlist;
		  }
		
}
