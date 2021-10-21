//
//  MenuController.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 20/10/21.
//

import UIKit

class MenuController: UIViewController {
    
    //MARK: - Properties
    
    var tableView: UITableView!
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
    }
}


