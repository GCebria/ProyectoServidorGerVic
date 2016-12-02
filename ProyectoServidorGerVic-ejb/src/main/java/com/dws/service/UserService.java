/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dws.service;

import com.dws.domain.Cancion;
import com.dws.domain.User;
import java.util.ArrayList;
import javax.ejb.Stateless;

/**
 *
 * @author Gerard
 */
@Stateless
public class UserService implements UserServiceLocal {
  private static ArrayList<User> users = new ArrayList();

    static {

        ArrayList<Cancion> biblioteca1 = new ArrayList();
        ArrayList<Cancion> biblioteca2 = new ArrayList();

        Cancion c1 = new Cancion(1, "Jenny Was a Friend of Mine", "Hot Fuss", "The Killers", 244, 2014, 0.99);
        Cancion c2 = new Cancion(2, "Mr.Brightside", "Hot Fuss", "The Killers", 222, 2014, 0.99);
        Cancion c3 = new Cancion(3, "Smile Like You Mean It", "Hot Fuss", "The Killers", 234, 2014, 0.99);
        Cancion c6 = new Cancion(6, "Andy, You're a Star", "Hot Fuss", "The Killers", 194, 2014, 0.99);
        Cancion c7 = new Cancion(7, "On Top", "Hot Fuss", "The Killers", 258, 2014, 0.99);
        Cancion c8 = new Cancion(8, "Change Your Mind", "Hot Fuss", "The Killers", 190, 2014, 0.99);

        biblioteca1.add(c1);
        biblioteca1.add(c2);
        biblioteca1.add(c3);
        biblioteca2.add(c6);
        biblioteca2.add(c7);
        biblioteca2.add(c8);

        User u1 = new User("1", "user1", "user1@gmail.com", "pass", biblioteca1);
        User u2 = new User("2", "user2", "user2@gmail.com", "pass", biblioteca2);
        users.add(u1);
        users.add(u2);
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public ArrayList listUsers() {
        return users;
    }

    @Override
    public User searchUser(String id) {
        User usuario = new User();
        boolean encontrado = false;
        for (int i = 0; i < users.size() && encontrado == false; i++) {
            if (users.get(i).getIdUser().equals(id)){
                usuario = users.get(i);
                encontrado = true;
            }
        }
        return usuario;
    }
    
    
}
