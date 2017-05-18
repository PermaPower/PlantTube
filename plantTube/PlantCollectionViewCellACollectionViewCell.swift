//
//  PlantCollectionViewCellACollectionViewCell.swift
//  plantTube
//
//  Created by David on 18/5/17.
//  Copyright © 2017 Permaculture Power. All rights reserved.
//

import UIKit

class PlantCollectionViewCellACollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        var textLabel: UILabel!
        
        textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        textLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        textLabel.textAlignment = .center
        textLabel.text = "Plant"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textLabel)
        
        let horizontalContraints = NSLayoutConstraint(item: textLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        let verticalContraints = NSLayoutConstraint(item: textLabel, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0)
        
        contentView.addConstraints([horizontalContraints,verticalContraints])
    

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
