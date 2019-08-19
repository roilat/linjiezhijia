/*
+--------------------------------------------------------------------------
|   blog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package cn.roilat.linjiezhijia.blog.core.persist.dao;

import cn.roilat.linjiezhijia.blog.core.persist.dao.custom.PostDaoCustom;
import cn.roilat.linjiezhijia.blog.core.persist.entity.PostPO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.Collection;
import java.util.List;

/**
 * @author roilat-D
 *
 */
public interface PostDao extends JpaRepository<PostPO, Long>, JpaSpecificationExecutor<PostPO>, PostDaoCustom {
	/**
	 * 查询指定用户
	 * @param pageable
	 * @param authorId
	 * @return
	 */
	Page<PostPO> findAllByAuthorIdOrderByCreatedDesc(Pageable pageable, long authorId);

	// findLatests
	List<PostPO> findTop10ByOrderByCreatedDesc();

	// findHots
	List<PostPO> findTop10ByOrderByViewsDesc();

	List<PostPO> findAllByIdIn(Collection<Long> id);

	List<PostPO> findTop5ByFeaturedGreaterThanOrderByCreatedDesc(int featured);

	@Query("select coalesce(max(weight), 0) from PostPO")
	int maxWeight();
	
}