//
//  ViewController.swift
//  Animations - Share
//
//  Created by Prashant G on 1/9/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var menuView: UIView!
    @IBOutlet var darkFillView: UIViewX!
    @IBOutlet var toggleMenuButton: UIButton!
    
    @IBOutlet var fbView: UIViewX!
    @IBOutlet var googleView: UIViewX!
    @IBOutlet var instaView: UIStackView!
    @IBOutlet var whatsAppView: UIViewX!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbView.alpha = 0
        googleView.alpha = 0
        instaView.alpha = 0
        whatsAppView.alpha = 0
        
        
    }

    @IBAction func toggleMenuAction(_ sender: UIButton) {
        
        if darkFillView.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -69)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.toggleShareButton()
                })
            }
        }
        else{
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
                self.toggleShareButton()
            })
        }
    }
    
    func toggleShareButton() {
        let alpha = CGFloat(fbView.alpha == 0 ? 1 : 0)
        fbView.alpha = alpha
        googleView.alpha = alpha
        instaView.alpha = alpha
        whatsAppView.alpha = alpha
    }
    
    func radians(degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
    
}

