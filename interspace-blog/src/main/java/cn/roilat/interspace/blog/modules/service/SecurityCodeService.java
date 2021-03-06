package cn.roilat.interspace.blog.modules.service;

/**
 * @author roilat-J on 2015/8/14.
 */
public interface SecurityCodeService {
	/**
	 * 生成验证码
	 * 
	 * @param key
	 * @param target : email mobile
	 * @return
	 */
	String generateCode(String key, int type, String target);

	/**
	 * 检验验证码有效性
	 * 
	 * @param key
	 * @param code
	 * @return token
	 */
	boolean verify(String key, int type, String code);
}
