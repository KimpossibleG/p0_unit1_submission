// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Tyler Keating
//  2. Kim Girard


// 1. "YOU SIGNED... WHO?!"

 var jeffBridges = {
    name: "Jeff Bridges",
    age: 64,
    quote: "I go by dude, or duder, or duderino."
 }
 
 var pattonOswalt = {
    name: "Patton Oswalt",
    age: 45,
    quote: "A failure pile in a sadness bowl."
} 


// 2. "Here they Come!"
var adamSandler = {
    name: "Adam Sandler",
    age: 47,
    quote: "That's your home! Are you too good for your home?!"
}

var kristenBell = {    
    name: "Kristen Bell",
    age: 33,
    quote: "Do you wanna build a snowman?"
}

var jimCarrey = {    
    name: "Jim Carrey",
    age: 52,
    quote: "...So you're telling me there's a chance? YEAH!"
}

var clients = [jeffBridges, pattonOswalt, adamSandler, kristenBell, jimCarrey]


// 3. "TIME IS MONEY!"

//YOUR CODE HERE!
function Client(name, age, quote){
  this.name = name;
  this.age = age;
  this.quote = quote;
}

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";





// 4. "SHOW 'EM OFF!"

function Stars(clients) {
    for (var i=0; i<clients.length; i++) {
        intro = "Introducing " + clients[i].name + " who is" + clients[i].age + " years old, and is best known for saying, \"" + clients[i].quote + "\"";
        console.log(intro);
    }
 }
 
 Stars(clients)


// ** BONUS **
