//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Mifsud, Brent on 2018-05-07.
//  Copyright © 2018 Brent Mifsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var guessBox: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func guess(_ sender: UIButton) {
        let numberOfFingers = Int(arc4random_uniform(6))
        
        if Int(guessBox.text!) == nil {
            answerLabel.text = "Invalid Guess"
        }else if Int(guessBox.text!)! > 5 || Int(guessBox.text!)! < 0{
            answerLabel.text = "Must be between 0 and 5"
        }else if Int(guessBox.text!) == numberOfFingers{
            answerLabel.text = "You are correct!"
        }else{
            answerLabel.text = "Wrong! It was a \(numberOfFingers)."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

