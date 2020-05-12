//
//  Circle.swift
//  Quickly
//
//  Created by Pedro Sousa on 12/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

class Circle: UIView, DefaultProtocol {

    var radius: CGFloat = 50 {
        didSet {
            self.widthConstraint?.constant = radius * 2
            self.heightConstraint?.constant = radius * 2
            self.layer.cornerRadius = radius
        }
    }

    private final var widthConstraint: NSLayoutConstraint?
    private final var heightConstraint: NSLayoutConstraint?
    
    init(radius: CGFloat) {
        super.init(frame: CGRect(x: 0, y: 0, width: radius * 2, height: radius * 2))
        
        self.radius = radius

        self.widthConstraint = self.safeAreaLayoutGuide.widthAnchor.constraint(
            equalToConstant: radius * 2)
        self.widthConstraint?.isActive = true
        
        self.heightConstraint = self.safeAreaLayoutGuide.heightAnchor.constraint(
            equalToConstant: radius * 2)
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
