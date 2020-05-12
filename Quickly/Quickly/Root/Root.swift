//
//  Root.swift
//  Quickly
//
//  Created by Pedro Sousa on 27/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

extension UIView {
    
    var top: NSLayoutYAxisAnchor { get { return self.topAnchor } }
    var right: NSLayoutXAxisAnchor { get { self.rightAnchor } }
    var bottom: NSLayoutYAxisAnchor { get { self.bottomAnchor } }
    var left: NSLayoutXAxisAnchor { get { self.leftAnchor } }
    var leading: NSLayoutXAxisAnchor { get { self.leadingAnchor } }
    var trailing: NSLayoutXAxisAnchor { get { self.trailingAnchor } }
    var x: NSLayoutXAxisAnchor { get { return self.centerXAnchor } }
    var y: NSLayoutYAxisAnchor { get { return self.centerYAnchor } }
    
    var safe: ( top: NSLayoutYAxisAnchor,
                right: NSLayoutXAxisAnchor,
                bottom: NSLayoutYAxisAnchor,
                left: NSLayoutXAxisAnchor,
                leading: NSLayoutXAxisAnchor,
                trailing: NSLayoutXAxisAnchor,
                x: NSLayoutXAxisAnchor,
                y: NSLayoutYAxisAnchor
            )
        {
        get { return ( top: self.safeAreaLayoutGuide.topAnchor,
                       right: self.safeAreaLayoutGuide.rightAnchor,
                       bottom: self.safeAreaLayoutGuide.bottomAnchor,
                       left: self.safeAreaLayoutGuide.leftAnchor,
                       leading: self.safeAreaLayoutGuide.leadingAnchor,
                       trailing: self.safeAreaLayoutGuide.trailingAnchor,
                       x: self.safeAreaLayoutGuide.centerXAnchor,
                       y: self.safeAreaLayoutGuide.centerYAnchor)
        }
    }
}

extension UIView {
    
    public func add(_ view: UIView) {
        self.addSubview(view)
        
        if let component = view as? DefaultProtocol {
            component.reset()
        }
    }
    
    public func added() {
        guard let _ = self.superview else {
            fatalError("Insert this view into another to use this method")
        }
    }
    
    public func clearConstraints() {
        self.added()
        self.removeConstraints(self.constraints)
    }
    
}
