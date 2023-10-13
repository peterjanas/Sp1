String randomString = "";
ArrayList<Integer> intList = new ArrayList<Integer>();

void setup() {
  size(300, 300);
  textSize(20);
  generateRandomString();
  fillIntArray();
  useIntArray();
}


void generateRandomString() {
  // generates a random length String filled with either letter or numbers
  int stringLength = (int) random(5, 10);
  char randomChar;
  fill(0);
  for (int i = 0; i < stringLength; i++) {

    if (random(1) < 0.5) {
      // Generate a random letter (a-z)
      randomChar = char((int) random(97, 123));
    } else {
      // Generate a random number (0-9)
      randomChar = char((int) random(48, 58));
    }
    randomString += randomChar;
  }
  text(randomString, 20, height/2);
}


void fillIntArray() {
  // based on the length of the random generated String add ints to the ArrayList
  for (int i = 0; i < randomString.length(); i++) {
    intList.add((int)random(1, 10));
  }
}


void useIntArray() {
  // makes object based on the random int values in the ArrayList
  fill(255);
  for (int i = 0; i < intList.size(); i++) {
    int currentNum = intList.get(i);
    if (intList.get(i) == 5 || intList.get(i) == 10) {
      triangle(random(width), random(height), random(width), random(height), random(width), random(height));
    } else if (intList.get(i) > 5 && intList.get(i) < 9) {
      rect(random(width), random(height), currentNum * 5, currentNum * 5);
    } else {
      circle(random(width), random(height), currentNum * 5);
    }
  }
}
