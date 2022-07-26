from process_generator import *
import copy
process_list_fcfs = generate_processes(1000)  # process_generator module
process_list_sjf = copy.deepcopy(process_list_fcfs)
save_to_file()  # process_generator module

"""
Algorytm FCFS
"""
print("Algorytm FCFS:")
print(process_list_fcfs)  # lista procesów przed kolejkowaniem


def fcfs():
    """
    FCFS - First Come First Served
    Funkcja kolejkująca listę procesów wygenerowanych przez moduł process_generator według czasu ich
    nadejścia do procesora.
    """
    waiting_sum = 0
    time_counter = process_list_fcfs[0][0]
    queue = []
    current_process = process_list_fcfs[0]
    process_list_fcfs.remove(current_process)
    while True:
        for item in process_list_fcfs:
            if item[0] == time_counter:
                queue.append(item)
        if current_process[1] == 0:
            current_process = queue.pop(0)
            waiting_sum += current_process[2]
        else:
            current_process[1] -= 1
            if len(queue):
                for i in queue:
                    i[2] += 1
        time_counter += 1
        if len(queue) == 0:
            break
    return waiting_sum / (len(process_list_fcfs)+1)


print(fcfs())  # zwraca średni czas oczekiwania dla algorytmu FCFS
print(process_list_fcfs)  # lista procesów po procesie kolejkowania FCFS

"""
Algorytm SJF
"""
print("Algorytm SJF:")
print(process_list_sjf)


def sjf():
    """
    SJF - Shortest Job First
    Funkcja kolejkująca listę procesów wygenerowanych przez moduł process_generator według długości trwania procesu.
    """
    waiting_sum = 0
    time_counter = process_list_sjf[0][0]
    queue = []
    current_process = process_list_sjf[0]
    process_list_sjf.remove(current_process)
    while True:
        for item in process_list_sjf:
            if item[0] == time_counter:
                queue.append(item)
                queue = sorted(queue, key=lambda x: x[1])
        if current_process[1] == 0:
            current_process = queue.pop(0)
            waiting_sum += current_process[2]
        else:
            current_process[1] -= 1
            if len(queue):
                for i in queue:
                    i[2] += 1
        time_counter += 1
        if len(queue) == 0:
            break
    return waiting_sum / (len(process_list_sjf)+1)


print(sjf())  # zwraca średni czas oczekiwania dla algorytmu SJF
print(process_list_sjf)  # lista procesów po procesie kolejkowania SJF
