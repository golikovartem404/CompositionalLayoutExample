//
//  File.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import Foundation

struct PhotoAlbum {
    var title: String
    var image: String
}

extension PhotoAlbum {
    static var albums = [
        // First section
        [PhotoAlbum(title: "Недавние", image: "new"),
         PhotoAlbum(title: "Instagram", image: "insta"),
         PhotoAlbum(title: "Избранное", image: "izbrannoe"),
         PhotoAlbum(title: "Lightroom", image: "lightroom"),
         PhotoAlbum(title: "WhatsApp", image: "whatsapp"),
         PhotoAlbum(title: "Snapseed", image: "snapseed"),
         PhotoAlbum(title: "Пленка", image: "plenka"),
         PhotoAlbum(title: "Путешествия", image: "travel")],
        // Second section
        [PhotoAlbum(title: "Общие фотки", image: "obshee"),
         PhotoAlbum(title: "Грузия", image: "georgia"),
         PhotoAlbum(title: "2021", image: "2021"),
         PhotoAlbum(title: "День рождения", image: "birthday")],
        // Third section
        [PhotoAlbum(title: "Видео", image: "video"),
         PhotoAlbum(title: "Селфи", image: "person.crop.square"),
         PhotoAlbum(title: "Фото Live Photos", image: "livephoto"),
         PhotoAlbum(title: "Портреты", image: "cube"),
         PhotoAlbum(title: "Панорамы", image: "pano"),
         PhotoAlbum(title: "Таймлапс", image: "timelapse"),
         PhotoAlbum(title: "Серии", image: "square.3.layers.3d.down.right")],
        // Fourth section
        [PhotoAlbum(title: "Импортированные", image: "square.and.arrow.down"),
         PhotoAlbum(title: "Скрытые", image: "eye.slash"),
         PhotoAlbum(title: "Недавно удаленные", image: "trash")]
    ]
}
