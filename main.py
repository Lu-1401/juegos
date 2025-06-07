import os

def menu():
    while True:
        print("\n--- MENÚ DE JUEGOS ---")
        print("1. Juego de Naves Espaciales")
        print("2. Juego de Tanques")
        print("3. Juego de Tetris")
        print("4. Salir")
        opcion = input("Selecciona una opción: ")

        if opcion == '1':
            os.system('python3 "naves_espaciales/naves_espaciales.py"')
        elif opcion == '2':
            os.system('python3 "Tanques/Tanques.py"')
        elif opcion == '3':
            os.system('python3 "Tetris/Tetris.py"')
        elif opcion == '4':
            print("Saliendo del menú...")
            break
        else:
            print("Opción inválida, intenta de nuevo.")

menu()
