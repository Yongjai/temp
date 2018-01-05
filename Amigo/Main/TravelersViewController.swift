//
//  TravelersViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 21..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit
import QuartzCore

class TravelersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var travelersTableView: UITableView!
    let cellSpacingHeight: CGFloat = 20

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = travelersTableView.dequeueReusableCell(withIdentifier: "travelerCell") as! TravelersTableViewCell
        
        cell.contentView.backgroundColor = UIColor.clear
        
        cell.travlerProfileImage?.layer.cornerRadius = (cell.travlerProfileImage?.frame.size.width)!
        cell.travlerProfileImage?.layer.masksToBounds = true
        cell.travlerProfileImage.layer.borderColor = UIColor.white.cgColor
        
        cell.cellView.layer.masksToBounds = true
        cell.cellView.layer.cornerRadius = 5

        return cell
    }
}
