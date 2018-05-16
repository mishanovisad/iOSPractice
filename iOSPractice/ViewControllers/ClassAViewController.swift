//
//  ClassAViewController.swift
//  iOSPractice
//
//  Created by MacBook on 5/14/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

class ClassAViewController: UIViewController, ClassBDelegate {
    
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    // MARK: - Navigation
    @IBAction func jump_Tap(_ sender: Any) {
        
        let nav = UIStoryboard(name: "DelegateTestScreen", bundle: nil).instantiateViewController(withIdentifier: "MySecondNav") as? UINavigationController
        
        if let myVC = nav?.viewControllers.first as? ClassBViewController {
            myVC.helper = "Hoho"
            self.present(nav!, animated: true, completion: nil)
        }
        
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let nav = segue.destination as? UINavigationController, let classb = nav.topViewController as? ClassBViewController {
            classb.delegate = self
        }
        
    }
    

}
