//
//  playGroundDetailsVC.swift
//  Taqseem
//
//  Created by apple on 2/24/19.
//  Copyright © 2019 OnTime. All rights reserved.
//

import UIKit

var GMatchDetails : MatchDetailsModelClass!
var Gitem : PlaygroundModelClass!
var GNearItems : NearPlayGroundModelClass!
var GFav : NearPlayGroundModelClass!
class playGroundDetailsVC: UIViewController {
    var MatchDetails : MatchDetailsModelClass!
    var item : PlaygroundModelClass!
    var NearItems : NearPlayGroundModelClass!
    var FavItem : NearPlayGroundModelClass!
    
    @IBOutlet weak var Constain_IconImge_Height: NSLayoutConstraint!
    @IBOutlet weak var Constain_IconImge_Widhtt: NSLayoutConstraint!
    
    @IBOutlet weak var lblCapacity: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    @IBOutlet weak var txtNote: UITextView!
    @IBOutlet weak var lblLocation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstrin()
        fillData()
   //     print(item._address)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnChoose(_ sender: Any) {
        print(123)
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Match", bundle:nil)
//                   let cont = storyBoard.instantiateViewController(withIdentifier: "PaidVC")as! PaidVC
//       // self.show(cont, sender: true)
//             self.present(cont, animated: true, completion: nil)
    }
    @IBAction func DismissView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func setupConstrin(){
        Constain_IconImge_Height.constant = view.frame.width / 16
        Constain_IconImge_Widhtt.constant = view.frame.width / 16
    
    }
    func fillData(){
        
        lblLocation.text = ""
        if comedromneartoplay == "NearME" {
            lblName.text = NearItems._name
            lblSalary.text = "\(NearItems._price) SAR/h"
            lblAddress.text = NearItems._address
            
            lblCapacity.text = "\(NearItems._capacity) Players"
            lblDuration.text = "\(NearItems._duration) Hours"
            lblTime.text = NearItems._time
            lblDate.text = NearItems._date
            GNearItems = NearItems
        }else if comedromneartoplay == "Fav" {
        lblName.text = FavItem._name
        lblSalary.text = "\(FavItem._price) SAR/h"
        lblAddress.text = FavItem._address
        
        lblCapacity.text = "\(FavItem._capacity) Players"
        lblDuration.text = "\(FavItem._duration) Hours"
        lblTime.text = FavItem._time
        lblDate.text = FavItem._date
        
        GFav = FavItem
            print(FavItem._duration)
        //GMatchDetails = MatchDetails
        }
        else {
            lblName.text = item._name
            lblSalary.text = "\(item._price) SAR/h"
            lblAddress.text = item._address
            
            lblCapacity.text = "\(MatchDetails._Capacity) Players"
            lblDuration.text = "\(MatchDetails._Duration) Hours"
            lblTime.text = MatchDetails._Time
            lblDate.text = MatchDetails._Date
            
            Gitem = item
            GMatchDetails = MatchDetails
        }
    }

}
