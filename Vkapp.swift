import SwiftUI

struct Vkapp: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var bio: String
    var image: String { return image }
}

#if DEBUG
let testData = [
    Vkapp(name: "ВКонтакте" , headline: "https://vk.com/", bio: "Самая популярная соцсеть и первое суперприложение в России", image: "https://publicstorage.hb.bizmrg.com/sirius/vk.png"),
    Vkapp(name: "My.Games", headline: "https://my.games/", bio: "Игры для ПК, консолей и смартфонов, в которые играют сотни миллионов геймеров", image: "https://publicstorage.hb.bizmrg.com/sirius/mygames.png"),
    Vkapp(name: "Сферум", headline: "https://sferum.ru/?p=start", bio: "Онлайн-платформа для обучения и образовательных коммуникаций", image: "https://publicstorage.hb.bizmrg.com/sirius/sferum.png"),
    Vkapp(name: "Юла", headline: "https://youla.ru/", bio: "Сервис объявлений на основе геолокации и интересов", image: "https://publicstorage.hb.bizmrg.com/sirius/youla.png"),
    Vkapp(name: "Самокат", headline: "https://samokat.ru/", bio: "Онлайн-ретейлер с доставкой товаров за 15 минут", image: "https://publicstorage.hb.bizmrg.com/sirius/samokat.png"),
    Vkapp(name: "Ситидрайв", headline: "https://citydrive.ru/", bio: "Каршеринг-сервис в крупнейших российских городах", image: "https://publicstorage.hb.bizmrg.com/sirius/citydrive.png"),
    Vkapp(name: "Облако", headline: "https://cloud.mail.ru/home/", bio: "Сервис для хранения файлов и совместной работы с ними", image: "https://publicstorage.hb.bizmrg.com/sirius/cloud.png"),
    Vkapp(name: "Все аптеки", headline: "https://vseapteki.ru/", bio: "Онлайн-сервис для поиска и щзаказа лекарств по лучшей цене", image: "https://publicstorage.hb.bizmrg.com/sirius/apteki.png"),
    Vkapp(name: "Календарь", headline: "https://calendar.mail.ru/", bio: "Планирование дня и эффективное управление временем", image: "https://publicstorage.hb.bizmrg.com/sirius/calendar.png"),
]
#endif
