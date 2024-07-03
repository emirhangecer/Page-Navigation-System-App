//
//  OyunEkraniVC.swift
//  Page Navigation System App
//
//  Created by Emirhan on 1.07.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var mesaj:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let m = mesaj {
            print("OyunEkraniVC : \(m)")
        }

    }
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "SonucEkraninaGecis", sender: nil)
    }
    
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
