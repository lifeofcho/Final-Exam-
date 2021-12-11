package com.mycom.myapp.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycom.myapp.board.BoardVO;

@Repository
public class UserDAO 
{	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo)
	{
		return sqlSession.selectOne("User.getUser", vo);
	}
	
	public int signup(UserVO vo)
	{	
		int result = sqlSession.insert("User.signup", vo);
		return result;
	}
}
