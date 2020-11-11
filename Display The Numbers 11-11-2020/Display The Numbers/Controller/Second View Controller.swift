//
//  First View Controller.swift
//  Display The Numbers
//
//  Created by amrutha on 10/11/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class SecondViewController :  UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
     
     var C = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        table.register(UINib(nibName:C.TableViewCell, bundle:                                                                                nil),forCellReuseIdentifier:C.TableViewCell)
        
        
        }
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
            return C.data.count
        
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"TableViewCell", for: indexPath)
        cell.textLabel?.text = C.data[indexPath.row]
            return cell
        
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            //  let cell = tableView.cellForRow(at: indexPath) else { return }
            
        }

}
    
