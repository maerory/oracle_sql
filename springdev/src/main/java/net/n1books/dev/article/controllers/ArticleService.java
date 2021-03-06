package net.n1books.dev.article.controllers;

import java.util.List;

public interface ArticleService {

	void insert(ArticleVO articleVO) throws Exception;

	List<ArticleVO> getArticleList() throws Exception;

	ArticleVO getArticle(long no) throws Exception;

	void delete(ArticleVO articleVO) throws Exception;

	void update(ArticleVO articleVO) throws Exception;

	void updateReadcount(long no) throws Exception;

	List<ArticleVO> getArticlePageList(long pg) throws Exception;

	long getTotalArticle() throws Exception;

	long getTotalPage(long totalArticle) throws Exception;

	long getStartPage(long pg) throws Exception;

	long getEndPage(long pg, long totalPage) throws Exception;

}
