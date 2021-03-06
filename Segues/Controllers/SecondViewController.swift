//
//  SecondViewController.swift
//  Segues
//
//  Created by Larry Nickerson on 12/7/17.
//  Copyright © 2017 Larry Nickerson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // here is a property that does not need to be init'd (optional)
    var textPassedOver : String? // receives the text from the first screen
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let textPassedOver = textPassedOver {
            label.text = textPassedOver
        }
            
        print("GREEN VIEW DID LOAD")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: {()
            in
            print("GREEN COMPLETE")
        })
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
