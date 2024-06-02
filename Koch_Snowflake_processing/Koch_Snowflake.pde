// Coding Challenge 129: Koch Snowflake
// Daniel Shiffman
// https://thecodingtrain.com/CodingChallenges/129-koch-snowflake.html
// https://youtu.be/X8bXDKqMsXE
// https://editor.p5js.org/codingtrain/sketches/SJHcVCAgN
ArrayList<KochLine> segments;

void addAll(KochLine[] arr, ArrayList<KochLine> list) {
for (KochLine s : arr) { //when loop goes through arr, take every s from KochLine[] arr
list.add(s); // add s to ArrayList<KochLine> list
}
}
PFont f; //set up variable for font

void setup() {
size(1000, 1000); //window size
f = createFont("Arial", 30); //font details
segments = new ArrayList<KochLine>();
PVector a = new PVector(200, 250); // point a of triangle (top left)
PVector b = new PVector(800, 250); // point b of triangle (top right)

float len = PVector.dist(a, b); // distance between a and b
float h = len * sqrt(3) / 2;
PVector c = new PVector(500, 250+h); // point c (bottom)

KochLine s1 = new KochLine(a, b); // Line connecting a and b
KochLine s2 = new KochLine(b, c); // line connecting b and c
KochLine s3 = new KochLine(c, a); // line connecting c and a

//add segments to ArrayList<KochLine> segments
segments.add(s1);
segments.add(s2);
segments.add(s3);

}

void draw() {
background(0); //background to black
translate(0, 100);

stroke(255); //white color
for (KochLine s : segments) { //take every s from segments
s.show(); //show

textFont(f); //font
int indent = 50;
text("Click the window and type a number of iterations. Hit enter to save. ", indent, -30);
text("Input: " + typing, indent, 0);
text("Saved text: " + saved, indent, 30);
}
}
