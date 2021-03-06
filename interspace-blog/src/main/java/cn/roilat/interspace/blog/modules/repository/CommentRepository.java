package cn.roilat.interspace.blog.modules.repository;

import java.util.Collection;
import java.util.List;

import cn.roilat.interspace.blog.modules.entity.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author roilat-J
 */
public interface CommentRepository extends JpaRepository<Comment, Long>, JpaSpecificationExecutor<Comment> {
	Page<Comment> findAll(Pageable pageable);

	Page<Comment> findAllByPostId(Pageable pageable, long postId);

	Page<Comment> findAllByAuthorId(Pageable pageable, long authorId);

	List<Comment> removeByIdIn(Collection<Long> ids);

	List<Comment> removeByPostId(long postId);

	long countByAuthorIdAndPostId(long authorId, long postId);
}
