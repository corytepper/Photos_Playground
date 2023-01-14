//
//  PhotoCollectionViewCell.swift
//  Photos_Playground
//
//  Created by Cory Tepper on 1/14/23.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    public let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
//        let images = [
//            UIImage(named: "image1"),
//            UIImage(named: "image2"),
//            UIImage(named: "image3"),
//            UIImage(named: "image4"),
//            UIImage(named: "image5"),
//            UIImage(named: "image6"),
//        ].compactMap({ $0 })
//        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        imageView.image = nil
    }
    
}
