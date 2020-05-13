//
//  Image.swift
//  Quickly
//
//  Created by Pedro Sousa on 13/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

class Image: UIImageView, DefaultProtocol {
    final var src: String
    final var width: CGFloat {
        didSet { self.widthConstraint?.constant = width }
    }
    final var height: CGFloat {
        didSet { self.heightConstraint?.constant = height }
    }

    private final var initialSize: CGSize
    private final var widthConstraint: NSLayoutConstraint?
    private final var heightConstraint: NSLayoutConstraint?
    
    init(src: String, width: CGFloat? = nil, height: CGFloat? = nil) {
        guard let img = UIImage(named: src) else {
            fatalError("No image named \(src).")
        }
        
        self.width = width ?? img.size.width
        self.height = height ?? img.size.height
        
        self.src = src
        self.initialSize = CGSize(width: self.width,
                                  height: self.height)
        
        super.init(frame: CGRect(x: 0,
                                 y: 0,
                                 width: initialSize.width,
                                 height: initialSize.height))
        
        self.image = img
        
        self.widthConstraint = self.safeAreaLayoutGuide.widthAnchor.constraint(
            equalToConstant: self.width)
        self.widthConstraint?.isActive = true
        
        self.heightConstraint = self.safeAreaLayoutGuide.heightAnchor.constraint(
            equalToConstant: self.height)
        self.heightConstraint?.isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func reset() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
    }
}
