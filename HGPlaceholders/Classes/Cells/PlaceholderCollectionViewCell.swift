//
//  PlaceholderCollectionViewCell.swift
//  Pods
//
//  Created by Hamza Ghazouani on 25/07/2017.
//
//

import UIKit

/// The default cell used for collection view placeholders (takes the size of the collection view)
open class PlaceholderCollectionViewCell: UICollectionViewCell {
    
    var onActionButtonTap: (() -> Void)?

    @IBOutlet public weak var titleLabel: UILabel?
    @IBOutlet public weak var subtitleLabel: UILabel?
    @IBOutlet public weak var placeholderImageView: UIImageView?
    @IBOutlet public weak var actionButton: UIButton?
    @IBOutlet public weak var activityIndicator: UIActivityIndicatorView?
    @IBOutlet public weak var placeholderBackgroundView: UIView?
    
    public var cellView: UIView {
        return self
    }
    
    //  MARK: - User interaction
    
    @IBAction func sendPlaceholderAction(_ sender: Any) {
        onActionButtonTap?()
        print("Placeholder action button tapped")
    }
}

extension PlaceholderCollectionViewCell: Reusable {}
extension PlaceholderCollectionViewCell: NibLoadable {}
extension PlaceholderCollectionViewCell: CellPlaceholding {}
