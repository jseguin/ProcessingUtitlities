//Jonathan Seguin, 2014
Timer timer;

void setup () {
    timer = new Timer();
    timer.startTimer();
}

void draw() {
    timer.update();
    println(timer.toString());
}
