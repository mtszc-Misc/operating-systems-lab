import random
import numpy as np
processes = []


def generate_processes(quantity):
    """
    Funkcja przyjmuje argument, wskazujący ile procesów chcemy wygenerować.
    W danej klatce czasu, funcja generuje 0, 1 bądź 2 procesy o losowym czasie trwania, o rozkładzie normalnym,
    wariancji równej 5, oraz punkcie centralnym rozkładu, wynoszącym 10, 20, 30, w zależności od testu.
    Funkcja generuje 3-elementowe listy, które zawierają podstawowe dane procesu: czas przyjścia, czas trwania,
    i czas oczekiwania, który w momencie tworzenia zawsze wynosi 0. Moduł zapewnia również zapisywanie wygenerowanych
    list do pliku tekstowego.
    """
    time_counter = 0
    while len(processes) < quantity:
        create_flag = random.randint(0, 2)  # tworzy lub nie tworzy procesu w danej klatce czasowej
        if create_flag > 0:
            num_of_process = random.randint(1, 3)  # liczba procesów w danym czasie
            for proc in range(num_of_process):
                if len(processes) != quantity:
                    duration_time = abs(int(np.random.normal(30, 5)))
                    process = [time_counter, duration_time, 0]
                    processes.append(process)
                else:
                    continue
        time_counter += 1
    return processes


def save_to_file():
    with open('processes.txt', 'w+') as f:
        for item in processes:
            f.write("%s\n" % item)
