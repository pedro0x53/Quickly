//
//  Anchors.swift
//  Quickly
//
//  Created by Pedro Sousa on 11/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

extension UIView {
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
