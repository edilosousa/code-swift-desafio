
enum Cargos {
    case monitor, professor, coordenador, diretor, assistente
}

struct Colaborador {
    let nome: String
    let matricula: Int
    var salario: Float
    let cargo: Cargos

    func seApresentar() -> String {
        return "Olá! Eu soi o \(nome) e trabalho como \(cargo), minha matricula é \(matricula) e meu salario é \(salario)"
    }
}

var colaboradores: [Colaborador] = []

//cadastrar colaborador

func adicionarColaborador(novoColaborador: Colaborador){
    colaboradores.append(novoColaborador)
    print("Adicionou o colaborador \(novoColaborador.nome) com sucesso!")
}

let novoColab = Colaborador(nome: "João", matricula: 206, salario: 1650.00, cargo:.monitor)
let novoColab2 = Colaborador(nome: "Carlos", matricula: 135 , salario: 5550.00, cargo:.diretor)
let novoColab3 = Colaborador(nome: "Marcos", matricula: 136 , salario: 2550.00, cargo:.assistente)
let novoColab4 = Colaborador(nome: "Paulo", matricula: 137 , salario: 1550.00, cargo:.professor)

adicionarColaborador(novoColaborador: novoColab)
adicionarColaborador(novoColaborador: novoColab2)
adicionarColaborador(novoColaborador: novoColab3)
adicionarColaborador(novoColaborador: novoColab4)

//print(colaboradores)


//remover colaborador

func removerColaborador(matricula: Int){
    for posicao in 0..<colaboradores.count {
        let colaborador = colaboradores[posicao]
        if colaborador.matricula == matricula{
            colaboradores.remove(at: posicao)
            print("O Colaborador com matricula \(matricula) foi removido com sucesso!")
        }
    }
}

// removerColaborador(matricula: 135)
// print(colaboradores)

//listar gastos mensais com todos os colaboradores
func gastoMensais() -> Float {
    var gastoMensais: Float = 0.00
    for posicao in 0..<colaboradores.count{
        let colaborador = colaboradores[posicao]
        gastoMensais += colaborador.salario
    }
    return gastoMensais
}

//listar gastos mensais por cargo
func gastoMensaisPorCargo(cargo: Cargos) ->Float {
    var gastoMensais: Float = 0.00
    for posicao in 0..<colaboradores.count {
        let colaboradorSelecionado = colaboradores[posicao]
        if colaboradorSelecionado.cargo == cargo {
            gastoMensais += colaboradorSelecionado.salario
        }
    }
    return gastoMensais
}

// let gastosAbril = gastoMensaisPorCargo(cargo: .monitor)
// print(gastosAbril)

//lista pessoas por cargos
//func numeroDePessoasPorCargo(cargo: Cargos) {
//    var contador = 0
//    for posicao in..colaboradores.count {
//        let colaboradorSelecionado = colaboradores[posicao]
//        if colaboradorSelecionado.cargo == cargo {
//            contador += 1
//        }
//    }
//    return contador
//}

func listarNomeOrdemAlfabetica() -> [String]{
var nomes:[String] = []
    for posicao in 0..<colaboradores.count {
        
        let colaboradorSelecionado = colaboradores[posicao].nome
        nomes.append(colaboradorSelecionado)
    }
    nomes.sort()
    return nomes
}

// listarNomeOrdemAlfabetica()

func maiorSalario(){
   var salario = colaboradores[0].salario
     for posicao in 0..<colaboradores.count {
        if colaboradores[posicao].salario > salario {
            salario = colaboradores[posicao].salario
        }
        
        
//        if colaboradores[posicao].salario < salario{
//            colaboradores[posicao].salario = salario
//        }
        
//        if colaboradores[posicao].cargo == Cargos.diretor{
//             colaboradores[posicao].salario = salario
//            print("O diretor recebe o maior salario de \(salario) na posicao \(colaboradores[posicao])")
//         }else{
//             colaboradores[posicao].salario = salario
//         }
    }
    print("Maior salário é \(salario)")
}


func teste(){
    let scores = [12,13,14,5]
       var max = scores[0]
       for score in scores {
           if score > max {
            max = score
           }
       }
    print("Maior score é \(max)")
}

//teste()

maiorSalario()
//print(colaboradores)

// A logica é passar um salsrio e verificar qual é o maior salario, como o maior é do diretor então eu só altero a do restante e nao mexo com a do diretor, ta, vou pensar em algo aqui pera. Acho que um jeito mais facil de fazer isso seria:
// eu faria um array com todos os salarios. Separaria o maior deles. entao os proximos salarios nao poderiam ser maior que aquele salario que a gente extraiu do array, entendeu?
// Entendi blz
//aqui