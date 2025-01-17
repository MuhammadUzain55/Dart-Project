import 'dart:io';

////////////  Registration function \\\\\\\\\\\\\\\\
registrationStudent(List<Map<String, String>> students) {
  print("------------- Welcome to Registration Form --------------");
///// User sy name lena \\\\\
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

//// User sy email lena \\\\\
  stdout.write("Enter your email: ");
  String? email = stdin.readLineSync();

//// User sy password lena \\\
  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  /// Check krna email exist tou nhi krti \\\
  bool emailExist = students.any((student) => student["email"] == email);

  if (emailExist) {
    print("Email already registered. Try another one.");
  } else {
    students.add({
      "id": (students.length + 1).toString(),
      "name": name ?? "",
      "email": email ?? "",
      "password": password ?? "",
    });
    print("Registration successful!");
  }
}

///////////////////  Login function \\\\\\\\\\\\\\\\\\\\\\\\\
loginStudent(List<Map<String, String>> students) {
  print("---------------- Welcome to Login Page ----------------");
  /// User sy email lena \\\
  stdout.write("Enter your email: ");
  String? email = stdin.readLineSync();

  /// User sy password lena \\\
  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  /// Email or password match krna \\\
  var student = students.firstWhere(
      (student) => student["email"] == email && student["password"] == password,
      orElse: () => {});

  /// If else laga kr check krna student exist krta h \\\
  if (student.isNotEmpty) {
    print("Login successful! Welcome ${student["name"]}.");
  } else {
    print("Invalid email or password.");
  }
}

////////////////  View all students function \\\\\\\\\\\\\\\\\\\\\\
viewAllStudents(List<Map<String, String>> students) {
  print("------------ Registered Students ------------");
  for (var student in students) {
    print(
        "ID: ${student["id"]}, Name: ${student["name"]}, Email: ${student["email"]}");
  }
}
