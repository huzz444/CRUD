package com.huzz.crud.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.huzz.crud.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Date;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Huzz
 * @since 2020-10-10
 */
public interface UserService extends IService<User> {

    public Page<User> listUsers(String likeName, Integer pageNum, Integer pageSize);

    public void updateUser(Integer id, String name, String sex, String age, String email);
}
