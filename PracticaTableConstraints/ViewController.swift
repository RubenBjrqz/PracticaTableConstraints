//
//  ViewController.swift
//  PracticaTableConstraints
//
//  Created by Alumno on 11/5/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableRestaurantes: UITableView!
    
    let idRestaurante = "RestaurenteIdentificador"
    
    var restaurantes :  [Restaurante] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: idRestaurante) as! CeldaRestauranteController
        
        celda.lblNombreRestaurante.text = restaurantes[indexPath.row].nombreRestaurante
        celda.lblDireccion.text = restaurantes[indexPath.row].direccion
        celda.lblPrecio.text = restaurantes[indexPath.row].precio
        celda.lblTipo.text = restaurantes[indexPath.row].tipo
        celda.lblDescripcion.text = restaurantes[indexPath.row].descripcion
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableRestaurantes.delegate = self
        tableRestaurantes.dataSource = self
        // Do any additional setup after loading the view.
        
        restaurantes.append(Restaurante(nombreRestaurante: "Basil Thai Restaurant & Bar", direccion: "1775 Folsom St, SoMa", precio: "$$", tipo: "Thai, Seafood,Salad", descripcion: "Mmm. Maybe I was really hungry. Maybe it was just really good. But I'll be back if I'm in the area and looking form some Thai food. The restaurant itself..."))
        restaurantes.append(Restaurante(nombreRestaurante: "Basil Thai Restaurant & Bar", direccion: "1775 Folsom St, SoMa", precio: "$$", tipo: "Thai, Seafood,Salad", descripcion: "Mmm. Maybe I was really hungry. Maybe it was just really good. But I'll be back if I'm in the area and looking form some Thai food. The restaurant itself..."))
        
    }


}

