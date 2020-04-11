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
        
        do {
            if let url = URL(string: "https://lh3.googleusercontent.com/y1P59GUBWjvQ22AhJPaVAgmsietknCIesTgo7C2uiW_4nTHn11Hfq1pLjDcJfwYccAK11A=s85"){
                
                
                let imageData = try Data(contentsOf: url)
                theImageView.image = UIImage(data: imageData)
            }
            
        } catch  {
            print(error.localizedDescription)
        }
        
        
        
        
    }


}

