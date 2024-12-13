//
//  MoviesTableViewCell.swift
//  MyFavoriteMovies
//
//  Created by Сергей Емелин on 13.12.2024.
//

import UIKit
import SDWebImage

class MoviesTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var runningTimeLabel: UILabel!
    @IBOutlet weak var directedByLabel: UILabel!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var photoImageView: UIImageView!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        pictureImageView.layer.cornerRadius = 16
        photoImageView.layer.cornerRadius = 35
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(movie: FavoriteMovie) {
        titleLabel.text = movie.title
        yearLabel.text = "Год: " + movie.year
        runningTimeLabel.text = "Продолжительность: " + movie.runningTime
        directedByLabel.text = "Режиссер: " + movie.directedBy
        
        pictureImageView.sd_setImage(with: URL(string: movie.picture))
        photoImageView.sd_setImage(with: URL(string: movie.photo))
    }

}
