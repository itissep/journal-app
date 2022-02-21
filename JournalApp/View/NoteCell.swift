//
//  NoteCell.swift
//  JournalApp
//
//  Created by The GORDEEVS on 21.02.2022.
//

import UIKit

class NoteCell: UITableViewCell {
    static let id = "reusableNoteCell"
    static let nibId = "NoteCell"
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var noteBodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 16
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
