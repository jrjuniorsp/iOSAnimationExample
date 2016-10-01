//
//  ViewController.swift
//  AnimationExample
//
//  Created by Jair Rillo Junior on 01/10/16.
//  Copyright © 2016 Jair Rillo Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtMyLabel: UITextField!
    @IBOutlet weak var btnButton: UIButton!
    @IBOutlet weak var lblImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnButton.layer.cornerRadius = 10;
        self.btnButton.layer.borderWidth = 1;
        self.btnButton.layer.borderColor = UIColor.black.cgColor;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Passou aqui");
        self.txtMyLabel.center.x -= view.bounds.width;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /*
        UIView.animate(withDuration: 1) {
            self.txtMyLabel.center.x += self.view.bounds.width
        }*/
        UIView.animate(withDuration: 0.5, delay: 3, options: [], animations: {
            self.txtMyLabel.center.x += self.view.bounds.width
        }, completion: nil)
    }

    @IBAction func veryNiceButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { 
            self.lblImage.frame.size.width = self.lblImage.frame.size.width * 2
            self.lblImage.frame.size.height = self.lblImage.frame.size.height * 2
            self.lblImage.center.x = 200            
        }
    }
    @IBAction func doFadeOut(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { 
            self.lblImage.alpha = 0.0
        }
    }
    @IBAction func doFadeIn(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { 
            self.lblImage.alpha = 1.0
        }
    }
    @IBAction func doTransform(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { 
            self.lblImage.transform = CGAffineTransform(rotationAngle: 90)
        }
    }
    @IBAction func doScale(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) { 
            self.lblImage.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
    }
    @IBAction func doRepeat(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.repeat, .autoreverse, .curveEaseOut] , animations: {
            self.lblImage.center.x = 200
        }, completion: nil)
    }

}

