package com.bjit.shopbackend.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bjit.shopbackend.model.Category;


@Repository("categoryDAO")
public class CategoryDAOImp implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	
	
	static {
		
		Category cat = new Category();
		
		cat.setId(1);
		cat.setName("BRA");
		cat.setDescription("Women's above waist innerware");
		cat.setImageUrl("CAT_1.png");
		categories.add(cat);
		
        cat = new Category();
		
		cat.setId(2);
		cat.setName("THONG");
		cat.setDescription("Women's waist down innerware");
		cat.setImageUrl("CAT_2.png");
		categories.add(cat);
		
        cat = new Category();
		
		cat.setId(3);
		cat.setName("PANTIES");
		cat.setDescription("Women's private innerware");
		cat.setImageUrl("CAT_3.png");
		categories.add(cat);
		
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}
	
	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		for(Category category : categories) {
			if(category.getId() == id) return category;	
		}
		return null;
		
	}

}
