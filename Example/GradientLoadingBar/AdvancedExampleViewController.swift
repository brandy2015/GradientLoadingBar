//
//  AdvancedExampleViewController.swift
//  GradientLoadingBar_Example
//
//  Created by Felix Mau on 08/30/18.
//  Copyright © 2018 Felix Mau. All rights reserved.
//

import UIKit
import GradientLoadingBar

class AdvancedExampleViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet private var interfaceBuilderButton: BlueBorderedButton!
    @IBOutlet private var programaticallyButton: BlueBorderedButton!

    @IBOutlet private var gradientActivityIndicatorView: GradientActivityIndicatorView!

    // MARK: - Private properties

    // swiftlint:disable:next identifier_name
    private let pinkFlamingoGradientActivityIndicatorView: GradientActivityIndicatorView = {
        let gradientActivityIndicatorView = GradientActivityIndicatorView()

        // Source: https://color.adobe.com/Pink-Flamingo-color-theme-10343714/
        gradientActivityIndicatorView.gradientColors = [
            #colorLiteral(red: 0.9490196078, green: 0.3215686275, blue: 0.431372549, alpha: 1), #colorLiteral(red: 0.9450980392, green: 0.4784313725, blue: 0.5921568627, alpha: 1), #colorLiteral(red: 0.9529411765, green: 0.737254902, blue: 0.7843137255, alpha: 1), #colorLiteral(red: 0.4274509804, green: 0.8666666667, blue: 0.9490196078, alpha: 1), #colorLiteral(red: 0.7568627451, green: 0.9411764706, blue: 0.9568627451, alpha: 1)
        ]

        return gradientActivityIndicatorView
    }()

    // MARK: - Public methods

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPinkFlamingoGradientActivityIndicatorView()
    }

    @IBAction func addedViaInterfaceBuilderButtonTouchUpInside(_: Any) {
        if gradientActivityIndicatorView.isHidden {
            gradientActivityIndicatorView.fadeIn()
        } else {
            gradientActivityIndicatorView.fadeOut()
        }
    }

    @IBAction func addedProgramaticallyButtonTouchUpInside(_: Any) {
        if pinkFlamingoGradientActivityIndicatorView.isHidden {
            pinkFlamingoGradientActivityIndicatorView.fadeIn()
        } else {
            pinkFlamingoGradientActivityIndicatorView.fadeOut()
        }
    }

    // MARK: - Private methods

    private func setupPinkFlamingoGradientActivityIndicatorView() {
        pinkFlamingoGradientActivityIndicatorView.fadeOut(duration: 0)

        pinkFlamingoGradientActivityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        programaticallyButton.addSubview(pinkFlamingoGradientActivityIndicatorView)

        NSLayoutConstraint.activate([
            pinkFlamingoGradientActivityIndicatorView.leftAnchor.constraint(equalTo: programaticallyButton.leftAnchor),
            pinkFlamingoGradientActivityIndicatorView.rightAnchor.constraint(equalTo: programaticallyButton.rightAnchor),

            pinkFlamingoGradientActivityIndicatorView.bottomAnchor.constraint(equalTo: programaticallyButton.bottomAnchor),
            pinkFlamingoGradientActivityIndicatorView.heightAnchor.constraint(equalToConstant: 3.0)
        ])
    }
}

// MARK: - UIBarPositioningDelegate

// Notice: Delegate is setted-up via storyboard.
extension AdvancedExampleViewController: UINavigationBarDelegate {
    func position(for _: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
}
