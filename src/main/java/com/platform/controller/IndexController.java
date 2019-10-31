package com.platform.controller;

import com.gao.common.ServiceResult;
import com.platform.entity.system.UserInfo;
import com.platform.service.system.UserInfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/")
@Slf4j
public class IndexController extends AbstractController{

	@Resource
	private UserInfoService userInfoService;

	@RequestMapping(method=RequestMethod.GET,value= {"login.html",""})
	public String login(HttpServletRequest request,Map<String, Object> modelMap)  throws Exception {

		return "login";
	}

	@RequestMapping(method=RequestMethod.GET,value= {"index.html",""})
	public String indexView(HttpServletRequest request,Map<String, Object> modelMap)  throws Exception {
		String vid = "19f7b26001d04f35afa6c61c23d5c539";
		String nickName = "";
		ServiceResult<UserInfo> parentResult = userInfoService.getById(1L);
		if (!parentResult.getSuccess()) {
			log.error("失败！");
		}else{
			UserInfo parentUser = parentResult.getResult();
			nickName = parentUser.getNickName();
		}
		modelMap.put("vid",vid);
		modelMap.put("nickName",nickName);
		return "index";
	}

	@RequestMapping(method=RequestMethod.GET,value= {"firePre.html",""})
	public String firePre(HttpServletRequest request,Map<String, Object> modelMap)  throws Exception {

		return "firePre";
	}

	@RequestMapping(method=RequestMethod.GET,value= {"overview.html",""})
	public String overview(HttpServletRequest request,Map<String, Object> modelMap)  throws Exception {

		return "overview";
	}

}
