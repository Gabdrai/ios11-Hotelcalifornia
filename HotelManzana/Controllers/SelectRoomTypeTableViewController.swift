//
//  SelectRoomTypeTableViewController.swift
//  HotelManzana
//
//  Created by Gabriel Drai on 14/12/2017.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

protocol SelectRoomTypeTableViewControllerDelegate {
    
    func didSelect(roomType: RoomType)
    
}


class SelectRoomTypeTableViewController: UITableViewController {
    var delegate: SelectRoomTypeTableViewControllerDelegate?
    var roomType: RoomType?
    
  
    

    
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
        
        if roomType == self.roomType {
            
            cell.accessoryType = .checkmark
        } else {
            
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
       
        roomType = RoomType.all[indexPath.row]
        
        delegate?.didSelect(roomType: roomType!)
        
        tableView.reloadData()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if segue.identifier == "SelectRoomType" {
            let destinationViewController = segue.destination as?
            SelectRoomTypeTableViewController
            destinationViewController?.delegate = self as? SelectRoomTypeTableViewControllerDelegate
            destinationViewController?.roomType = roomType
        }
    }
   
                            


}
