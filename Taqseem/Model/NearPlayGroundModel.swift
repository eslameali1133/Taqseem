//
//  NearPlayGroundModel.swift
//  Taqseem
//
//  Created by Husseinomda16 on 3/27/19.
//  Copyright © 2019 OnTime. All rights reserved.
//

import Foundation
import UIKit

class NearPlayGroundModelClass: NSObject {
    var _owner_id = ""
    var _updated_at = ""
    var _name = ""
    var _lng = ""
    var _hour_to = ""
    var _phone = ""
    var _image = ""
    var _note = ""
    var _lat = ""
    var _capacity = ""
    var _address = ""
    var _name_en = ""
    var _city_id = ""
    var _id = ""
    var _name_ar = ""
    var _created_at = ""
    var _hour_from = ""
    var _cancel_fee = ""
    var _price = ""
    var _cancelation_time = ""
    var _member = ""
    var _reservation_no = ""
    var _duration = ""
    var _time = ""
    var _date = ""
    
    init(owner_id:String ,
         updated_at : String ,
         name : String ,
         lng : String ,
         hour_to :String ,
         phone :String ,
         image :String,
         note :String,
         lat :String,
         capacity :String,
         address :String,
         name_en :String,
         city_id :String,
         id :String,
         name_ar :String,
         created_at :String,
         hour_from :String,
         cancel_fee :String,
         price :String,
         cancelation_time :String,
         member :String,
         reservation_no :String,
         duration :String,
         time :String,
         date :String
    ) {
        
        self._owner_id = owner_id
        self._updated_at = updated_at
        self._name = name
        self._lng = lng
        self._hour_to = hour_to
        self._phone = phone
        self._image = image
        self._note = note
        self._lat = lat
        self._capacity = capacity
        self._address = address
        self._name_en = name_en
        self._city_id = city_id
        self._id = id
        self._name_ar = name_ar
        self._created_at = created_at
        self._hour_from = hour_from
        self._cancel_fee = cancel_fee
        self._price = price
        self._cancelation_time = cancelation_time
        self._member = member
        self._duration = duration
        self._time = time
        self._date = date
        self._reservation_no = reservation_no
    }
}
