//
//  DataModel.swift
//  ImageSlider
//
//  Created by Yagnik Suthar on 25/01/17.
//  Copyright © 2017 Yagnik Suthar. All rights reserved.
//

import UIKit

class DataModel: NSObject {

    let images: [String] = ["img01","img02","img03","img04"]

    func index(for currentImage: String) -> Int {
        let index = images.index(of: currentImage)
        return index!
    }
    
    func next(for currentImage: String) -> String {
        var index = self.index(for: currentImage)
        if index >= images.count - 1 {
            index = images.count - 1
        }else {
            index = index + 1
        }
        let currentImage = images[index]
        return currentImage
    }
    
    func previous(for currentImage: String) -> String {
        var index = self.index(for: currentImage)
        if index <= 0 {
            index = 0
        }else {
            index = index - 1
        }
        let currentImage = images[index]
        return currentImage
    }
    
    func setSliderValue(for currentImage: String) -> Int{
        let total = images.count
        var index = images.index(of: currentImage)
        if currSlider == index
        {
            
        }
        return 1
    }
}
