//
//  FriendViewCell.swift
//  VKFirstApp
//
//  Created by Сергей Соколов on 27.02.2021.
//  Copyright © 2021 Сергей Соколов. All rights reserved.
//

import UIKit

class FriendViewCell: UITableViewCell {

    @IBOutlet var freiendName: UILabel!
    @IBOutlet var freiendPhoto: UIImageView!
    
    func configure(with forecast: Friends) {
        freiendName.text = String(describing: forecast.name)
        freiendPhoto.image = forecast.photo
    }
}
