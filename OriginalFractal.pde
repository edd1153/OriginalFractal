public void setup()
{
 size(1000, 1000);
 ellipseMode(CENTER);
}

public void draw()
{
	background(0);
	//Cloud formation
	myFractalClouds(500, 150, 200, 150);
	myFractalClouds(800, 150, 200, 150);
	myFractalClouds(200, 150, 200, 150);
	//Rainbow formation
	myFractalRainbow(0, 800, 300, 255, 0, 0);
	myFractalRainbow(1000, 800, 300, 0, 255, 0);
	myFractalRainbow(200, 700, 200, 255, 125, 0);
	myFractalRainbow(800, 700, 200, 0, 0, 255);
	myFractalRainbow(300, 600, 200, 255, 255, 0);
	myFractalRainbow(700, 600, 200, 135, 0, 255);
	myFractalRainbow(500, 550, 200, (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
}

public void myFractalClouds(int x, int y, int siz, int coloring)
{
	 fill(coloring);
	 ellipse(x, y, siz, siz);
	 if (siz > 20){
	   myFractalClouds(x - siz / 2, y, siz / 2, coloring);
	   myFractalClouds(x + siz / 2, y, siz / 2, coloring);
	 }
}

public void myFractalRainbow(int x, int y, int siz, int color1, int color2, int color3)
{
	fill(color1, color2, color3);
	ellipse(x, y, siz, siz);
	if (siz > 30){
		myFractalRainbow(x - siz / 2, y, siz / 2, color1, color2, color3);
		myFractalRainbow(x + siz / 2, y, siz / 2, color1, color2, color3);
	}
}
