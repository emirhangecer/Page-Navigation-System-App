//
//  ViewController.swift
//  Page Navigation System App
//
//  Created by Emirhan on 1.07.2024.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelAnasayfa.text = "Hoşgeldiniz"
       
    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        performSegue(withIdentifier: "OyunEkranınaGecis", sender: "Merhaba")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare Modu Calıştı")
        
        if segue.identifier == "OyunEkranınaGecis" {
            print("OyunEkranınaGecis Çalıştı")
            
            if let veri = sender as? String {
                print("veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.mesaj = veri
            }
        }
    }
    
}

