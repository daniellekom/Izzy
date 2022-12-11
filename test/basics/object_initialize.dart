import 'package:golden_hour/model/animal.dart';
import 'package:golden_hour/model/person.dart';

// Hip              Stack
// x,y,b      -->     "puppy"
//  z                 "puppy"
//person1     -->     Person(2, "Dani", 31)
//person2 ,person3     -->     Person(2,"sahar",38)
//animal 1                Animal("1", "cat", 3.5, 4)
//animal 2 , animal 3              Animal("2", "lucky", 2.5, 4)


void main() {
  String x = "puppy";
  String y = x;
  String b = y;
  String z = "puppy";

  //object type  field name = value
  Person person1 = Person(2, "Dani", 31);
  Person person2 = Person(2, "Moshe", 38);
  Person person3 = person2;

  person2.name = "sahar";
  // print("person2 $person2");
  // print("person3 $person3");

  Animal animal1 = Animal("1", "fluffy", 3.5, 4);
  Animal animal2 = Animal("2", "lucky", 2.5, 4);
  Animal animal3 = animal1;
  animal3 = animal2;
  animal1.name = "cat";
  print("animal1 $animal1");
  print("animal2 $animal2");
  print("animal3 $animal3");
}
