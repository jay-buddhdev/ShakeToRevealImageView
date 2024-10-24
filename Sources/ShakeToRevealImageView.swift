//
//  ShakeToRevealImageView.swift
//  ShaketoReveal
//
//  Created by Jay Buddhdev on 20/10/24.
//

import UIKit

@IBDesignable
public class ShakeToRevealImageView: UIImageView {
    
    // MARK: - Variables
    private let overlayView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var hapticStyle: UIImpactFeedbackGenerator.FeedbackStyle?
    
    public override var canBecomeFirstResponder: Bool {
        return true
    }
    
    // MARK: - Customizable Properties
    @IBInspectable public var overlayColor: UIColor = UIColor.black.withAlphaComponent(0.8) {
        didSet {
            overlayView.backgroundColor = overlayColor
        }
    }

    @IBInspectable public var feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle = .light {
        didSet {
            hapticStyle = feedbackStyle
        }
    }
    
    // MARK: - Init Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
}// End of class

// MARK: - Functions
extension ShakeToRevealImageView {
    
    // Setup view hierarchy
    private func setupView() {
        overlayView.backgroundColor = overlayColor
        self.addSubview(overlayView)
        setupConstraints()
        alpha = 0.1
        self.becomeFirstResponder()
    }
    
    // Set up constraints for the overlay to match the image view's bounds
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            overlayView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            overlayView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            overlayView.topAnchor.constraint(equalTo: self.topAnchor),
            overlayView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    // Detecting shake motion
    public override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            revealImage()
        }
    }
    
    // Function to reveal the hidden image with animation
    @MainActor
    private func revealImage() {
        UIView.animate(withDuration: 1.0, animations: {
            self.alpha = 1.0
            self.overlayView.alpha = 0.0
        }) { _ in
            self.triggerHapticFeedback()
        }
    }
    
    // Function for haptic feedback
    private func triggerHapticFeedback() {
        guard let hapticStyle else { return }
        let generator = UIImpactFeedbackGenerator(style: hapticStyle)
        generator.impactOccurred()
    }
    
}// End of extension

