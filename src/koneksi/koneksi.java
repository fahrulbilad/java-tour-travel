/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import tourtravel.login;

/**
 *
 * @author Velinda
 */
public class koneksi {
    public static Connection con;
    public static Statement stm;
    private static login loginpetugas;
    
    public koneksi(){
        try {
            String url ="jdbc:mysql://localhost/tour_travel";
            String user="root";
            String pass="";
            con = DriverManager.getConnection(url, user, pass);
            stm = con.createStatement();
            System.out.println("koneksi berhasil");
        } catch (Exception e){
            System.err.println("koneksi gagal"+e.getMessage());
        }
    }
    
    public login getLoginpetugas() {
        return loginpetugas;
    }

    public void setLoginpetugas(String kd_petugas,String nama_petugas,String alamat,String no_hp,String user,String pass) {
        this.loginpetugas = new login(kd_petugas,nama_petugas,alamat,no_hp,user,pass);
    }
}
