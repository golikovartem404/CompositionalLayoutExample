//
//  SecondSectionCell.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit

class SecondSectionCell: UICollectionViewCell {

    static let identifier = "SecondSectionCell"

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()

    private lazy var albumTitle: UILabel = {
        let albumTitle = UILabel()
        albumTitle.textColor = .black
        return albumTitle
    }()

    private lazy var fromWho: UILabel = {
        let fromWho = UILabel()
        fromWho.text = "От Вас"
        fromWho.textColor = .gray
        return fromWho
    }()

    private lazy var albumInfoStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 2
        return stackView
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        setupHierarchy()
        setupLayouts()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    func setupHierarchy() {
        contentView.addSubview(imageView)
        albumInfoStack.addArrangedSubview(albumTitle)
        albumInfoStack.addArrangedSubview(fromWho)
        contentView.addSubview(albumInfoStack)
    }

    func setupLayouts() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.height.equalTo(contentView.snp.height).multipliedBy(0.75)
        }

        albumInfoStack.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).multipliedBy(1.05)
        }
    }

    // MARK: - Configuration

    func configure(album: PhotoAlbum) {
        self.albumTitle.text = album.title
        self.imageView.image = UIImage(named: album.image)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        albumTitle.text = nil
        imageView.image = nil
    }
}
