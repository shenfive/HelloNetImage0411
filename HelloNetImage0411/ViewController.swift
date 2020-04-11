//
//  ViewController.swift
//  HelloNetImage0411
//
//  Created by 申潤五 on 2020/4/11.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        
//        theImageView.clipsToBounds = true
//        theImageView.layer.cornerRadius = theImageView.frame.width / 2
//        theImageView.layer.borderColor = UIColor.red.cgColor
//        theImageView.layer.borderWidth = 2
        
        theImageView.clipsToBounds = false
        theImageView.layer.shadowRadius = 20         //陰影
        theImageView.layer.shadowOpacity = 0.6;
        theImageView.layer.shadowColor = UIColor.red.cgColor
        theImageView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        
        
        
        print("start:\(Date().timeIntervalSince1970)")
        
        DispatchQueue.global().async {
                    do {
                if let url = URL(string: "https://i.hexuexiao.cn/up/b3/ed/6e/8e6332873a35c13debbd84c39e6eedb3.jpg"){
                    let imageData = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.theImageView.image = UIImage(data: imageData)
                        print("show Image:\(Date().timeIntervalSince1970)")
                    }
                }
            } catch  {
                print(error.localizedDescription)
            }
        }
        print("show View:\(Date().timeIntervalSince1970)")
        
    }


}

