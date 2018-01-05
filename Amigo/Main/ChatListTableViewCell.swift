//
//  ChatListTableViewCell.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 12..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {

    @IBOutlet weak var chatListProfileImage: UIImageView!
    @IBOutlet weak var chatListName: UILabel!
    @IBOutlet weak var chatListMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
