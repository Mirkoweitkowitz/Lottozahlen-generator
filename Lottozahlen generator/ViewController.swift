//
//  ViewController.swift
//  Lottozahlen generator
//
//  Created by Mirko Weitkowitz on 26.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Heutigezahlen: UILabel!
    
    @IBOutlet weak var ZahlenvonHeute: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Zahlengenerieren(_ sender: Any) {
        
    
        let lottoZahlen = Array (1...49)
        
        var zufall: [Int] = []
        
            
        while zufall.count < 6 {
            var zufallZahl = lottoZahlen.randomElement()!
            if  !zufall.contains(zufallZahl) {
                
                zufall.append(zufallZahl)
            }
                
         
        }
        
        ZahlenvonHeute.text = "\(zufall.sorted()[0]) \(zufall.sorted()[1]) \(zufall.sorted()[2]) \(zufall.sorted()[3]) \(zufall.sorted()[4]) \(zufall.sorted()[5]) "
        ZahlenvonHeute.backgroundColor = UIColor.green
        
    }
   
}

