//
//  MasterTableViewController.swift
//  CustomizeTableViewCell_v3
//
//  Created by macbook on 9/29/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

// to create a profile
struct LinhKaTeam {
    let avatar : UIImage!
    let name : String!
    let position: String!
    let star: UIImage!
    init(avatar : String!, name : String!, position: String!, star : String!) {
        self.avatar = UIImage(named: avatar + ".jpg")
        self.name = name
        self.position = position
        self.star = UIImage(named: star + "stars")
    }
}

class MasterTableViewController: UITableViewController {

    var data : [LinhKaTeam]!
    var detailViewController: DetailViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create data
        data = [LinhKaTeam(avatar: "Linh Ka 1", name: "Ma Bu", position: "Linh Ka 11", star: "5"),
                LinhKaTeam(avatar: "Linh Ka 2", name: "Dark Sun", position: "Linh Ka 22", star: "5"),
                LinhKaTeam(avatar: "Linh Ka 3", name: "Fize", position: "Linh Ka 33", star: "5"),
                LinhKaTeam(avatar: "Linh Ka 4", name: "Xen Bo Hung", position: "Linh Ka 44", star: "5"),
                LinhKaTeam(avatar: "Linh Ka 5", name: "Bu Com", position: "Linh Ka 55", star: "5"),
                LinhKaTeam(avatar: "Linh Ka 6", name: "Min", position: "Linh Ka 66", star: "5"),
        ]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    // Data for Cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = NSBundle.mainBundle().loadNibNamed("CustomTableViewCell", owner: self, options: nil).first as! CustomTableViewCell
        
        cell.avatar.image = data[indexPath.row].avatar
        cell.name.text = data[indexPath.row].name
        cell.position.text = data[indexPath.row].position
        cell.star.image = data[indexPath.row].star

        return cell
    }
    
    // Height for Cell
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }

    // Click event for Cell
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailViewController == nil {
            detailViewController = storyboard?.instantiateViewControllerWithIdentifier("Detail") as! DetailViewController
        }
        let item = data[indexPath.row]
        detailViewController.titleString = item.position
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
