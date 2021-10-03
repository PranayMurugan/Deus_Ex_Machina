# This program allows you to enter multiple predefined parameters as inputs and outputs the formulas necessary to solve the problem

n = int(input("Enter no. of given parameters: "))
list = []

# list[] creates an empty list

for i in range(n):
    element = input("Input element: ")
    list.append(element)

# list.append() appends/adds elements to the empty list

verify = set(list)

# converts this list[] to a set{} 'verify'

Dictionary = {

    # index of all formulas
}

for index, parameters in Dictionary.items():
    # loops through Dictionary[index][parameters]           (index:parameters)
    Dict1 = (Dictionary[index])
    # Dict1 stores the current working Dictionary[index] and presents all parameters stored in working [index]
    if verify == set(Dict1):
        # verify, checks the presence of input parameters by the user against the current working Dictionary[index]
        print(index)
    else:
        exit
