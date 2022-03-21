import csv
import os.path

headers = ['first name','last name','id number','course','year','gender']
database = 'SIS_data.csv'

def csv_create():
    existing_file = os.path.isfile('SIS_data.csv')

    if existing_file:
        print("Reloading Data...")
    else:
        with open("SIS_data.csv", "x") as file:
            pass

def add_student():
    print("")
    print("Student Information Form")
    print("")

    data_of_student = []
    for information in headers:
        given_data = input("Enter " + information + ": ")
        data_of_student.append(given_data)

    with open(database, "a") as data:
        writer = csv.writer(data)
        writer.writerows([data_of_student])

    print("Saving Data...")
    input("Press any key to continue...")
    return

def display_students():
    print("Displaying Students.....")

    with open(database, "r") as data:
        reader = csv.reader(data)
        for information in headers:
            print (information, end="\t ||")
        print("\n")

        for rows in reader:
            for student_info in rows:
                print(student_info, end="\t ||")
            print("\n")

    input("Press any key to continue...")

def edit_student():
    id_number = input("Enter Id Number to update: ")
    start_of_data = True
    updated_student_data = []
    with open(database,"r") as data:
        reader = csv.reader(data)
        counter = 0

        for rows in reader:
            if len(rows) > 0:
                if id_number == rows[2]:
                    start_of_data = counter
                    data_of_student = []
                    for information in headers:
                        given_data = input("Enter " + information + ": ")
                        data_of_student.append(given_data)
                    updated_student_data.append(data_of_student)
                else:
                    updated_student_data.append(rows)
                counter = 1

    if start_of_data is not True:
        with open(database, "w") as data:
            writer = csv.writer(data)
            writer.writerows(updated_student_data)
    else:
        print("Student not found....")

    input("Press any key to continue...")

def delete_student():
    id_number = input("Enter Id Number to delete: ")
    updated_student_data = []
    student_exists = 0
    with open(database, "r") as data:
        reader = csv.reader(data)
        for rows in reader:
            if len(rows) > 0:
                if id_number != rows[2]:
                    updated_student_data.append(rows)
                else:
                    student_exists = 1

    if student_exists == 1:
        with open(database, "w") as data:
            writer = csv.writer(data)
            writer.writerows(updated_student_data)
        print("Id Number", id_number, "has been deleted successfully")
    else:
        print("Id Number ", id_number, "is not found in the database")

    input("Press any key to continue...")

def search_student():
    id_number = input("Enter Id Number to search: ")
    with open(database, "r") as data:
        reader = csv.reader(data)
        for rows in reader:
            if len(rows) > 0:
                if id_number == rows[2]:
                    print("First Name: ", rows[0])
                    print("Last Name: ", rows[1])
                    print("Id Number: ", rows[2])
                    print("Course: ", rows[3])
                    print("Year: ", rows[4])
                    print("Gender: ", rows[5])
                    break
        else:
            print("Id Number ", id_number, "is not found in the database")

    input("Press any key to continue...")

while True:
    print("")
    csv_create()
    print("")
    print("This is a Simple Student Information System(SIS) ")
    print("(1) View the Students")
    print("(2) Add a Student")
    print("(3) Edit Student Info")
    print("(4) Delete Student Info")
    print("(5) Search a Student using id_number")
    print("(6) Quit")

    choice = input("Enter your choice: ")
    if choice == "1":
        display_students()
    elif choice == '2':
        add_student()
    elif choice == '3':
        edit_student()
    elif choice == '4':
        delete_student()
    elif choice == '5':
        search_student()
    else:
        break


print("Ending program...")