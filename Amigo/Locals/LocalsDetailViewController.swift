//
//  LocalsDetailViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 11. 30..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class LocalsDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var commentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissBtnClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = commentTableView.dequeueReusableCell(withIdentifier: "commentCell") as! CommentsTableViewCell
        
        

//        cell.contentView.backgroundColor = UIColor.clear
//
//        cell.travlerProfileImage?.layer.cornerRadius = (cell.travlerProfileImage?.frame.size.width)!
//        cell.travlerProfileImage?.layer.masksToBounds = true
//        cell.travlerProfileImage.layer.borderColor = UIColor.white.cgColor
//
//        cell.cellView.layer.masksToBounds = true
//        cell.cellView.layer.cornerRadius = 5
        
        return cell
    }
}
