package com.nttdata;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class UserService {

		@Autowired
		private UserDao userDAO;
		
		public List<User> getUserList() {
			return userDao.getUserList();
		}

		public void createUser(User user) {
			userDAO.addUser(user);
		}
	}


