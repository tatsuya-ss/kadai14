//
//  TableViewController.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/07.
//

import UIKit

final class TableViewController: UITableViewController {
    
    private var fruits = ["りんご", "みかん", "ばなな", "パイナップル"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //　identifierの設定
        tableView.register(
            UINib(nibName: "CustomTableViewCell", bundle: nil),
            
            // CustomTableViewCellのIdentifierであることが明確となる
            forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier
        )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //　xibで作成したセルを使用。
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as! CustomTableViewCell
        
        cell.configure(isChecked: indexPath.row % 2 == 1, name: fruits[indexPath.row])
        
        return cell
    }
    
    @IBAction func cancel(segue: UIStoryboardSegue) {
    }
    
    @IBAction func exit(segue: UIStoryboardSegue) {
        let additionalView = segue.source as? AdditionalViewController
        fruits.append(additionalView!.addition)
        
        tableView.reloadData()
    }
}
