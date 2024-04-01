// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// School class
class School {
  String schoolName;
  List<Student> students;
  List<Teacher> teachers;

  School(this.schoolName, this.students, this.teachers);

  void showSchoolInfo() {
    print('School: $schoolName');
    print('Students:');
    for (var student in students) {
      student.printStudentInfo();
    }
    print('Teachers:');
    for (var teacher in teachers) {
      teacher.printTeacherInfo();
    }
  }
}

void main() {
  // Create students
  var students = [
    Student('Phoebe', 16, '10th Grade'),
    Student('Alfred Balazire', 17, '11th Grade'),
    Student('Josephat', 15, '9th Grade')
  ];

  // Create teachers
  var teachers = [
    Teacher('Mr. Allen', 35, 'Dart Programming'),
    Teacher('Mr. Erick', 40, 'Web Development'),
    Teacher('Mr. Monga', 30, 'Database Course')
  ];

  // Create school object
  var school = School('PLP Africa', students, teachers);

  // Print school information
  school.showSchoolInfo();
}
