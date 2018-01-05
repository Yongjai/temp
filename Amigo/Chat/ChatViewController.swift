//
//  ChatViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 13..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var chatTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTable.separatorStyle = .none

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
        return 4
    }
    
    // 상대방이 보낸건지 내가 보낸건지 확인해서 cell을 띄워준다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let userChatCell:ChatTableViewCell = tableView.dequeueReusableCell(withIdentifier: "userChatCell", for: indexPath) as! ChatTableViewCell
            userChatCell.userName?.text = "yong"
            userChatCell.userChatMessage?.text = "nice to meet you!"
            userChatCell.userMessagingTime?.text = "12:15 PM"
            
            return userChatCell
            
        } else {
            let myChatCell:ChatTableViewCell = tableView.dequeueReusableCell(withIdentifier: "myChatCell", for: indexPath) as! ChatTableViewCell
            myChatCell.userChatMessage?.text = "nice to meet you, too!"
            myChatCell.userMessagingTime?.text = "12:15 PM"
            
            return myChatCell
        }
    }
}
