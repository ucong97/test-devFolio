package com.sbs.devFolio.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.devFolio.dto.Article;

@Mapper
public interface ArticleDao {

	public void addArticle(Map<String, Object> param);

	public Article getArticle(@Param("id") int id);

	public void modifyArticle(Map<String, Object> param);

}
