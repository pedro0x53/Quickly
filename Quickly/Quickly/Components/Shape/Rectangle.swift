//
//  Rectangle.swift
//  Quickly
//
//  Created by Pedro Sousa on 12/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

class Rectangle: UIView, DefaultProtocol {
    var width: CGFloat = 100 {
        didSet {
            self.widthConstraint?.constant = width
        }
    }
    var height: CGFloat = 50 {
        didSet {
            self.heightConstraint?.constant = height
        }
    }
    
    private final var widthConstraint: NSLayoutConstraint?
    private final var heightConstraint: NSLayoutConstraint?

    init(width: CGFloat, height: CGFloat) {
        super.init(frame: CGRect(x: 0, y: 0, width: width, height: height))
        
        self.width = width
        self.height = height
        
        self.widthConstraint = self.safeAreaLayoutGuide.widthAnchor.constraint(
            equalToConstant: width)
        self.widthConstraint?.isActive = true
        
        self.heightConstraint = self.safeAreaLayoutGuide.heightAnchor.constraint(
            equalToConstant: height)
        self.heightConstraint?.isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func reset() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
    }

}
