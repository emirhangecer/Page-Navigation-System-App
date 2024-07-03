//
//  OyunEkraniVC.swift
//  Page Navigation System App
//
//  Created by Emirhan on 1.07.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            print("-----OyunEkraniVC-----")
            print("Kisi adı    : \(k.ad!)")
            print("Kisi yası   : \(k.yas!)")
            print("Kisi boyu   : \(k.boy!)")
            print("Kisi bekar  : \(k.bekar!)")
        }

    }
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "SonucEkraninaGecis", sender: nil)
    }
    
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
