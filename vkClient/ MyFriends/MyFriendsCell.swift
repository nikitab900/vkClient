//
//  MyFriendsCell.swift
//  vkClient
//
//  Created by Никита Абакумов on 20.11.2021.
//

import UIKit

class MyFriendsCell: UITableViewCell {

    @IBOutlet weak var myFriendAvatar: UIImageView!
    @IBOutlet weak var myFriendName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
