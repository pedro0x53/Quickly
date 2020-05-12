//
//  Text.swift
//  Quickly
//
//  Created by Pedro Sousa on 28/04/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import UIKit

public enum TextStyle {
    case large
    case h1
    case h2
    case h3
    case headline
    case body
    case callout
    case subheadline
    case footnote
    case caption1
    case caption2
}

class Text: UILabel, DefaultProtocol {
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func reset() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.clearConstraints()
        self.textColor = .primaryDark
        self.textAlignment = .left
        self.backgroundColor = .clear
    }
    
    public static func createText(_ textStyle: TextStyle) -> UILabel {
           switch(textStyle) {
               case .large: return Large()
               case .h1: return H1()
               case .h2: return H2()
               case .h3: return H3()
               case .headline: return Headline()
               case .body: return Body()
               case .callout: return Callout()
               case .subheadline: return Subheadline()
               case .footnote: return Footnote()
               case .caption1: return Caption1()
               case .caption2: return Caption2()
           }
       }

}

private final class Large: Text {
    override init() {
        super.init()
        self.text = "Large Text"
        self.font = .systemFont(ofSize: 34, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private final class H1: Text {
    override init() {
        super.init()
        self.text = "H1 Text"
        self.font = .systemFont(ofSize: 28, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class H2: Text {
    override init() {
        super.init()
        self.text = "H2 Text"
        self.font = .systemFont(ofSize: 22, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class H3: Text {
    override init() {
        super.init()
        self.text = "H3 Text"
        self.font = .systemFont(ofSize: 20, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Headline: Text {
    override init() {
        super.init()
        self.text = "Headline Text"
        self.font = .systemFont(ofSize: 17, weight: .semibold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Body: Text {
    override init() {
        super.init()
        self.text = "Body Text"
        self.font = .systemFont(ofSize: 17, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
private final class Callout: Text {
    override init() {
        super.init()
        self.text = "Callout Text"
        self.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Subheadline: Text {
    override init() {
        super.init()
        self.text = "Subheadline Text"
        self.font = .systemFont(ofSize: 15, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Footnote: Text {
    override init() {
        super.init()
        self.text = "Footnote Text"
        self.font = .systemFont(ofSize: 13, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Caption1: Text {
    override init() {
        super.init()
        self.text = "Caption 1 Text"
        self.font = .systemFont(ofSize: 12, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
private final class Caption2: Text {
    override init() {
        super.init()
        self.text = "Caption 2 Text"
        self.font = .systemFont(ofSize: 11, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
