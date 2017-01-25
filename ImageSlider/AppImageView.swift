//
//  AppImageView.swift
//  ImageSlider
//
//  Created by Yagnik Suthar on 25/01/17.
//  Copyright © 2017 Yagnik Suthar. All rights reserved.
//

import UIKit

class AppImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 15.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 5.0
        self.layer.masksToBounds = true
    }
    
    func setImage(image: String) {
        self.image = UIImage(named: image)
    }

}
