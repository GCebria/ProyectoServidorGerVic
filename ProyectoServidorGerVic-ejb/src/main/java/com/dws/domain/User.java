/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dws.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Objects;


/**
 *
 * @author Gerard
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    private String idUser;
    private String nombre;
    private String email;
    private String password;
    private ArrayList<Cancion> canciones;

    public User(String idUser, String nombre, String email, String password, ArrayList<Cancion> canciones) {
        this.idUser = idUser;
        this.nombre = nombre;
        this.email = email;
        this.password = password;
        this.canciones = canciones;
    }

    

    public User() {
    }

   

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public ArrayList<Cancion> getCanciones() {
        return canciones;
    }

    public void setCanciones(ArrayList<Cancion> canciones) {
        this.canciones = canciones;
    }
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 73 * hash + Objects.hashCode(this.idUser);
        return hash;
    }

    //Override hashCode id
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        return true;
    }

    //Override String

    @Override
    public String toString() {
        return "User{" + "idUser=" + idUser + ", nombre=" + nombre + ", email=" + email + ", password=" + password + ", canciones=" + canciones + '}';
    }
    
    
    
    
    
}
