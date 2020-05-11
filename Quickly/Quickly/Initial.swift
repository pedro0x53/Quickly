//
//  Initial.swift
//  Quickly
//
//  Created by Pedro Sousa on 24/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

class Initial: UIViewController {
    
    let container = Container()
    let container2 = Container()
    
    let large: UILabel = Text.createText(.large)
    let text: UILabel = Text.createText(.body)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigurations()
    }
    
    private func layoutConfigurations() {
        view.backgroundColor = .primaryLight
        
        view.add(container)
        container.backgroundColor = .primaryDark
        
        container.add(container2)
        container2.backgroundColor = UIColor(hex: "#8E56C7")
        
        container2.add(large)
        large.topAnchor(container2.safe.top, 10)
        large.leadingAnchor(container2.safe.leading, 10)
        
        container2.add(text)
        text.topAnchor(large.safe.bottom, 10)
        text.leadingAnchor(large.safe.leading)
    }
}
