//1
// class Car {
//   String brand;
//   int year;
//   // Constructor
//   Car(this.brand, this.year);
//   // Method
//   void displayInfo() {
//     print('Brand: $brand, Year: $year');
//   }
// }
// void main() {
//   // Creating an object
//   Car myCar = Car('Toyota', 2020);
//   myCar.displayInfo(); // Output: Brand: Toyota, Year: 2020
// }
//2------------------------------------------------------------
class Person {
  String name;
  int age;

  // Constructor for the Person class
  Person(this.name, this.age);

  // Method to display person details
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Derived Class
class Teacher extends Person {
  String subject;

  // Constructor for the Teacher class
  Teacher(String name, int age, this.subject) : super(name, age);

  // Method to display teacher details
  @override
  void displayInfo() {
    super.displayInfo(); // Calling the base class method
    print("Subject: $subject");
  }

  // Method specific to Teacher
  void teach() {
    print("$name is teaching $subject.");
  }
}

void main() {
  // Creating an object of the Teacher class
  Teacher teacher = Teacher("John Doe", 35, "Mathematics");

  // Displaying teacher information
  teacher.displayInfo();

  // Calling the method specific to Teacher
  teacher.teach();
}


