//
//  ViewController.swift
//  AnimasyonUygulamasi
//
//  Created by İSMAİL AÇIKYÜREK on 9.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnmain: UIButton!
    @IBOutlet weak var btnBirinci: UIButton!
    @IBOutlet weak var btnikinci: UIButton!
    
    var durum = false

    override func viewDidLoad() {
        super.viewDidLoad()
       //butonları ovalleştirme
        btnmain.layer.cornerRadius = btnmain.frame.size.width/2 //genisliğinin yarısı kadar oval yap
        btnBirinci.layer.cornerRadius = btnBirinci.frame.size.width/2
        btnikinci.layer.cornerRadius = btnikinci.frame.size.width/2
        
        self.btnikinci.alpha = 0
        self.btnBirinci.alpha = 0
    }

    @IBAction func btnMainTiklandi(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5, animations: {
            if self.durum {
                self.btnikinci.alpha = 0
                self.btnBirinci.alpha = 0
                self.btnmain.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                
                self.btnBirinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1) //küçülerek kaybol
                self.btnikinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)//küçülerek kaybol
                
                self.durum = false
            } else {
                self.btnikinci.alpha = 1
                self.btnBirinci.alpha = 1
                self.btnmain.transform = CGAffineTransform(rotationAngle: 45 * .pi/180) //çarpraz yap
                
                
                self.btnBirinci.transform = CGAffineTransform(scaleX: 1, y: 1)//büyüyerek ortaya çık
                self.btnikinci.transform = CGAffineTransform(scaleX: 1, y: 1)//büyüyerek ortaya çık 
                
                self.durum = true
            }
            
        }, completion: nil)
       
    }
    
    @IBAction func btnBirinciTiklandi(_ sender: Any) {
    }
    
    @IBAction func btnikinciTiklandi(_ sender: Any) {
    }
    
}

