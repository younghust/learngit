package DAO;

import VO.User;

public interface IUserDAO {
	//接口不用实现函数也没有函数体,只有名字,所以不用打括号.
	public boolean findLogin(User user)throws Exception;
	public boolean register(User user) throws Exception;
	public boolean findGrade(User user) throws Exception;
	public boolean modifyInfo(User user)throws Exception;
}
