import Foundation
import PlaygroundSupport

class Car {
    var model: String
    let engine: engineType
    var year: Int
    var price: Int
    let color: colorType
    
    
    enum engineType {
        case on
        case of
    }
    
    enum colorType {
        case black
        case white
        case pink
        case red
        case blue
        case orange
    }
    
    init(engine: engineType, color: colorType, year: Int, price: Int, model: String) {
        self.engine = engine
        self.color = color
        self.model = model
        self.price = price
        self.year = year
    }
    
     func addModel(nameModel: String){
        self.model = nameModel
    }
    
     func addYear(yearType: Int){
        self.year = yearType
    }
    
     func addPrice(priceType: Int){
        self.price = priceType
    }
    
    func discription() {
        print("машина модели \(model) года выпуска \(year), стоит \(price)")
        
    }
}

var buggati = Car(engine: .on, color: .black, year: 1990, price: 12000000, model: "veuron")
buggati.discription()


class trunkCar: Car {
    var trunkVolume: Int
    var trunkVolumeOn: trunkVolumeOnCheck
    
    enum trunkVolumeOnCheck {
        case yes
        case no
    }
    
    init(engine: Car.engineType, color: Car.colorType, year: Int, price: Int, model: String, trunkVolume: Int, trunkVolumeOn: trunkVolumeOnCheck) {
        self.trunkVolume = trunkVolume
        self.trunkVolumeOn = trunkVolumeOn
        super.init(engine: engine, color: color, year: year, price: price, model: model)
    }
    
    override func discription() {
        print("Грузовая машина модели \(model) года выпуска \(year), стоит \(price) и имеет объем багажника в \(trunkVolume) литров")
    }
    
    override func addModel(nameModel: String){
       self.model = nameModel
   }
   
    override func addYear(yearType: Int){
       self.year = yearType
   }
   
    override func addPrice(priceType: Int){
       self.price = priceType
   }
}

var camaz = trunkCar(engine: .on, color: .orange, year: 1234, price: 130, model: "xz", trunkVolume: 400, trunkVolumeOn: .yes)
camaz.discription()

class sportCar: Car{
    var numberOfHorsePower: Int
    var spoiler: spoilerCheck
    
    enum spoilerCheck{
        case yes
        case no
    }
    
    init(engine: Car.engineType, color: Car.colorType, year: Int, price: Int, model: String, numberOfHorsePower: Int, spoiler: spoilerCheck) {
        self.numberOfHorsePower = numberOfHorsePower
        self.spoiler = spoiler
        super.init(engine: engine, color: color, year: year, price: price, model: model)
    }
    
    override func discription() {
        print("Cпортивная машина модели \(model) года выпуска \(year), стоит \(price) и имеет \(numberOfHorsePower) лошадиных сил")
    }
    
    override func addModel(nameModel: String){
       self.model = nameModel
   }
   
    override func addYear(yearType: Int){
       self.year = yearType
   }
   
    override func addPrice(priceType: Int){
       self.price = priceType
   }
}

var mozeratti = sportCar(engine: .on, color: .pink, year: 2017, price: 7000000000, model: "levante", numberOfHorsePower: 800, spoiler: .yes)

mozeratti.discription()
