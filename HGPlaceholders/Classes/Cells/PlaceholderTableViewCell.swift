//
//  PlaceholderTableViewCell.swift
//  Pods
//
//  Created by Hamza Ghazouani on 20/07/2017.
//
//

import UIKit

/// The default cell used for table view placeholders (takes the size of the table view)
open class PlaceholderTableViewCell: UITableViewCell {
   
    var onActionButtonTap: (() -> Void)?
    
    // MARK: Properties 
    
    @IBOutlet public weak var titleLabel: UILabel?
    @IBOutlet public weak var subtitleLabel: UILabel?
    @IBOutlet public weak var placeholderImageView: UIImageView?
    @IBOutlet public weak var actionButton: UIButton?
    @IBOutlet public weak var activityIndicator: UIActivityIndicatorView?
    
    public var cellView: UIView {
        return self
    }
    
    //  MARK: - User interaction
    
    @IBAction func sendPlaceholderAction(_ sender: Any) {
        onActionButtonTap?()
        print("Placeholder action button tapped")
    }
}

extension PlaceholderTableViewCell: NibLoadable {}
extension PlaceholderTableViewCell: Reusable {}
extension PlaceholderTableViewCell: CellPlaceholding {}


