//
//  ViewController.swift
//  ImageSlider
//
//  Created by Yagnik Suthar on 25/01/17.
//  Copyright © 2017 Yagnik Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var imageView: AppImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    // MARK: - Variables / reference
    
    var dataModel = DataModel()
    var currentImage: String!
    var totalValue : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalValue = dataModel.images.count
        
        slider.minimumValue = 0
        slider.maximumValue = Float(totalValue!)
        slider.isContinuous = false
        
        
        currentImage = dataModel.images[0]
        imageView.image = UIImage(named: currentImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func previousAction(_ sender: Any) {
        print("prev")
        self.currentImage = dataModel.previous(for: currentImage)
        self.imageView.image = UIImage(named: currentImage)
    }

    @IBAction func nextAction(_ sender: Any) {
        print("next")
        self.currentImage = dataModel.next(for: currentImage)
        self.imageView.setImage(image: currentImage)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        print("Slider")
        var sliderAction : String = String (Int(sender.value))
        
        
    }
    
}

