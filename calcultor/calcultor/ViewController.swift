//
//  ViewController.swift
//  calcultor
//
//  Created by ' Ashish on 1/24/19.
//  Copyright © 2019 ' Ashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnscreen:Double=0;
    var previousnumber:Double = 0;
    var performingMath = false;
    var operation = 0;

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnscreen = Double(label.text!)!
            performingMath = false;
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnscreen = Double(label.text!)!
        }
        
        
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if (label.text != "" && sender.tag != 11 && sender.tag != 16)
        {
            previousnumber = Double(label.text!)!
            if sender.tag == 12 //divide
            {
                label.text = "/";
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "x";
            }
            else if sender.tag == 14 //minus
            {
                label.text = "-";
            }
            else if sender.tag == 15 //add
            {
                label.text = "+";
            }
            operation = sender.tag
            performingMath = true;

        }
      else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String ( previousnumber / numberOnscreen)
            }
            if operation == 13
            {
                label.text = String ( previousnumber * numberOnscreen)
            }
            if operation == 14
            {
                label.text = String ( previousnumber - numberOnscreen)
            }
            if operation == 15
            {
                label.text = String ( previousnumber + numberOnscreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousnumber = 0;
            numberOnscreen = 0;
            operation = 0;
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

