//
//  SecondViewController.swift
//  DataSendBack
//
//  Created by Divy Tolia on 9/29/16.
//  Copyright © 2016 DD. All rights reserved.
//

import UIKit

// protocol used for sending data back
protocol DataEnteredDelegate: class {
    func userDidEnterInformation(info: String)
}


class SecondViewController: UIViewController {

    @IBOutlet weak var MyTextField: UITextField!
    
    var delegate:DataEnteredDelegate?=nil
    
    @IBAction func myButton(_ sender: AnyObject) {
        // call this method on whichever class implements our delegate protocol
        delegate?.userDidEnterInformation(info: MyTextField.text!)
        
        // go back to the previous view controller
        _ = self.navigationController?.popViewController(animated: true)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
