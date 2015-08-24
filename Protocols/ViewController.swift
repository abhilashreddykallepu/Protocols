//
//  ViewController.swift
//  Protocols
//
//  Created by Abhilash on 20/08/15.
//  Copyright (c) 2015 Abhilash Reddy Kallepu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,nameProtocol {

    @IBOutlet weak var buttonTapped: UIButton!
    
    @IBAction func moveNext(sender: AnyObject) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyBoard.instantiateViewControllerWithIdentifier("second") as! secondViewController
        secondVC.delegateName = self
        self.presentViewController(secondVC, animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

  
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }

    
    func nameHasSent(name: String,controller: secondViewController) {
        
        println("tehs sent name is ",name)
    }

    
}





extension ViewController : UIPickerViewDelegate {
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "sample picker"
    }
}

















