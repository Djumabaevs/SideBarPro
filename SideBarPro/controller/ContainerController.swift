//
//  ContainerController.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 20/10/21.
//

import UIKit

class ContainerController: UIViewController {
    
    //MARK: - Properties
    
    var menuController: UIViewController!
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Handlers
    
    func configureHomeController() {
        let homeController = HomeController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController() {
        if menuController == nil {
            //add our menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu controller...")
        }
    }
}
