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
        
//        showNavigationBar(large: true, animated: true, isTransparabar: false, titleColor: .blue, barBackGroundColor: .darkGray, fontSize: 18)
        
//        configureNavigationBar(largeTitleColor: .blue, backgoundColor: .darkGray, tintColor: .red, title: "Settings", preferredLargeTitle: true)
        
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
    
    open func showNavigationBar(large: Bool,
                                animated: Bool,
                                isTransparabar: Bool,
                                titleColor: UIColor,
                                barBackGroundColor: UIColor,
                                fontSize: CGFloat) {

            navigationController?.navigationBar.barTintColor = barBackGroundColor
            navigationController?.navigationBar.backgroundColor = barBackGroundColor
            navigationController?.navigationBar.isTranslucent = true
            self.navigationController?.setNavigationBarHidden(false, animated: animated)
            if large {
                self.navigationController?.navigationBar.prefersLargeTitles = true
                if #available(iOS 13.0, *) {
                    let appearance = UINavigationBarAppearance()
                    appearance.backgroundColor = barBackGroundColor
                    appearance.titleTextAttributes = [.foregroundColor: titleColor]
                    appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]

                    navigationController?.navigationBar.standardAppearance = appearance
                    navigationController?.navigationBar.compactAppearance = appearance
                    navigationController?.navigationBar.scrollEdgeAppearance = appearance
                } else {
                    self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]
                }
            } else {
                self.navigationController?.navigationBar.prefersLargeTitles = false
                self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]
            }
        }
}

extension UIViewController {
func configureNavigationBar(largeTitleColor: UIColor, backgoundColor: UIColor, tintColor: UIColor, title: String, preferredLargeTitle: Bool) {
    if #available(iOS 13.0, *) {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: largeTitleColor]
        navBarAppearance.titleTextAttributes = [.foregroundColor: largeTitleColor]
        navBarAppearance.backgroundColor = backgoundColor

        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.compactAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

        navigationController?.navigationBar.prefersLargeTitles = preferredLargeTitle
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = tintColor
        navigationItem.title = title

    } else {
        // Fallback on earlier versions
        navigationController?.navigationBar.barTintColor = backgoundColor
        navigationController?.navigationBar.tintColor = tintColor
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = title
    }
}}
