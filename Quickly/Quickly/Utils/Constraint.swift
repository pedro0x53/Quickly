//
//  Constraint.swift
//  Quickly
//
//  Created by Pedro Sousa on 28/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

extension UIView {
    
    public func centerAlign(_ reference: UIView) {
        self.horizontalAlignment(reference)
        self.verticalAlignment(reference)
    }
    
    public func verticalAlignment(_ reference: UIView, _ margin: Int = 0) {
        self.safe.x.constraint(equalTo: reference.safe.x, constant: CGFloat(margin)).isActive = true
    }
    public func horizontalAlignment(_ reference: UIView, _ margin: Int = 0) {
        self.safe.y.constraint(equalTo: reference.safe.y, constant: CGFloat(margin)).isActive = true
    }
    
    public func fillX(_ margin: Int = 0) {
        self.added()
        self.safe.leading.constraint(equalTo: self.superview!.safe.leading, constant: CGFloat(margin)).isActive = true
        self.safe.trailing.constraint(equalTo: self.superview!.safe.trailing, constant: CGFloat(-margin)).isActive = true
    }
    
    public func fillY(_ margin: Int = 0) {
        self.added()
        self.safe.top.constraint(equalTo: self.superview!.top, constant: CGFloat(margin)).isActive = true
        self.safe.bottom.constraint(equalTo: self.superview!.bottom, constant: CGFloat(-margin)).isActive = true
    }
    
    public func fill(_ margin: Int = 0) {
        self.added()
        self.leading.constraint(equalTo: self.superview!.leading, constant: CGFloat(margin)).isActive = true
        self.trailing.constraint(equalTo: self.superview!.trailing, constant: CGFloat(-margin)).isActive = true
        self.top.constraint(equalTo: self.superview!.top, constant: CGFloat(margin)).isActive = true
        self.bottom.constraint(equalTo: self.superview!.bottom,constant: CGFloat(-margin)).isActive = true
    }
    
    public func fillSafe(_ margin: Int = 0) {
        self.added()
        self.safe.leading.constraint(equalTo: self.superview!.safe.leading, constant: CGFloat(margin)).isActive = true
        self.safe.trailing.constraint(equalTo: self.superview!.safe.trailing, constant: CGFloat(-margin)).isActive = true
        self.safe.top.constraint(equalTo: self.superview!.safe.top, constant: CGFloat(margin)).isActive = true
        self.safe.bottom.constraint(equalTo: self.superview!.safe.bottom,constant: CGFloat(-margin)).isActive = true
    }
    
    public func topAnchor(_ anchor: NSLayoutYAxisAnchor, _ margin: Int = 0) {
        self.safe.top.constraint(equalTo: anchor, constant: CGFloat(margin)).isActive = true
    }
    public func rightAnchor(_ anchor: NSLayoutXAxisAnchor, _ margin: Int = 0) {
        self.safe.right.constraint(equalTo: anchor, constant: CGFloat(-margin)).isActive = true
    }
    public func bottomAnchor(_ anchor: NSLayoutYAxisAnchor, _ margin: Int = 0) {
        self.safe.bottom.constraint(equalTo: anchor, constant: CGFloat(-margin)).isActive = true
    }
    public func leftAnchor(_ anchor: NSLayoutXAxisAnchor, _ margin: Int = 0) {
        self.safe.left.constraint(equalTo: anchor, constant: CGFloat(margin)).isActive = true
    }
    public func leadingAnchor(_ anchor: NSLayoutXAxisAnchor, _ margin: Int = 0) {
        self.safe.leading.constraint(equalTo: anchor, constant: CGFloat(margin)).isActive = true
    }
    public func trailingAnchor(_ anchor: NSLayoutXAxisAnchor, _ margin: Int = 0) {
        self.safe.trailing.constraint(equalTo: anchor, constant: CGFloat(-margin)).isActive = true
    }
}
