//
//  ViewController.swift
//  viagens-ios
//
//  Created by Luiz Antônio da Silva Júnior on 28/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let destinos: [Viagem] = ViagemDao().obter()
    
    @IBOutlet weak var destinosTableView: UITableView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.destinosTableView.dataSource = self
        self.destinosTableView.delegate = self
        self.viewHoteis.layer.cornerRadius = 10
        self.viewPacotes.layer.cornerRadius = 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Destino Table View Cell", for: indexPath) as! TableViewCell
        let destino = destinos[indexPath.row]
        
        cell.tituloLabel?.text = destino.titulo
        cell.quantidadeDiasLabel?.text = destino.quantidadeDias
        cell.precoLabel?.text = destino.preco
        cell.destinoImageView?.image = UIImage(named: destino.caminhoImagem)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
}
