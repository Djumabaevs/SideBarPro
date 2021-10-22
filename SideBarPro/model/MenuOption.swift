//
//  MenuOption.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 23/10/21.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
            
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "pawn") ?? UIImage()
        case .Inbox: return UIImage(named: "pets") ?? UIImage()
        case .Notifications: return UIImage(named: "profile") ?? UIImage()
        case .Settings: return UIImage(named: "pets") ?? UIImage()
        }
    }

}
