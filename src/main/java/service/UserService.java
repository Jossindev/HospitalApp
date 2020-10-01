package service;

import exception.RuntimeSQLException;
import model.dao.RoleDAOImpl;
import model.dao.UserDAOImpl;
import model.database.TransactionManager;
import model.entity.User;
import utils.factory.DaoFactory;
import utils.factory.DaoFactoryImpl;

import java.util.List;



public class UserService {
    private static DaoFactory daoFactory = DaoFactoryImpl.getInstance();
    private static UserDAOImpl userDao = daoFactory.createUserDao();
    private static RoleDAOImpl roleDao = daoFactory.createRoleDao();

    private UserService() {

    }

    public static void registerUser(User user) {
        try {
            user.setPassword(user.getPassword());
            TransactionManager.beginTransaction();
            userDao.addUser(user);
            TransactionManager.commitTransaction();

        } catch (RuntimeSQLException e) {
            e.printStackTrace();
            TransactionManager.rollbackTransaction();
            throw e;
        }
    }

    public static User getUserById(int userId) {
        try {
            TransactionManager.beginTransaction();
            User user = userDao.findById(userId);
            TransactionManager.commitTransaction();
            return user;
        } catch (RuntimeSQLException e) {
            e.printStackTrace();
            TransactionManager.rollbackTransaction();
            throw e;
        }
    }

    public static void signIn(String login, String password) {
            User user = userDao.findByEmailAndPass(login, password);
    }

    public static List<User> getAllUsers() {
        return userDao.findAll();
    }


}
