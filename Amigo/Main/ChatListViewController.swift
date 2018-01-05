//
//  ChatListViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 12. 12..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class ChatListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var chatListTable: UITableView!
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
        let cell = chatListTable.dequeueReusableCell(withIdentifier: "chatListCell") as! ChatListTableViewCell
        
        cell.chatListProfileImage?.layer.cornerRadius = (cell.chatListProfileImage?.frame.size.width)! / 2
        cell.chatListProfileImage?.layer.masksToBounds = true
        cell.chatListProfileImage.layer.borderColor = UIColor.white.cgColor
        cell.chatListName.text = "yongjai"
        cell.chatListMessage.text = "nice to meet you!"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let newViewController = ChatViewController(nibName: "ChatViewController", bundle: nil)
//        self.present(newViewController, animated: true, completion: nil)
        print("cell with path: \(indexPath.row)")
    }
}
