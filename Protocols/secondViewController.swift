//
//  secondViewController.swift
//  Protocols
//
//  Created by Abhilash Reddy Kallepu on 20/08/15.
//  Copyright (c) 2015 Abhilash Reddy Kallepu. All rights reserved.
//

import UIKit

protocol nameProtocol {
    
    func nameHasSent(name: String,controller: secondViewController)
}

class secondViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    var delegateName:nameProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: AnyObject) {
//        if let delegate = self.delegateName {
            self.delegateName?.nameHasSent(self.nameField.text, controller: self)
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
