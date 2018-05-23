//
//  AnimationPraticeViewController.swift
//  iOSPractice
//
//  Created by MacBook on 5/23/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

class AnimationPraticeViewController: UIViewController {

    @IBOutlet weak var topCons: NSLayoutConstraint!
    
    @IBOutlet weak var bottomCons: NSLayoutConstraint!
    
    @IBOutlet weak var topLabelCons: NSLayoutConstraint!
    
    @IBOutlet weak var bottomLabelCons: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.topCons.constant = -1000
        self.bottomCons.constant = 1447
        self.topLabelCons.constant = -200
        self.bottomLabelCons.constant = 379
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2, animations: {
            self.topCons.constant = 100
            self.view.layoutIfNeeded()
        }) { (true) in
            UIView.animate(withDuration: 2, animations: {
                self.topLabelCons.constant = 20
                self.bottomLabelCons.constant = 197
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
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
