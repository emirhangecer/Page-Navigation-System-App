//
//  ViewController.swift
//  Page Navigation System App
//
//  Created by Emirhan on 1.07.2024.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() { // Uygulama ilk açıldığında çalışırı ve bir kere çalışır!
        super.viewDidLoad()
        
        labelAnasayfa.text = "Hoşgeldiniz"
        print("viewDidload çalıştı")
       
    }
    
    override func viewWillAppear(_ animated: Bool) { // Sayfa her görünür olduğunda çalışır
        print("viewWillAppear çalıştı")
            // Sayfaya her geri dönüldüğünde çalışır
    }
    override func viewWillDisappear(_ animated: Bool) { // Sayfa her görünmez olduğunda çalışır.
        print("viewWillDisappear çalıştı")
    }

    
    
    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Emirhan", yas: 21, boy: 1.80, bekar: true)
        performSegue(withIdentifier: "OyunEkranınaGecis", sender: kisi )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare Modu Calıştı")
        
        if segue.identifier == "OyunEkranınaGecis" {
            print("OyunEkranınaGecis Çalıştı")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add Seçildi")
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        
        print("Save Seçildi")

    }
    
}

