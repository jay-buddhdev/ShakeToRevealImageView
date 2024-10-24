//
//  ViewController.swift
//  ShakeToRevealImageView
//
//  Created by Jay Buddhdev on 10/20/2024.
//  Copyright (c) 2024 Jay Buddhdev. All rights reserved.
//

import UIKit
import ShakeToRevealImageView

class ViewController: UIViewController {

    // MARK: Variables
    @IBOutlet private weak var imageView: ShakeToRevealImageView!
    
    // MARK: ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.feedbackStyle = .heavy
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
    }
}

