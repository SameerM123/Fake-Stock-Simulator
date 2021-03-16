float startingMoney = 200.00; //individual starting money
float stockPriceInitial = 50; //initial stock price
float stockPriceDifference; //difference (+/-) stock price
float stockPrice; // stock price value
int amountStock; //amount of stock owned


void setup(){
  frameRate(1); //slows down code
  size(640, 322); //sets window size
  background(255); // background white
  strokeWeight(3); //thinner margin
  rect(1, 1, 638, 320); //black border

   fill(0);
 print(startingMoney + " "); //prints player starting money
 text("Your money: ", 220, 250);
 
 
 textSize(18);
 text("EB Games", 270, 70); //name of stock
 
 textSize(12);
 text("Amount of stock:", 225, 163); //prints individual stock owned
 
fill(255);
rect(290, 232, 100, 25);
  
}

void draw(){
  
  
  fill(255);
rect(290, 232, 100, 25);


//does not allow negative number
if(amountStock < 0){
  amountStock = 0;
}    
  
  
  strokeWeight(1);
  
  //random stock price difference
 stockPriceDifference = random(-200, 100);
   
 stockPrice = stockPrice + stockPriceInitial + stockPriceDifference; 
  
  
//resets stock price if negative  
  if(stockPrice <=0){
    stockPrice = 100;
  }
  
  
strokeWeight(1);
fill(255);
rect(250,175, 100, 50);
rect(328, 145, 25, 25);

  
 fill(0);
  text(stockPrice, 260, 210);


  
 fill(200, 0, 0);
 rect(420, 50, 100, 50);
 
 fill(0, 120, 0);
 rect(100, 50, 100, 50);
  
text(startingMoney, 297, 250);

//buy and sell buttons
 fill(0);
 textSize(18);
 text("Buy", 130, 80); 
 text("Sell", 455,80);
  
  
  text(amountStock, 335, 165);
  

  
}


void mousePressed(){
 
  
 
fill(255);
rect(290, 232, 100, 25);


//code for buttons to function
if(mouseX > 100 && mouseX < 200 && mouseY > 50 && mouseY < 100 ){
   startingMoney = startingMoney - stockPrice;
   amountStock = amountStock + 1;

 }

 
 if(mouseX > 420 && mouseX < 520 && mouseY > 50 && mouseY < 100 && amountStock > 0){
  startingMoney = startingMoney + stockPrice;
  amountStock = amountStock - 1;
}



  
}
