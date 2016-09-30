//
//  ViewController.swift
//  DataSendBack
//
//  Created by Divy Tolia on 9/29/16.
//  Copyright © 2016 DD. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataEnteredDelegate  {

    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBAction func mySendButton(_ sender: AnyObject) {
    }
    
    func userDidEnterInformation(info: String){
        myLabel.text=info
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondViewController" {
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.delegate = self
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

