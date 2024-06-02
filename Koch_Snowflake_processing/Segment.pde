class KochLine {
PVector A; // point A, the start
PVector E; // point E, the end

KochLine(PVector a, PVector b) {
A = a.copy(); //start point
E = b.copy(); //end point
}
KochLine[] generate() { // new triangles branching off (iterations)
KochLine[] children = new KochLine[4];

PVector v = PVector.sub(E, A); // total line AE
v.div(3); //div by three for length of segments

PVector B = PVector.add(A, v); // Point B (start at A, move v)
PVector D = PVector.sub(E, v); //Point D (start at E, move v)

v.rotate(-PI/4); // rotate -60 degrees, move to point C
PVector C = PVector.add(B, v); //point C

children[0] = new KochLine(A, B); // segment AB
children[1] = new KochLine(B, C); // segment BC
children[2] = new KochLine(C, D); // segment CD
children[3] = new KochLine(D, E); // segment DE

return children;

}

void show() {
stroke(255);
line(A.x, A.y, E.x, E.y); // draw line PVector a and PVector b (x,y) coordinates
}
}
