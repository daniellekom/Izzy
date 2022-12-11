void main() {
  int fizzBuzz(String value) {
    if (value == "fiz") {
      return 3;
    } else if (value == "buz") {
      return 5;
    } else {
      return -1;
    }
  }

  print("${fizzBuzz("lksdj")}");
}

//function that receive fizz or buzz String or else...
//in case fiz return 3
//in case buz return 5
//else return -1

//functions rules:
// 1. returns or not -> void or not void(String,int,list etc)
// 2. function name
// 3. receives arguments or not
// 4. what is the function doing?
