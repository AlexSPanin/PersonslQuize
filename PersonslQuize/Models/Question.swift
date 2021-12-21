//
//  Question.swift
//  PersonslQuize
//
//  Created by Александр Панин on 16.12.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answeers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
        Question(
            title: "Какую пищу предпочитаете?",
            type: .single,
            answeers: [
                Answer(title: "Стейк", type: .dog),
                Answer(title: "Рыба", type: .cat),
                Answer(title: "Морковь", type: .rabbit),
                Answer(title: "Кукуруза", type: .turtle)
            ]
        ),
        Question(
            title: "Что вам нравиться делать?",
            type: .multiple,
            answeers: [
                Answer(title: "Плавать", type: .dog),
                Answer(title: "Спасть", type: .cat),
                Answer(title: "Обниматься", type: .rabbit),
                Answer(title: "Есть", type: .turtle)
            ]
        ),
        Question(
            title: "Любите ли поездки на машине?",
            type: .ranged,
            answeers: [
                Answer(title: "Ненавижу", type: .dog),
                Answer(title: "нервничаю", type: .cat),
                Answer(title: "Не замечаю", type: .rabbit),
                Answer(title: "Обожаю", type: .turtle)
            ]
        ),
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
           return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравяться и всегда готовы помочь."
        case .cat:
           return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
           return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
           return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
