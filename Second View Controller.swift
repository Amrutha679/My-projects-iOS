//
//  First View Controller.swift
//  Display The Numbers
//
//  Created by amrutha on 10/11/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class SecondViewController :  UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
     
    
    let data = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        table.dataSource = self
        
    }
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
            return data.count
        
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row]
            return cell
        
        }
}
    
