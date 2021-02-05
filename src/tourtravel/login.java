/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tourtravel;

/**
 *
 * @author Velinda
 */
public class login {
    private String user,pass,kd_petugas,nama_petugas,alamat,no_hp;
    
    public login(String kd_petugas,String nama_petugas,String alamat,String no_hp,String user,String pass){
        this.kd_petugas = kd_petugas;
        this.nama_petugas = nama_petugas;
        this.alamat = alamat;
        this.no_hp = no_hp;
        this.user = user;
        this.pass = pass;
    }
    
    public String getID(){
        return kd_petugas;
    }
    
    public String getNama(){
        return nama_petugas;
    }
}
