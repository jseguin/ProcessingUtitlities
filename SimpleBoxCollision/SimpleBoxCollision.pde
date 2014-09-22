//Jonathan Seguin, 2014
BoxCollider b1;
BoxCollider b2;
BoxCollider b3;
BoxCollider[] boxes;

void setup() {
    size(400, 400);
    b1 = new BoxCollider(10, 10, 30, 30);
    b2 = new BoxCollider(width/2 - 15, height/2 - 15, 100, 100);
    b3 = new BoxCollider(width/4, height/2-45, 30, 200);
    boxes = new BoxCollider[] {b2, b3};
    noCursor();
}

void draw() {
    background(255);
    
    //BoxCollider b1 moves with mouse    
    b1.setPosition(mouseX, mouseY);
    
    for (BoxCollider box : boxes) {
        if (b1.handleCollision(box)) {
            fill(255, 0 , 0, 150);
        } else {
            fill(0, 0);
        }
        
        rect(box.x, box.y, box.w, box.h);
        rect(b1.x, b1.y, b1.w, b1.h);
    }
}
