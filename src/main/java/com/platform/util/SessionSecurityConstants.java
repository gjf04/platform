package com.platform.util;

/**
 * Created by gaojingfei on 2017/11/22.
 */
public class SessionSecurityConstants {
    /**
     * Session存放的用戶登录名
     */
    public static final String KEY_USER_NAME = "_user_name";
    /**
     * Session中存放的用户真实姓名
     */
    public static final String KEY_USER_NICK_NAME = "_user_nick_name";
    /**
     * Session存放的用户id
     */
    public static final String KEY_USER_ID = "_user_id";
    /**
     * 用户授权信息
     */
    public static final String KEY_AUTHENTICATION = "_user_authentication";
    /**
     * 是否修改过默认密码，是否密码过期
     */
    public static final String KEY_PASSWORD_TIP = "_password_tip_flag";
    /**
     * 上次登录ip
     */
    public static final String KEY_LAST_LOGIN_IP = "_user_last_login_ip";
    /**
     * 上次访问url
     */
    public static final String KEY_LAST_VISIT_URL = "_user_last_visit_url";
    /**
     * 验证码
     */
    public static final String KEY_CHECKCODE = "checkCode";
    /**
     * 客户端语言
     */
    public static final String KEY_LOCAL_LANGUAGE = "WW_TRANS_I18N_LOCALE";

    /**
     * Session存放的app用戶登录名
     */
    public static final String KEY_USER_NAME_APP = "_user_name_app";
    /**
     * Session中存放的app用户真实姓名
     */
    public static final String KEY_USER_NICK_NAME_APP = "_user_nick_name_app";
    /**
     * Session存放的app用户id
     */
    public static final String KEY_USER_ID_APP = "_user_id_app";
}
