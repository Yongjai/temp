//
//  ChatTableViewCell.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 13..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userChatMessage: UILabel!
    @IBOutlet weak var userMessagingTime: UILabel!
    
    @IBOutlet weak var myChatMessage: UILabel!
    @IBOutlet weak var myMessagingTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
