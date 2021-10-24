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
            configureUI()
    }
    
    //Mark: - Handlers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "pawn").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
    @objc func 
}
