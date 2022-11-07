/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User;
import dao.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext{
    public ArrayList<User> allUser() {
        ArrayList<User> UserList = new ArrayList<>();
        try {
            String sql="select * from [User]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                User users = new User();
                users.setName(rs.getString("name"));
                users.setPassword(rs.getString("password"));
                UserList.add(users);
            }
        } catch (Exception e) {
        }
        return UserList;
    }
    
}
