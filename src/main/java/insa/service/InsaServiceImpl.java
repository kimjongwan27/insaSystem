package insa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import insa.dao.InsaDao;
import insa.model.LoginInfo;

@Service
public class InsaServiceImpl implements InsaService{

	@Autowired
	private InsaDao id;
	
	public int login(String loginId, String loginPw) {
		return id.login(loginId, loginPw);
	}

}
