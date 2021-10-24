//
//  SettingsController.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 24/10/21.
//

import UIKit

class SettingsController: UIViewController {
    
    //Mark: - Properties
    
    //Mark: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    //Mark: - Handlers
    
    func configureUI() {
        navigationController?.navigationBar.barTintColor = .darkGray
    }
}
