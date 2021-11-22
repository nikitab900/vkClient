//
//  NewPublicCell.swift
//  vkClient
//
//  Created by Никита Абакумов on 20.11.2021.
//

import UIKit

class AllPublicCell: UITableViewCell {
    @IBOutlet weak var allPublicAvatar: UIImageView!
    @IBOutlet weak var allPublicCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
