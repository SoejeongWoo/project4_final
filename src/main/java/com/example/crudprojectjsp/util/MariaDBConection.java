package com.example.crudprojectjsp.util;

import java.sql.Connection;

public class MariaDBConection {
    public static Connection getConnection(){
        Connection conn = null;

        Class.formName(Classname: "org.mariadb.jdbc.Driver");
    }catch (ClassFoundException e){
        System.out.println("드라이버 로드 오류!");
    }
}
