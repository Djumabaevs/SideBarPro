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
    var centerController: UIViewController!
    var isExpanded = false
    
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
        centerController = UINavigationController(rootViewController: homeController)
        homeController.delegate = self
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
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
    
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            //Show menu
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations:  {
                
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                
            }, completion: nil)

        } else {
            //Hide menu
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations:  {
                
                self.centerController.view.frame.origin.x = 0
                
            }, completion: nil)
        }
    }
    func didSelectMenuOption(menuOption: MenuOption) {
        switch menuOption {
        
        case .Profile:
            print("show profile")
        case .Inbox:
            print("show inbox")
        case .Notifications:
            print("show notifications")
        case .Settings:
            print("show settings")
        }
    }
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
    
}
