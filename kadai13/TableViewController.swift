//
//  TableViewController.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/07.
//

import UIKit

class TableViewController: UITableViewController {

    let fruits = ["りんご","みかん","ばなな","パイナップル"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //identifierの設定
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell1")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! CustomTableViewCell
        if indexPath.row % 2 == 0 {
            cell.configure(isChecked: false, name: fruits[indexPath.row])
        } else {
            cell.configure(isChecked: true, name: fruits[indexPath.row])
        }
        
        
        return cell
    }
    
}
