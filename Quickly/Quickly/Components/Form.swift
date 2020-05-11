//
//  Form.swift
//  Quickly
//
//  Created by Pedro Sousa on 27/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

enum Forms {
    case square
    case rectangle
    case circle
}

class Form: UIView {
    
    public static func createForm(_ form: Forms) -> UIView {
        switch(form) {
            case .square: return Square()
            case .rectangle: return Rectangle()
            case .circle: return Circle()
        }
    }

}

private class Square: UIView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private class Rectangle: UIView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private class Circle: UIView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
