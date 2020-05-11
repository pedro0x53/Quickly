//
//  Container.swift
//  Quickly
//
//  Created by Pedro Sousa on 28/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

class Container: UIView, DefaultProtocol {

    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func reset() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.clearConstraints()
        self.fillSafe(10)
        self.backgroundColor = .clear
    }
    
}
