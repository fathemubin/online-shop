package com.bjit.shopbackend.dao;

import java.util.List;

import com.bjit.shopbackend.model.Category;

public interface CategoryDAO {

	List<Category> list();
	Category get(int id);
}
