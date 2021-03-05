//
//  UserGroupsTableViewController.swift
//  VKFirstApp
//
//  Created by Сергей Соколов on 04.03.2021.
//  Copyright © 2021 Сергей Соколов. All rights reserved.
//

import UIKit

class UserGroupsTableViewController: UITableViewController {
    
    var userGroups = [
        UserGroup(name: "Lenta", photo: UIImage(named: "photo")),
        UserGroup(name: "Meduza", photo: UIImage(named: "Image")),
        UserGroup(name: "MDK", photo: UIImage(named: "photo"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userGroups.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserGroupCell", for: indexPath) as? UserGroupViewCell else {return UITableViewCell()}

        cell.userGroupLabel.text = userGroups[indexPath.row].name
        cell.userGroupLogo.image = userGroups[indexPath.row].photo

        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if let allGroupViewController = segue.source as? AllGroupViewController,
            let selectedPath = allGroupViewController.tableView.indexPathForSelectedRow {
            let selectedGroup = allGroupViewController.allGroups[selectedPath.row]
            
            if !userGroups.contains(selectedGroup) {
                userGroups.append(selectedGroup)
                tableView.reloadData()
            }
            
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            userGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }


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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
