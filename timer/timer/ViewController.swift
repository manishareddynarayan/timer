//
//  ViewController.swift
//  timer
//
//  Created by N Manisha Reddy on 1/18/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 150
    func decreaseTime ()
    {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        }
        else{
            timer.invalidate()
        }
    }

    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        
    }
    
    @IBAction func refreshTimer(_ sender: Any) {
        time = 150
        timerLabel.text = String(time)
    }
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTime), userInfo: nil, repeats: true)
        
    }
    @IBAction func minusFive(_ sender: Any) {
        if time > 5 {
        time -= 5
        timerLabel.text = String(time)
        }
        
    }
    @IBAction func plusFive(_ sender: Any) {
        
        time += 5
        timerLabel.text = String(time)
        
        
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

