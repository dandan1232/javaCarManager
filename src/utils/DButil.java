package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author: 念安
 * @date: 2024-11-16 13:48
 * @description: 用于jdbc连接数据库
 */
public class DButil {
    private String DBurl = "jdbc:mysql://localhost:3306/carsystem";
    private String DBusername = "root";
    private String DBpassword = "ldd123789dd";
    private String jdbcName = "com.mysql.cj.jdbc.Driver";

    /**
     * 获取数据库连接
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public Connection getCon() throws ClassNotFoundException, SQLException {
        Class.forName(jdbcName);
        Connection connection = DriverManager.getConnection(DBurl,DBusername,DBpassword);
        return connection;
    }

    /**
     * 关闭数据库连接
     */
    public void closeConnection(Connection connection) throws SQLException {
        if(connection!=null){
            connection.close();
        }
    }

    /**
     * test connect
     * @param args
     */
    public static void main(String[] args) {
        DButil dButil = new DButil();
        try {
            dButil.getCon();
            System.out.println("数据库连接成功");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("数据库连接失败");
            e.printStackTrace();
        }
    }
}
