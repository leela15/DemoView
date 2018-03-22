//
//  DemoView.swift
//  DemoView
//
//  Created by apple on 22/03/18.
//  Copyright © 2018 syzygy. All rights reserved.
//

import UIKit

class DemoView : UIView {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            
            UIView.animate(withDuration: 2.0, animations: {
                print("colorcounter -> \(self.colorCounter)",  "colorcounter -> \(self.colorCounter % 6)")
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            })
        }
        scheduledColorChanged.fire()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
