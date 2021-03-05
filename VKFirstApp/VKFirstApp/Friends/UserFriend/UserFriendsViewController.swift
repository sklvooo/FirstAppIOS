//
//  UserFriendsViewController.swift
//  VKFirstApp
//
//  Created by Сергей Соколов on 04.03.2021.
//  Copyright © 2021 Сергей Соколов. All rights reserved.
//

import UIKit

class UserFriendsViewController: UITableViewController {
    
    let userFriends = [
        UserFriend(name: "Sveta", photo: UIImage(named: "photo")),
        UserFriend(name: "Sasha", photo: UIImage(named: "Image")),
        UserFriend(name: "Oleg", photo: UIImage(named: "photo")),
        UserFriend(name: "Piter", photo: UIImage(named: "Image")),
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
        return userFriends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userFriendsCell", for: indexPath) as? UserFriendViewCell else {return UITableViewCell()}

        cell.userFreindLabel.text = userFriends[indexPath.row].name
        cell.userFreindLogo.image = userFriends[indexPath.row].photo

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FriendInfoSegue",
        let senderCell = sender as? UserFriendViewCell,
            let cellIndexPath = tableView.indexPath(for: senderCell),
            let freiendViewController = segue.destination as? FriendInfoViewController {
            let selectedFriend = userFriends[cellIndexPath.row]
            
            freiendViewController.displaydFriend = selectedFriend
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
