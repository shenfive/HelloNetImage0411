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

