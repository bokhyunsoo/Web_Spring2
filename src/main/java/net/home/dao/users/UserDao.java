package net.home.dao.users;

import net.home.domain.users.User;

public interface UserDao {

	User findById(String userId);

	void create(User user);

	void update(User user);

}