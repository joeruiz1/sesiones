/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Labing I5
 * Created: 23/10/2017
 */

CREATE TABLE USUARIO
( 
   ID INTEGER PRIMARY KEY AUTO_INCREMENT, 
   USUARIO VARCHAR(30) NOT NULL, 
   PASS VARCHAR(30) NOT NULL 
);

INSERT INTO USUARIO(USUARIO, PASS) VALUES('FG','FG');
