print("===================================")
print("   EMPLOYEE PAYROLL MANAGEMENT")
print("===================================")

print("1. View Employees")
print("2. View Payroll")
print("3. Calculate Net Salary")
print("4. Exit")

choice = input("Enter your choice: ")

# Employee data
employees = [
    [101, "Rahul", "IT", "Developer", 45000],
    [102, "Priya", "HR", "HR Executive", 40000],
    [103, "Arun", "Finance", "Accountant", 42000]
]

# Payroll data
payroll = [
    [101, 40000, 5000, 2000],
    [102, 35000, 4000, 1500],
    [103, 38000, 4500, 1800]
]

if choice == "1":

    print("\nEmployee Details")
    print("------------------------------")

    for employee in employees:
        print(
            "ID:", employee[0],
            "|", employee[1],
            "|", employee[2],
            "|", employee[3],
            "| Salary:", employee[4]
        )

elif choice == "2":

    print("\nPayroll Details")
    print("------------------------------")

    for record in payroll:
        employee_id = record[0]
        basic_salary = record[1]
        allowance = record[2]
        deduction = record[3]

        net_salary = basic_salary + allowance - deduction

        print(
            "ID:", employee_id,
            "| Basic:", basic_salary,
            "| Allowance:", allowance,
            "| Deduction:", deduction,
            "| Net:", net_salary
        )

elif choice == "3":

    print("\nNet Salary Calculation")
    print("------------------------------")

    for record in payroll:
        employee_id = record[0]
        basic_salary = record[1]
        allowance = record[2]
        deduction = record[3]

        net_salary = basic_salary + allowance - deduction

        print(
            "Employee ID:", employee_id,
            "| Net Salary:", net_salary
        )

elif choice == "4":

    print("Exiting the program...")

else:

    print("Invalid choice")
