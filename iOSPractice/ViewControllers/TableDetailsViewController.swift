//
//  TableDetailsViewController.swift
//  iOSPractice
//
//  Created by MacBook on 5/4/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

class ItFusionCustomCell : UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblColour: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    
}

class TableDetailsViewController: UITableViewController {

    var sampleData = SampleDataView.GetSampleData()
    
    var selectedArrayIndex : Int = 0
    
    var selectedDetailIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ModelDetails", for: indexPath) as! ItFusionCustomCell

        cell.lblName.text = "Model name: " + sampleData[selectedArrayIndex].modelList[selectedDetailIndex].modelDetails.modelName
        
        cell.lblCategory?.text = "Model category: " + sampleData[selectedArrayIndex].modelList[selectedDetailIndex].modelDetails.modelCategory
        
        cell.lblYear?.text = "Model year: " + String(sampleData[selectedArrayIndex].modelList[selectedDetailIndex].modelDetails.modelYear)
        
        cell.lblColour?.text = "Model colour: " + sampleData[selectedArrayIndex].modelList[selectedDetailIndex].modelDetails.modelColour
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
