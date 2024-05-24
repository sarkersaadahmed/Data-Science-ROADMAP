#number and calculus attributes
import numpy as np
import sympy as smp
import matplotlib.pyplot as plt
#quantum computing attributes
import qiskit
from qiskit import *
from qiskit.visualization import plot_histogram
#define the deutsch jotza algorithm
def dj_algorithm(case, n):
    #here case indicates whether the algorithm is constant
    #meaning there are all the values of 0 or all the values of 1
    #or balanced, meaning 1/2 of the output values are 0 and
    #half of the output values are 1
    oracle_qc = QuantumCircuit(n+1) #quantum circuit on n+1 qubit because 
    #for the qubit y, or qubit 1, it will output the qubit itself CNOT f(x)
    if case == 'balanced': #firstly if the case is balanced
        for qubit in range(n): #for every qubit with the range 0 to some qubit value n
            oracle_qc.cx(qubit, n) #we add a controlled not gate for each of the 
            #n input qubit because (n+1) is the TOTAL qubit
            #n is the number of input qubits while (n+1)th qubit is the last
            #output qubit 
            #for example if we have 5 qubits in total 4 are the inputs
            #and the 5th qubit is the last qubit
    if case == 'constant':
        output = np.random.randint(2)
        if output == 1:
            oracle_qc.x(n)
        #if it is at |1> then there will be that controlled not gate
        #process but if 0, it will output the same thing for |0> no change
        #for |1> it is |1 + f(x)>
    oracle_gate == oracle_qc.to_gate()
    oracle_gate.name() == 'Oracle'
    return oracle_gate

def new_dj_algorithm(n, case = 'random'): #i have to create another dj_algorithm
    dj_cicruit = QuantumCircuit(n+1, n) #here I will have n+1 total TOTAL
    #qubits and n classical qubits because I must measure the estimation 
    #time process for the quantum processor to ouput classically
    for qubit in range(n):
        dj_cicruit.h(qubit) #if we look at the 
        #deutsch jotza algorithm we can confirm that
        #for every input qubit [derived as n] every input
        #qubit has one hadamard gate
        
    dj_cicruit.x(n) #now every } |0> input has |x> followed by hadamard gate
    dj_circuit.h(n) #this is the hadamard gate
    if case == 'random':
        random = np.random.randint(2)
        #so if the case is random, it means that randomly python
        #program will have 2 input qubits |0> and |1> 
        if random == 0: 
            case == 'constant' #if the random vvalue is 0, it means
            #the overall picture for DJ algorithm is constant
        else: #else the overall picture is balanced
            case == 'balanced'
    
    oracle = oracle_qc(case, n)
    
