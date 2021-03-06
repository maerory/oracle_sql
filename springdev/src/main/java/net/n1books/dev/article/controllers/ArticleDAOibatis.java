package net.n1books.dev.article.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

//@Repository("ibatis")
public class ArticleDAOibatis implements ArticleDAO 
{
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@Override
	public void insert(ArticleVO articleVO) throws Exception {
		sqlMap.insert("article.insert", articleVO);
	}

	@Override
	public List<ArticleVO> getArticleList() throws Exception {
		return sqlMap.queryForList("article.getArticleList");
	}

	@Override
	public ArticleVO getArticle(long no) throws Exception {
		return (ArticleVO) sqlMap.queryForObject("article.getArticle", no);
	}

	@Override
	public boolean delete(ArticleVO articleVO) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(ArticleVO articleVO) throws Exception {
		return sqlMap.update("article.update", articleVO) == 1;
	}

	@Override
	public boolean updateReadcount(long no) throws Exception {
		return sqlMap.update("article.updateReadcount", no) == 1;
	}

}
