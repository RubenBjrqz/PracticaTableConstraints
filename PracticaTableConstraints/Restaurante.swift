//
//  Restaurante.swift
//  PracticaTableConstraints
//
//  Created by Alumno on 11/5/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Restaurante {
    var nombreRestaurante : String
    var direccion : String
    var precio : String
    var tipo : String
    var descripcion : String
    
    init (nombreRestaurante: String, direccion: String, precio: String, tipo: String, descripcion: String) {
        self.nombreRestaurante = nombreRestaurante
        self.direccion = direccion
        self.precio = precio
        self.tipo = tipo
        self.descripcion = descripcion
    }
}
