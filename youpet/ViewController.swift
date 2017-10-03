//
//  ViewController.swift
//  youpet
//
//  Created by Tiago Aguiar on 10/1/17.
//  Copyright © 2017 iOS Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let dogs = ["Pastor Alemão","Pastor Belga",
                "Pastor de Brie","Pastor dos Pirenéus de Cara Rosa","Pequinês",
                "Perdigueiro","Pitbull","Podengo","Pointer","Pug"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId")!
        
        cell.textLabel?.text = dogs[indexPath.row]
        cell.imageView?.image = UIImage(named: "dog")
        
        return cell
    }
    
}
