//
//  BlueBorderedButton.swift
//  GradientLoadingBar_Example
//
//  Created by Felix Mau on 29.08.18.
//  Copyright © 2018 Felix Mau. All rights reserved.
//

import UIKit

@IBDesignable
final class BlueBorderedButton: UIButton {
    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        commonInit()
    }

    // MARK: - Private methods

    private func commonInit() {
        backgroundColor = .clear
        tintColor = UIColor.CustomColors.blue

        layer.cornerRadius = 4
        layer.borderColor = UIColor.CustomColors.blue.cgColor
        layer.borderWidth = 1
    }
}
