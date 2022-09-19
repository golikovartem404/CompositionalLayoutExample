//
//  ThirdAndFourthSectionCell.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit

class ThirdAndFourthSectionCell: UICollectionViewCell {

    static let identifier = "ThirdAndFourthSectionCell"

    // MARK: - Outlets

    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .systemBlue
        return icon
    }()

    private lazy var fileTypeTitle: UILabel = {
        let fileTypeTitle = UILabel()
        fileTypeTitle.textColor = .systemBlue
        fileTypeTitle.font = UIFont.systemFont(ofSize: 20)
        return fileTypeTitle
    }()

    lazy var numberTitle: UILabel = {
        let numberTitle = UILabel()
        numberTitle.textAlignment = .right
        numberTitle.textColor = .gray
        return numberTitle
    }()

    private lazy var detailIcon: UIImageView = {
        let detailIcon = UIImageView(image: UIImage(systemName: "chevron.right"))
        detailIcon.tintColor = .gray
        return detailIcon
    }()

    private lazy var albumInfoStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .trailing
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()

    lazy var bottomView: UIView = {
        let view = UIView()
        return view
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
        contentView.addSubview(icon)
        contentView.addSubview(fileTypeTitle)
        contentView.addSubview(numberTitle)
        contentView.addSubview(detailIcon)
        contentView.addSubview(bottomView)
    }

    func setupLayouts() {
        icon.snp.makeConstraints { make in
            make.centerY.equalTo(contentView.snp.centerY)
            make.left.equalTo(self)
        }

        fileTypeTitle.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.left.equalTo(contentView.snp.left).offset(30)
        }

        numberTitle.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.right.equalTo(contentView.snp.right).offset(-35)
        }

        detailIcon.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.left.equalTo(numberTitle.snp.right).offset(10)
        }

        bottomView.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.height.equalTo(1)
            make.width.equalTo(contentView).offset(20)
        }
    }

    // MARK: - Configuration

    func configure(album: PhotoAlbum) {
        self.fileTypeTitle.text = album.title
        self.icon.image = UIImage(systemName: album.image)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        fileTypeTitle.text = nil
        icon.image = nil
    }
}
