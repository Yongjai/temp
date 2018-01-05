//
//  TravelersTableViewCell.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 21..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class TravelersTableViewCell: UITableViewCell {

    @IBOutlet weak var travlerProfileImage: RoundingImage!
    @IBOutlet weak var travelerName: UILabel!
    @IBOutlet weak var travelDate: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
