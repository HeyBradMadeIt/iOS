//
//  TasksTableViewCell.swift
//  Wunderlist
//
//  Created by Bradley Diroff on 5/28/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var buttonFace: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
