package kz.bitlab.techorda.db;

import kz.bitlab.techorda.entity.BitlabShop;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection1 {
    private static Connection connection;
    static{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(
                    "jdbc:mysql://localhost:8889/techorda_db",
                    "root",
                    "root");
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
    public static ArrayList<BitlabShop> getBitlabShop(){
        ArrayList<BitlabShop> shop = new ArrayList<>();
        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items");
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                BitlabShop shop1 = new BitlabShop();
                shop1.setId(resultSet.getLong("id"));
                shop1.setName(resultSet.getString("name"));
                shop1.setDescription(resultSet.getString("description"));
                shop1.setPrice(resultSet.getDouble("price"));
                shop.add(shop1);
            }
            statement.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return shop;
    }
    public static void addBitlabShop(BitlabShop shop1){
        try{
            PreparedStatement statement = connection.prepareStatement("INSERT INTO books (id,name,description,deadlineDate) " +
                    "VALUES (?,?,?,?,?)");

            statement.setLong(1, shop1.getId());
            statement.setString(2,shop1.getName());
            statement.setString(3,shop1.getDescription());
            statement.setDouble(4,shop1.getPrice());

            statement.executeUpdate();
            statement.close();

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}

