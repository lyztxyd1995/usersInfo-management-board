package com.damu.dao;

import com.damu.entity.Users;
import com.damu.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class UserDao {
    private SqlSession sqlSession;
    public List<Users> list;
    private Users user;
    private SqlSession getSession(){
        sqlSession = SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }
    public List<Users> findAll(){
        try {
            list = getSession().selectList("findUsers");
        } catch (Exception e){
            e.printStackTrace();
        } finally{
            sqlSession.close();
        }
        return list;
    }

    public Users findById(Integer id){
        try {
            user = getSession().selectOne("findUsers", new Users(id));
        } catch (Exception e){
            e.printStackTrace();
        } finally{
            sqlSession.close();
        }
        return user;
    }

    public Users addUser(Users user){
        try {
            getSession().insert("addUser", user);

            sqlSession.commit();

        } catch (Exception e){
            e.printStackTrace();
        } finally{
            sqlSession.close();
        }
        return user;
    }

    public Users updateUsers(Users user){
        try {
            getSession().update("updateUser", user);

            sqlSession.commit();

        } catch (Exception e){
            e.printStackTrace();
        } finally{
            sqlSession.close();
        }
        return user;
    }

    public void delUsers(Integer id){
        try {
            getSession().delete("delUser", id);

            sqlSession.commit();

        } catch (Exception e){
            e.printStackTrace();
        } finally{
            sqlSession.close();
        }
    }

}
