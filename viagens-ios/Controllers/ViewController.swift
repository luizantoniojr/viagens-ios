//
//  ViewController.swift
//  viagens-ios
//
//  Created by Luiz Antônio da Silva Júnior on 28/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let destinos: [String] = ["São Paulo", "Rio de Janeiro", "Ceará", "Bahia", "Curitiba"]
    @IBOutlet weak var destinosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.destinosTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Destino Table View Cell", for: indexPath)
        cell.textLabel?.text = destinos[indexPath.row]
        
        return cell
    }
}
