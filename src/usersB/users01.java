package usersB;

import jdk.dynalink.beans.StaticClass;

import java.sql.*;
import java.util.HashMap;

public class users01{

   static Connection conn = null;
 static    Statement stmt = null;//向数据库发一个待执行的sql语句；
     static ResultSet rs = null;//数据库结果集的数据表，通常通过执行查询数据库的语句生成。

    static {
        try {
            // 加载驱动类

            Class.forName("com.mysql.jdbc.Driver");
            // 建立连接
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test01",
                    "root", "123456");
            // 创建Statement对象
            stmt = conn.createStatement();


        } catch (Exception e) {
            e.printStackTrace();
        }

        // 执行SQL语句


        //
    }
    public static boolean executeQuery(String sql) {
        try {
            ResultSet rs = stmt.executeQuery(sql);
           if(rs.next()){
               return true;
           }
           else {
               return false;
           }
        } catch (SQLException e) {
           return false;
        }

    }
    public static boolean executeUpdate(String sql) {
        try {
            int rs = stmt.executeUpdate(sql);//返回值为int
            if(rs>0){
                return true;
            }
            else {
                return false;
            }
        } catch (SQLException e) {
            return false;
        }

    }
    public static boolean register(String name, String pass) {//注册
String sql=String.format("select 1 from user where name='%s' LIMIT 1",name);
        boolean result = executeQuery(sql);
       boolean result1=true;
        if (result) {
           System.err.print("用户名已存在！");
           return false;
        } else {
            String sql1=String.format("insert into user(name,password) VALUE('%s','%s')",name,pass);
            //String sql1="insert into user(name,password) VALUE('" + name + "','" + pass + "')";
            System.err.print(sql1);
            result1= executeUpdate(sql1);
            if(result1){
                System.err.print("register success");

            }
            else {
                System.err.print("register false");
            }

        }
        return result1;
    }



    public static boolean login(String user, String pass) {
        String sql＿select = String.format("select  * from user where name='%s' and password='%s' LIMIT 1", user, pass);//

        /*int flag=9;
        try {
            ResultSet rs = stmt.executeQuery(sql＿select);//createstatement


            if (rs.next()) {
                System.err.println("登录成功,user=" + user + ",pass=" + pass);
                flag=1;

            } else {
                System.err.println("登陆失败,user=" + user + ",pass=" + pass);
                flag=0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
if(flag==1)
    return true;
return false;

    }*/
        boolean result = executeQuery(sql＿select);
        if (result) {
            System.err.println("登录成功,user=" + user + ",pass=" + pass);
        } else {
            System.err.println("登录失败,user=" + user + ",pass=" + pass);
        }
        return result;
    }






    public static boolean updatePassword(String name, String oldPass, String newPass) {
        boolean result2=true;
        if(login(name,oldPass)){
            System.err.print("可以登陆，账号密码正确！！");
            String sql_update=String.format("Update user set password='%s' ",newPass);
             result2=executeUpdate(sql_update);
             if(result2){
                 System.err.print("修改成功！！");
             }
             else {
                 System.err.print("修改失败！！");

             }
        }
        return result2;


    }


    public static void main(String[] args) {
login("tom","123");
register("ss","55");

    }


}