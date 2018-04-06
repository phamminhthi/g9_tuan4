//
//  ViewController.swift
//  quizGame
//
//  Created by CIS on 4/2/18.
//  Copyright © 2018 CIS. All rights reserved.
//

import UIKit
var points = 0
class ViewController: UIViewController {
    let questions = ["Favorite pet?","Farvorite color?", "Where was I born?"]
    let answers = [["dog","cat","bird"],["blue","black","green"],["Tokyo","New York","HCM"]]
    var currentQuestion = 0;
    var rightAnswerPlacement:UInt32 = 0
    @IBOutlet weak var lbl: UILabel!
    @IBAction func action(_ sender: AnyObject) {
        if (sender.tag == Int(rightAnswerPlacement)){
            
            print("RIGHT!")
            points    += 1
        }
        else
        {
            print("WRONG!!!!!!")
        }
        if(currentQuestion != questions.count)
        {
            newQuestion()
        }
        else
        {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    func newQuestion() {
        lbl.text = questions[currentQuestion]
        rightAnswerPlacement = arc4random_uniform(3)+1
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...3
        {
            //Create a button
            button = view.viewWithTag(i) as! UIButton
            if(i ==  Int(rightAnswerPlacement)){
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x=2
            }
        }
        currentQuestion += 1
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

