//
//  ViewController.swift
//  BasicNavigationController
//
//  Created by Alexis on 20/04/26.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        
        messageTextField.layer.borderColor = UIColor.black.cgColor
        messageTextField.layer.borderWidth = 1.0
        messageTextField.layer.cornerRadius = 15.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            if let destinationVC = segue.destination as? SecondViewController {
                destinationVC.receivedMessage = messageTextField.text ?? ""
            }
        }
    }
}
