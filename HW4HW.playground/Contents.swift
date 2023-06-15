// 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case hawaiian
    case meat
}

// 2.Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

enum Ingridients: String {
    case tomato
    case cheeze
    case pepperoni
}

struct Pizza {
    enum PizzaType {
        case margherita
        case pepperoni
        case vegetarian
        case hawaiian
        case meat
    }
    var cost: Double
    var type: PizzaType
    var isThin: Bool
    var add: [Ingridients]
}
//  3.Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

class Pizzeria {
    private var pizza: [Pizza]
    init(pizza: [Pizza]) {
        self.pizza = pizza
    }


// 4.Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

  func addPizza(pizza: Pizza) {
    self.pizza.append(pizza)
 }

    func getMenu() -> [Pizza] {
            return pizza
         }
    }
// 5.Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 let pizza = [Pizza(cost: 100, type: .pepperoni, isThin: true, add: []), Pizza(cost: 100, type: .vegetarian, isThin: true, add: []), Pizza(cost: 90, type: .pepperoni, isThin: false, add: [])]
 let pizzeria = Pizzeria(pizza: pizza)
pizzeria.addPizza(pizza: Pizza(cost: 100, type: .pepperoni, isThin: true, add: []))

