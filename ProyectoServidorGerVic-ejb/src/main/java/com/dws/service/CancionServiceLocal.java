/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dws.service;

import com.dws.domain.Cancion;
import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author Gerard
 */
@Local
public interface CancionServiceLocal {

    ArrayList listCanciones();

    Boolean deleteCancion(Cancion c);



    
}
