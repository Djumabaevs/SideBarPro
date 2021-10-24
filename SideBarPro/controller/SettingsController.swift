//
//  SettingsController.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 24/10/21.
//

import UIKit

class SettingsController: UIViewController {
    
    //Mark: - Properties
    
    var username: String?
    
    //Mark: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
            configureUI()
        
        if let username = username {
            print("Username is \(username)")
        }
    }
    
    //Mark: - Handlers
    
    func configureUI() {
        navigationController?.isNavigationBarHidden = false
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "pawn").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
}
