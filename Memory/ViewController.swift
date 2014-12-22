//
//  ViewController.swift
//  Memory
//
//  Created by Giordano Scalzo on 22/12/2014.
//  Copyright (c) 2014 Swift by Example. All rights reserved.
//

import UIKit

enum Difficulty {
    case Easy, Medium, Hard
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

private extension ViewController {
    func setup() {
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y/2.0),
            title: "EASY", color: UIColor.greenColor(), action: "onEasyTapped:")
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y),
            title: "MEDIUM", color: UIColor.orangeColor(), action: "onMediumTapped:")
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y*3.0/2.0),
            title: "HARD", color: UIColor.redColor(), action: "onHardTapped:")
    }

    func buildButtonCenter(center: CGPoint, title: String, color: UIColor, action: Selector) {
        let button = UIButton()
        button.setTitle(title, forState: .Normal)
        
        button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 50))
        button.center = center
        button.backgroundColor = color
        
        button.addTarget(self, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
    }
}

extension ViewController {
    func onEasyTapped(sender: UIButton) {
        println("Easy")
    }
    
    func onMediumTapped(sender: UIButton) {
        println("Medium")
    }
    
    func onHardTapped(sender: UIButton) {
        println("Hard")
    }
}