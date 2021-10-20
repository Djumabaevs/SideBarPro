//
//  HomeController.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 20/10/21.
//

import UIKit

class HomeController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
    }
    
    //MARK: - Handlers
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: <#T##UIImage?#>, style: <#T##UIBarButtonItem.Style#>, target: <#T##Any?#>, action: <#T##Selector?#>)
    }
}
