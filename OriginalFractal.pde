private int xChange, yChange;

public void setup()
{
	size(800, 800);
}

public void draw()
{
	background(0);
	thisFractal(400, 400, 300);
	thisFractalTop(400, 400, 300);
	thisFractalLeft(400, 400, 300);
	thisFractalRight(400, 400, 300);
	fill(0, 255, 0);
	noFill();
	ellipse(400, 400, 300, 300);
}

public void thisFractal(float x, float y, float rasmer)
{
	stroke(255, 0, 255);
	noFill();
	
	if(rasmer <= 50/32)
	{
		ellipse(x, y, rasmer, rasmer);
		
	}
	else 
	{
		ellipse(x, y, rasmer, rasmer);
		thisFractal(x, y+rasmer/1.5, rasmer/2);
		thisFractal(x-rasmer/1.5, y, rasmer/2);
	}
 }

 public void thisFractalTop(float x, float y, float rasmer)
 {
 	stroke(0, 255, 255);
 	noFill();

 	if(rasmer <=50/32)
 		ellipse(x, y, rasmer, rasmer);
 	else
 	{
 		ellipse(x, y, rasmer, rasmer);
 		thisFractalTop(x, y-rasmer/1.5, rasmer/2);
		thisFractalTop(x+rasmer/1.5, y, rasmer/2);
 	}
 } 	

 public void thisFractalLeft(float x, float y, float rasmer)
 {
 	stroke(255, 0, 0);
 	noFill();

 	if(rasmer <=50/32)
 		ellipse(x, y, rasmer, rasmer);
 	else
 	{
 		ellipse(x, y, rasmer, rasmer);
 		thisFractalLeft(x-rasmer/1.5, y, rasmer/2);
		thisFractalLeft(x, y-rasmer/1.5, rasmer/2);
 	}
 } 	
public void thisFractalRight(float x, float y, float rasmer)
 {
 	
 	noFill();

 	if(rasmer <=50/32)
 	{
 		stroke(0, 255, 0);
 		ellipse(x, y, rasmer, rasmer);
 	}
 	
 	else
 	{
 		stroke(255, 255, 0);
 		ellipse(x, y, rasmer, rasmer);
 		thisFractalRight(x+rasmer/1.5, y, rasmer/2);
		thisFractalRight(x, y+rasmer/1.5, rasmer/2);
 	}
 } 	