import 'dart:io';

////////////  Registration function \\\\\\\\\\\\\\\\
registrationStudent(List<Map<String, String>> students) {
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

