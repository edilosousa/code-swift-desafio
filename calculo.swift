func calculoAumento(nivel: Int, salarioAnterior: Float){
    var porcentagem: Float

    if(nivel == 1){
        porcentagem = 0.1
    }else if (nivel == 2){
        porcentagem = 0.2
    }else if (nivel == 3){
        porcentagem = 0.3
    }else{
        porcentagem = 0.4
    }

    
    let diferenca = salarioAnterior * porcentagem
    let salarioAtual = salarioAnterior + diferenca

    print("Parabéns seu salário foi de R$\(salarioAnterior) para o salario atual R$\(salarioAtual) e o seu aumento foi equivalente = R$\(porcentagem*100) e uma 
    diferença em relação ao seu salario anterior de R$\(diferenca)")
}

calculoAumento(nivel: 2, salarioAnterior: 7000)