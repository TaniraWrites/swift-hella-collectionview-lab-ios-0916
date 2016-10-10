//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Tanira Wiggins on 10/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    @IBOutlet weak var displayNumber: UILabel!
    
    
    var numberText : String = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayNumber.text = numberText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
