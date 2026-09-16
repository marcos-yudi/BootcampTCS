# Crie um algoritmo em Python onde haverá uma função para realizar
# operações matemáticas. Essa função deve implementar soma, subtração,
# multiplicação e divisão. Como parâmetro, deve receber a informação de
# qual operação deverá ser executado, e a operação deverá ocorrer em todos
# os números recebidos por ela. Por exemplo, caso eu envie a informação de
# soma e os números 2, 5, 8 e 10, o resultado deve ser 2+5+8+10. Não há limites
# de números que devem ser passados como parâmetros, e se o tipo de operação não
# ser informado, deve-se utilizar como padrão a soma. (Verificações: retornar
# erro ao verificar que haverá divisão por 0)

def operacaoMatematica():
    def valores(*args):    
        match operacaoMatematica():
            case 1:
                for each in args:
                    resultado = resultado + each
                return resultado 
            case 2:
                for each in args:
                    resultado = resultado - each
                return resultado
            case 3:
                for each in args:
                    resultado = resultado * each
                return resultado
            case 4:
                for each in args:
                    if args != 0:
                        resultado = resultado / each
                    else:
                        print("O divisor deve ser diferente de zero")
                        break
                return resultado
            case "":
                for each in args:
                    resultado = resultado + each
                return resultado 
            case _:
                return "Escolha uma opção de 1 a 4."
    return print()


operacaoMatematica()
valores(20, 40, 50)