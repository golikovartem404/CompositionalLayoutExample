//
//  File.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import Foundation

struct Album {
    var title: String
    var image: String
}

extension Album {
    static var albums = [
        // First section
        [Album(title: "Недавние", image: "new"),
         Album(title: "Instagram", image: "insta"),
         Album(title: "Избранное", image: "izbrannoe"),
         Album(title: "Lightroom", image: "lightroom"),
         Album(title: "WhatsApp", image: "whatsapp"),
         Album(title: "Snapseed", image: "snapseed"),
         Album(title: "Пленка", image: "plenka"),
         Album(title: "Путешествия", image: "travel")],
        // Second section
        [Album(title: "Общие фотки", image: "obshee"),
         Album(title: "Грузия", image: "georgia"),
         Album(title: "2021", image: "2021"),
         Album(title: "День рождения", image: "birthday")],
        // Third section
        [Album(title: "Видео", image: "video"),
         Album(title: "Селфи", image: "person.crop.square"),
         Album(title: "Фото Live Photos", image: "livephoto"),
         Album(title: "Портреты", image: "cube"),
         Album(title: "Панорамы", image: "pano"),
         Album(title: "Таймлапс", image: "timelapse"),
         Album(title: "Серии", image: "square.3.layers.3d.down.right")],
        // Fourth section
        [Album(title: "Импортированные", image: "square.and.arrow.down"),
         Album(title: "Скрытые", image: "eye.slash"),
         Album(title: "Недавно удаленные", image: "trash")]
    ]
}
