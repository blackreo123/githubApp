//
//  RepoListCell.swift
//  githubApp
//
//  Created by JIHA YOON on 2022/08/10.
//

import Foundation
import UIKit
import SnapKit

class RepoListCell: UITableViewCell {
    var repo: String?
    
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let starImageView = UIImageView()
    let starLabel = UILabel()
    let languageLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [
            nameLabel,
            descriptionLabel,
            starImageView,
            starLabel,
            languageLabel
        ].forEach {
            contentView.addSubview($0)
        }
    }
}
