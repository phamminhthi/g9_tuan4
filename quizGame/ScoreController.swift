//
//  ScoreController.swift
//  quizGame
//
//  Created by CIS on 4/2/18.
//  Copyright © 2018 CIS. All rights reserved.
//

import UIKit

class ScoreController: UIViewController {

    @IBOutlet weak var lblCore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCore.text = String(points)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation
     // ttttttttttttt

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
