import UIkit

struct Prato {
    var nome: String
    var preco: Double
    
}

enum TipoDePrato {
    case entrada
    case pratoPrincipal
    case sobremesa
}

let restaurantes:[String] = ["Res1","Res2","Res3"]

let cardapios:[[Prato]]