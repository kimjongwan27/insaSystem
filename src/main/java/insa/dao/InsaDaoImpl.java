package insa.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import insa.model.LoginInfo;

@Repository
public class InsaDaoImpl implements InsaDao{

	@Autowired
	private SqlSessionTemplate session;
	
	public int login(LoginInfo log) {
		int result = 8;
		String tempPass = session.selectOne("loginInfo.login", log);
		if(tempPass == null){
			result = -1;
		}else if(tempPass.equals(log.getPassword())){
			result = 1;
		}else{
			result = 0;
		}
		return result;
	}

}
