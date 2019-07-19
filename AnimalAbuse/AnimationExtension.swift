//
//  AnimationExtension.swift
//  AnimalAbuse
//
//  Created by Spence on 7/17/19.
//  Copyright © 2019 Olly. All rights reserved.
//

import Foundation
import UIKit



extension UIImageView {
    
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
        
    }
    
}
