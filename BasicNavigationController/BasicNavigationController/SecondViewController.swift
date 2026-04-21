//
//  SecondViewController.swift
//  BasicNavigationController
//
//  Created by Alexis on 20/04/26.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var  receivedMessage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Message Received"
        messageLabel.text = receivedMessage
        
    }
}
