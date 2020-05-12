//
//  Square.swift
//  Quickly
//
//  Created by Pedro Sousa on 12/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

public class Square: UIView, DefaultProtocol {
    public var side: CGFloat = 100 {
        didSet {
            self.widthConstraint?.constant = side
            self.heightConstraint?.constant = side
        }
    }

    private final var widthConstraint: NSLayoutConstraint?
    private final var heightConstraint: NSLayoutConstraint?
    
    init(side: CGFloat) {
        super.init(frame: CGRect(x: 0, y: 0, width: side, height: side))
        
        self.side = side

        self.widthConstraint = self.safeAreaLayoutGuide.widthAnchor.constraint(
            equalToConstant: side)
        self.widthConstraint?.isActive = true
        
        self.heightConstraint = self.safeAreaLayoutGuide.heightAnchor.constraint(
            equalToConstant: side)
        self.heightConstraint?.isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func reset() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
    }
}
