package com.platform.entity.system;

import com.platform.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 用户实体类
 * Created by GaoJingFei on 2017/11/13.
 */
@ToString(callSuper=true)
@Getter
@Setter
public class DeviceInfo extends BaseEntity{

    /**
	 * 
	 */
	private static final long serialVersionUID = -1649691620709788307L;

	private String type;

    private String serialNo;

    private String name;

    private Integer status;

    private String ip;

    private Long departmentId;

    private String departmentName;

    private Long parentId;

    private String parentNickName;

    public static enum StatusEnum{
        INIT(0),ENABLE(1),OFFLINE(2),WARN(3);
        @Getter
        private Integer status;
        private StatusEnum(Integer status) {
            this.status = status;
        }
    }

}