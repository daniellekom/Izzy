//functions rules:
// 1. returns or not -> void or not void(String,int,list etc)
// 2. function name
// 3. receives arguments or not
// 4. what is the function doing?

class Pixel {
  int red;
  int green;
  int blue;

  Pixel(this.red, this.green, this.blue);

  bool isRed() {
    if (green == 0 && blue == 0 && red > 0 && red < 255)
      return true;
    else
      return false;
  }

  bool isGreen() {
    if (blue == 0 && red == 0 && green > 0 && green < 255)
      return true;
    else
      return false;
  }

//
  bool isBlue() {
    if (green == 0 && red == 0 && blue > 0 && blue < 255)
      return true;
    else
      return false;
  }

//
  bool isWhite() {
    if (green == 0 && blue == 0 && red == 0)
      return true;
    else
      return false;
  }

  bool isBlack() {
    if (green == 255 && blue == 255 && red == 255)
      return true;
    else
      return false;
  }
}

void main() {
  Pixel pixel1 = Pixel(9, 0, 0);
  print('is red : ${pixel1.isRed()}');

  Pixel pixel2 = Pixel(0, 2, 0);
  print('is green: ${pixel2.isGreen()}');

  Pixel pixel3 = Pixel(255, 255, 255);
  print('is black: ${pixel3.isBlack()}');
}
