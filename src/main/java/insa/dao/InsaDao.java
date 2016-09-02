package insa.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("InsaDao")
public class InsaDao {


	@Autowired
	private SqlSessionTemplate session;
	
	public int login(String loginId, String loginPw) {
		int result = 8;
		
		if(loginId == null){
			return -1;
		}
		
		Map<String, String> map = new HashMap<String, String> ();
        map.put("loginId" , loginId);
        map.put("loginPw", loginPw);
        
		String tempPass = session.selectOne("loginInfo.login", map);
		
		if(tempPass == null){
			result = -1;
		}else if(tempPass.equals(loginPw)){
			result = 1;
		}else{
			result = 0;
		}
		return result;
	}


}
