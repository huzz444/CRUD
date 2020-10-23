package com.huzz.crud.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.huzz.crud.entity.User;
import com.huzz.crud.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.thymeleaf.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Huzz
 * @since 2020-10-10
 */
@Controller("/")

public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }

    @ResponseBody
    @RequestMapping("/selectAll")
    public Map<String, Object> selectAll(@RequestParam(defaultValue = "",required = false) String likeName,
                                         @RequestParam(defaultValue = "1",required = false) Integer page,
                                         @RequestParam(defaultValue = "10",required = false) Integer limit){

        //分页
        Page<User> userPage = userService.listUsers(likeName,page,limit);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("code","0");
        map.put("msg","成功");
        map.put("count",userPage.getTotal());//总数
        map.put("data",userPage.getRecords());//数据
//        System.out.println(map);
        return map;
    }

    @ResponseBody
    @RequestMapping("/updateUser")
    public boolean updateUser(@RequestBody User user){
        System.out.println(user);
        //是否完成更新数据 是：true, 否： false
        return userService.updateById(user);
    }

    @ResponseBody
    @RequestMapping("/addUser")
    public boolean addUser(@RequestBody User addUser){
        System.out.println(addUser);

        return userService.save(addUser);
    }

    @ResponseBody
    @RequestMapping("/removeUser")
    public boolean removeUser(String id){

        return userService.removeById(id);
    }

}
