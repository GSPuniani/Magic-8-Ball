//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Gobind Puniani on 2/10/21.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy", "Try Again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not", "Possibly", "Maybe", "Probably not"]
    
    func generateAnswer() {
        // Pick a random index
        let randomIndex = Int.random(in: 0..<answers.count)
        
        // Assign the answer text to a random answer
        answerLabel.text = answers[randomIndex]
    }

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    

}

