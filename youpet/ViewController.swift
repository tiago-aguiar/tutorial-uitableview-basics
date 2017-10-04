//
//  ViewController.swift
//  youpet
//
//  Created by Tiago Aguiar on 10/1/17.
//  Copyright © 2017 iOS Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tbl: UITableView = {
        let v = UITableView(frame: .zero, style: .plain)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let dogs = ["Pastor Alemão","Pastor Belga",
                "Pastor de Brie","Pastor dos Pirenéus de Cara Rosa","Pequinês",
                "Perdigueiro","Pitbull","Podengo","Pointer","Pug"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tbl)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|",
                                                           options: NSLayoutFormatOptions(),
                                                           metrics: nil,
                                                           views: ["v0" : tbl]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|",
                                                           options: NSLayoutFormatOptions(),
                                                           metrics: nil,
                                                           views: ["v0" : tbl]))
        
        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
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
