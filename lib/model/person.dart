//class name person
//property id type int,none optional
//property name type string , not optional
//property age type int, not optional
//3 functions:
// 1st: function doesnt return, function name is hello, no arguments, print (my name is $name)
// 2nd: function that returns int; name calculate age ; receives argument(int value); returns calculated age
// 3rd: function returns string ,called "get full name" ,receives String "last name", return "name + lastName";
// 4rd: function that returns a person, name of function copy, receives 3 optional parameters id,name,age; returns a new person;
//4rd: unless if field is null i will take default;


//Field rules:
// Object type name = value
// int          id  =  3

// Person(int id,String name,int age){
//   this.id = id;
//   this.name = name;
//   this.age = age;
// }

//functions rules:
// 1. returns or not -> void or not void(String,int,list etc)
// 2. function name
// 3. receives arguments or not
// 4. what is the function doing?

class Person{
  int id;
  String name;
  int age;
  //     int? id,String? name,int? age
  Person(this.id, this.name, this.age); // constructor!!!!!!!

  void hello(){
    print("hello my name is $name");
  }

  int calculatedAge(int value){
    return age + value;
  }

  String getFullName(String lastName){
    return "$name $lastName";
  }

  Person copy(int? id,String? name,int? age){
    // Person person1 = Person(1, "joe", 18);
    Person person1 = Person(id ?? this.id,name ?? this.name ,age ?? this.age);
    return person1;
  }

  @override
  String toString() {
    return 'Person{id: $id, name: $name, age: $age}';
  }
}
// 4rd: function that returns a person, name of function copy, receives 3 optional parameters id,name,age; returns a new person;
//4rd: unless if field is null i will take default;



