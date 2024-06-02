
String typing = ""; //variable to store text being typed
String saved = ""; //variable to store text when return is it

void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) { //escape character for strings that is replaced with the new line object
  //in string that prints out will print out new line instead of \n
  saved = typing;
      // A String can be cleared by setting it equal to ""
    typing = "";

    Integer count = 0;
    Integer n = Integer.valueOf(saved); //n is the number inputted
    while (count < n) { // n is number of iterations
    ArrayList<KochLine> nextGeneration = new ArrayList<KochLine>();
    for (KochLine s : segments) { //take s from ArrayList segments
    KochLine[] children = s.generate(); //generate the smaller triangles
    addAll(children, nextGeneration); //add values in children array to nextGeneration
    }
    count++; //use the value of count first, THEN increment it by one
    //count is number of times it has been iterated
    segments = nextGeneration;
    }
} else{
// Otherwise, concatenate the String
// Each character typed by the user is added to the end of the String variable.
typing = typing + key;

}
}
