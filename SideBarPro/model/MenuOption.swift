//
//  MenuOption.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 23/10/21.
//

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
}
