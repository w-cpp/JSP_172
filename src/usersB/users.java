package usersB;

import java.util.HashMap;

public class users{
    static HashMap<String, String> users = new HashMap<>();//内存数据库
    static{
        users.put("admin","123456");
        users.put("tom","123");
        users.put("cat","456");
    }
    public static boolean register(String name, String pass) {//注册
        if (users.containsKey(name) || name.trim().isEmpty()) {
System.err.print("false");
            return false;
        }
        users.put(name, pass);
        System.err.print("succesful");
        return true;
    }

    public static boolean login(String user, String pass) {
        if (users.get(user) == null) {
            System.err.println("用户名不存在");
            return false;
        }
        if (!users.get(user).equals(pass)) {
            System.err.println("密码错误");
            return false;
        }
        System.err.println("登录成功");
        return true;
    }

    public static boolean updatePassword(String name, String oldPass, String newPass) {
if(!login(name,oldPass)){
    System.err.print("false1");
    return false;
}
users.put(name,newPass);
return true;
    }


    public static void main(String[] args) {
register("anna","1111");
login("tom","123");

    }


}