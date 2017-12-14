//
//  SelectRoomTypeTableViewController.swift
//  HotelManzana
//
//  Created by Gabriel Drai on 14/12/2017.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit


static var all: [RoomType] {
    return [RoomType(id: 0, name: "Two Queens", shortName: "2Q",
                     price: 179),
            RoomType(id: 1, name: "One King", shortName: "K",
                     price: 209),
            RoomType(id: 2, name: "Penthouse Suite", shortName:
                "PHS", price: 309)]
}
