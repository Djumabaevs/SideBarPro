//
//  MenuOptionCell.swift
//  SideBarPro
//
//  Created by Bakyt Dzhumabaev on 22/10/21.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    //Mark: - Properties
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    //Mark: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        addSubview(iconImageView)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Mark: - Handlers

}
