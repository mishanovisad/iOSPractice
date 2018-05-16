//
//  ClassBViewController.swift
//  iOSPractice
//
//  Created by MacBook on 5/14/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

protocol ClassBDelegate : class {
    func changeBackgroundColor(_ color: UIColor?)
}

class ClassBViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    public var helper = ""
    
    weak var delegate : ClassBDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = helper
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor1_tap(_ sender: Any) {
        
        let newcolor = UIColor.green
        
        self.view.backgroundColor = newcolor
        
        delegate?.changeBackgroundColor(newcolor)
        
    }
    
    @IBAction func changeColor2_tap(_ sender: Any) {
        
        let newcolor = UIColor.red
        
        self.view.backgroundColor = newcolor
        
        delegate?.changeBackgroundColor(newcolor)
        
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
