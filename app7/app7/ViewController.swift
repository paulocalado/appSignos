//
//  ViewController.swift
//  app7
//
//  Created by Paulo Calado on 24/04/18.
//  Copyright © 2018 Codgin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = ["Aquário", "Peixes", "Áries", "Touro", "Gêmeeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sargitário", "Capricórnio"]
    var descricaoSignos:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: signos[indexPath.row],
                                                 message: String(descricaoSignos[indexPath.row]), preferredStyle:.alert)
        
        let confirmAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertaController.addAction(confirmAction)
        
        present(alertaController, animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaSigno: String = "celulaSigno"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaSigno)
        celula?.textLabel?.text = signos[indexPath.row]
        
        return celula!
    }

}

