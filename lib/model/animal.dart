//functions rules:
// 1. returns or not -> void or not void(String,int,list etc)
// 2. function name
// 3. receives arguments or not
// 4. what is the function doing?


// class name animal
// Properties:
// String id
// String name
// double age
// int legs optional

// functions:
// 1st: void , hello , no args , return print my name is
// 2nd: int , calculate , receives int value, calculates legs + age + value;
// 3rd: animal, copy, receives all animal arguments as optional, returns newAnimal new default values

class Animal{
  String id;
  String name;
  double age;
  int? legs;

  Animal(this.id, this.name, this.age, this.legs);

  void hello(){
    print("my name is $name");
  }

  int calculate(int value){
    // casting
    // return legs + (age as int) + value;
    // if(legs != null){
    //   return legs! + age.toInt() + value;
    // }
    return legs??0 + age.toInt() + value; //-->crash!!!
  }

  Animal copy(String? id, String? name, double? age, int? legs){
     Animal animal1 = Animal(id ?? this.id, name ?? this.name, age ?? this.age, legs ?? this.legs);
     return animal1;
  }

  @override
  String toString() {
    return 'Animal{id: $id, name: $name, age: $age, legs: $legs}';
  }
}

