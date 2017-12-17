//
//  SelectRoomTypeTableViewController.swift
//  HotelManzana
//
//  Created by Gabriel Drai on 14/12/2017.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit




class SelectRoomTypeTableViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return RoomType.all.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath)
       
        let roomType = RoomType.all[indexPath.row]
        
        cell.textLabel?.text = roomType.name
        
        cell.detailTextLabel?.text = "$ \(roomType.price)"
        
        return cell
    }
}
