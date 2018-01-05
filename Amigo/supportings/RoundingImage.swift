//
//  RoundingImage.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 13..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

@IBDesignable

class RoundingImage: UIImageView {
    
    @IBInspectable var isImageRounded:Bool = true {
        didSet {
            if isImageRounded {
                
                layer.cornerRadius = frame.height / 2
            
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if isImageRounded {
            
            layer.cornerRadius = frame.height / 2
            
        }
    }
}
