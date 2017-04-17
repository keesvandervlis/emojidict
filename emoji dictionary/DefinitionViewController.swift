//
//  DefinitionViewController.swift
//  emoji dictionary
//
//  Created by Kees van der vlis on 17/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var MyEmoji: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyEmoji.text = emoji
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
