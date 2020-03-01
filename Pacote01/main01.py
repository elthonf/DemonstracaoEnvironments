import sys
import numpy as np

if __name__ == "__main__":
    print("Olá, sou o pacote 01.")
    print("Estou rodando sob a seguinte versão de Python:")
    print(sys.version)
    print("Versão do numpy:")
    print(np.version.version)

    print("\n")
    print("Modulos disponíveis:")
    help("modules")
    print("Entrega de trabalho: Meu nome é [Elthon Manhas de Freitas]")