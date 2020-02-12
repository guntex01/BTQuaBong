//
//  ball2ViewController.swift
//  BTQuaBong
//
//  Created by guntex01 on 2/12/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ball2ViewController: UIViewController {
    var ballImageView: UIImageView!
       
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        ballImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
               ballImageView.image = UIImage(named: "bong")
               ballImageView.contentMode = .scaleAspectFit
               view.addSubview(ballImageView)
               
               timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer(){
           // quay quanh tam
           ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
           
       ballImageView.frame.origin.y += 1
        if ballImageView.frame.origin.y > 250{
        timer.invalidate()
          
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer1), userInfo: nil, repeats: true)
           
           }
       }
            @objc func runTimer1(){
               ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
               ballImageView.frame.origin.x += 1
               if ballImageView.frame.origin.x > view.frame.maxX - ballImageView.frame.width {
                      timer.invalidate()
                      
                      timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer2), userInfo: nil, repeats: true)
               }
               }
                   @objc func runTimer2(){
                       ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
                       ballImageView.frame.origin.y += 1
                         if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height - 250{
                             timer.invalidate()
                             
                             timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer3), userInfo: nil, repeats: true)
                    }
                         
                     }
     @objc func runTimer3(){
        ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
        ballImageView.frame.origin.x -= 1
           if ballImageView.frame.origin.x < 1 {
               timer.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer4), userInfo: nil, repeats: true)
        }

       }
    @objc func runTimer4(){
    ballImageView.transform = ballImageView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/2))
    ballImageView.frame.origin.y += 1
      if ballImageView.frame.origin.y > view.frame.maxY - ballImageView.frame.height {
          timer.invalidate()
}
}
}
