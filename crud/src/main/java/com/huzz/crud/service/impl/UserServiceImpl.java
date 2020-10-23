package com.huzz.crud.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.huzz.crud.entity.User;
import com.huzz.crud.mapper.UserMapper;
import com.huzz.crud.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Huzz
 * @since 2020-10-10
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Page<User> listUsers(String likeName, Integer pageNum, Integer pageSize) {
        //按照传入的参数，进行分页查询
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();

        //判断模糊查询是否为空，如果不为空，则拼接模糊查询条件
        if(likeName!=null && !"".equals(likeName)){
            userQueryWrapper.like("name","%"+likeName+"%");
        }

        //封装分页对象
        Page<User> userPage = new Page<>();

        //设置页面大小
        userPage.setSize(pageSize);
        //设置页码
        userPage.setCurrent(pageNum);
        //page对象，就是分页结果!!!
        //这里的分页，在底层发送的sql语句中，并没有拼接，而是基于内存进行分页，这个并不合理
        //mybatis，就是默认基于内存进行分页
        //应该修改为物理分页：  LIMIT(1,10)

        Page<User> Page = userMapper.selectPage(userPage, userQueryWrapper);

        return Page;
    }

    @Override
    public void updateUser(Integer id, String name, String sex, String age, String email) {
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setSex(sex);
       // user.setAge(age);
        user.setEmail(email);

        this.updateById(user);
        //更新
       int x = userMapper.updateById(user);

        System.out.println("x的值是：");
        System.out.println(x);
    }
}
