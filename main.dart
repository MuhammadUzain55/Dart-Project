import 'dart:io';
import 'student_operations.dart';

void main() {
  List<Map<String, String>> students = [];

//////////////////  Main menu \\\\\\\\\\\\\\\\\\\\

  while (true) {
    print("--------------- Welcome to Student Portal ----------------");
    print("1: Registration");
    print("2: Login");
    print("3: View All Student(Admin)");
    print("4: Exit");

    stdout.write("choose an option: ");

//////////////  Functions calling and user input with if else \\\\\\\\\\\\

    String? choice = stdin.readLineSync();

    if (choice == "1") {
      registrationStudent(students);
    } else if (choice == "2") {
      loginStudent(students);
    } else if (choice == "3") {
      viewAllStudents(students);
    } else if (choice == "4") {
      print("Exiting... Goodbye!");
      break;
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}





