//
//  ViewController.swift
//  Segues
//
//  Created by Larry Nickerson on 12/6/17.
//  Copyright © 2017 Larry Nickerson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
      
        // you can choose to make the button the sender or you can
        // let the current viewcontroller be the sender as we did here

        switch sender.tag {
        case 1:
            performSegue(withIdentifier: "goToSecondScreen", sender: self)
            break
        case 2:
            performSegue(withIdentifier: "goToMagentaScreen", sender: self)
            break
        default:
            print("oops")
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // note only the second screen has a label to display the text
        if segue.identifier == "goToSecondScreen" {
            
            if let destinationViewController = segue.destination as? SecondViewController {
                
                destinationViewController.textPassedOver = textField.text
            }
        }
    }
}

