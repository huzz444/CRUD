package com.huzz.crud.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author Huzz
 * @since 2020-10-10
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("tb_user")
public class User {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    @TableField
    private String name;

    @TableField
    private String sex;

    @TableField
    private String age;

    @TableField
    private String email;


}
