//
//  ViewController.swift
//  Circle-Progress-Swift
//
//  Created by Luccas Santana Marinho on 25/06/22.
//

import UIKit

class ViewController: UIViewController {
    let shapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        let circuparPath = UIBezierPath(arcCenter: view.center, radius: 35, startAngle: CGFloat(-0.5 * .pi), endAngle: CGFloat(1.5 * .pi), clockwise: true)
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        shapeLayer.path = circuparPath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.lineWidth = 2
        shapeLayer.lineCap = .round
        
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        basicAnimation.repeatCount = .infinity
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        
        view.layer.addSublayer(shapeLayer)
        shapeLayer.add(basicAnimation, forKey: "urBasic")
    }
}
