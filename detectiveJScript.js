////Start-page

var shots = ["intro-sequence/shot1.jpg","intro-sequence/shot2.jpg", "intro-sequence/shot3.jpg", 
			"intro-sequence/shot4.jpg", "intro-sequence/shot5.jpg", "intro-sequence/shot6.jpg",
			"intro-sequence/shot7.jpg"];
var x = 0;
			
function playSequence(){
	var shot = document.getElementById("img");
	img.src = shots[x];
	x++;
				
	if(x > shots.length){
		location="pre-gallary"
	}
				
	setTimeout("playSequence()", 1000);
				
}

///add things 

////function addPoison(){location="addPoison"}

function poisonInv(){
	document.getElementById("takePoison").style.display="block";
}

function addPoison(){
	location="addPoison"
}


function addMill(){
	document.getElementById("foundMilli").style.display="block";
}

function addMillipede(){
	location="addMilli"
}


function artInv(){
	document.getElementById("takeArt").style.display="block";
}

function addArtOne(){
	location="addArt1"
}


function addArtTwo(){
	location="addArt2"
}

function addArtThree(){
	location="addArt3"
}

////Tutorialphases
function talkone(){
	document.getElementById("convo").innerHTML += "Detective Hughman: I want to examine the body. <br><br>";
	document.getElementById("convo").innerHTML += "???? : I can't let you do that. We are waiting for the police to arrive. <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I guess asking to see the body isn't enough.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I need to try a different tactic.)<br>";
	}
			
function talktwo(){
	document.getElementById("convo").innerHTML += "Detective Hughman: Move. I need to examine the body. <br><br>";
	document.getElementById("convo").innerHTML += "????: Professionals can handle that, young man. The police are on their way. <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I guess demanding to examine the body isn't enough.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Maybe I can try a nicer approach?)<br>";
}
		
function talkthree()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: I want to examine the body. <br> <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine : No. <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Oh man, I thought that would work.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I need to try a different tactic.)<br><br>";
	
}

function talkfour()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: Move. I need to examine the body. <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: And I need to not have a corpse on my floor. <br> <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (What do I say to that?!)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Maybe I can try a nicer approach?)<br><br>";

}

function talkfive()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: So, Mister Allan Curraine, you work here? <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: Yes, like I told you, I am the Curator of this gallary.";
	document.getElementById("convo").innerHTML += "Now please leave me alone. <br> <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I should try showing Mr. Curraine";
	document.getElementById("convo").innerHTML += " one of my profiles to see if that convinces him to let me through.)<br><br>";
}

function talksix()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: I want to examine the body. <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine : I noticed. <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I guess asking to see the body isn't enough.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I need to try a different tactic.)<br>";
	
}

function talksevan()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: Move. I need to examine the body. <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: ...... <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (He's not even going to respond?!)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Maybe I can try a nicer approach?)<br>";

}

function talkeight()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: As the Curator of this place,";
	document.getElementById("convo").innerHTML += " I am sure you want to see things handled as quickly as possible.<br><br>'";
	document.getElementById("convo").innerHTML += "Mr. Curraine: Yes. By the police. <br> <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: :< <br>";
}

function showsebbie()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: I am Detective Seabasstian Hughman of the S. E. A. <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: And? <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: So, since I am a detective can you let me thorugh now? <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: And you expect me to take your word for it?<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (I should show him my badge.)<br>";
	document.getElementById("convo").innerHTML += "You can now access your inventory during conversations.";
}


function showcurraine()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: Sooo...you're the Currator here? <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: Yes, which is why it's my duty to make sure the crime sceene is not contaminated until the police arrive.<br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: What if I draw you a picture?<br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: ....no.<br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Drats! I really thought that would work.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (There has to be something else I can do...)<br><br>";
}

function showcurraine2()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: You are really stubborn. <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: So are you. <br><br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: Have you thought about letting me see the body in exchange for a picture? <br><br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: No.<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (Drats! I really thought that would work.)<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (There has to be something else I can do...)<br>";
}
		
function displaywrapper()
{
	document.getElementById("convo").innerHTML += "Detective Hughman: TAKE THAT!! <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: ???? <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: ????<br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: A gum wrapper? <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: There's a joke on it! <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: What kind of art are ghosts into?....<br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: Well? <br>";
	document.getElementById("convo").innerHTML += "Mr. Curraine: ...please just wait for the police to arrive. <br>";
	document.getElementById("convo").innerHTML += "Detective Hughman: (That joke doesn't make any sense.) <br>";
	

}

function showOptionsT() {
	var x = document.getElementById("talk");
	if (x.style.display === "none"){
		x.style.display = "block";
	}else{
		x.style.display = "none";
	}
}

function showOptionsP() {
	var x = document.getElementById("profiles");
	if (x.style.display === "none"){
		x.style.display = "block";
	}else{
		x.style.display = "none";
	}
}

function showOptionsIg() {
	var x = document.getElementById("inventory");
	if (x.style.display === "none"){
		x.style.display = "block";
	}else{
		x.style.display = "none";
	}
}



///Show options

		
function showOptionsI() {
	var x = document.getElementById("inventory");
	if (x.style.display === "none"){
		x.style.display = "block";
	}else{
		x.style.display = "none";
	}
	showInventory();
}	

function closeDispay(idOfDis){
	document.getElementById(odOfDis).style.display="none";
}

function closeDisplay(){
	document.getElementById("talkself").style.display="none";
}

///Talking in investigate-body area
function addSelfTalk(){
	document.getElementById("foundBody").style.display="block";
	document.getElementById("identify").innerHTML += "Detective Hughman: Yup she's dead alright. <br> <br>";
	document.getElementById("identify").innerHTML += "Detective Hughman: This is a good place to work out the details of this case. <br> <br>";
	document.getElementById("identify").innerHTML += "Detective Hughman: If I think about an item or person here, I can review what I know. <br><br>";
}


function closeTalk(){
	document.getElementById("foundBody").style.display="none";
}

function peptalk(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I am Detective Seabasstian Hughman.<br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: I can definetely solve this case!<br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: Maybe...3: <br> <br>";
}

function currator(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: Mr. Allan Curraine. <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: He's the currator of this place! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: And is pretty stubborn. <br> <br>";
}

function whothis(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I have no idea who this is. <br><br>";
}
function currator(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: Mr. Allan Curraine. <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: He's the currator of this place! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: And is pretty stubborn. <br> <br>";
}

function avenger(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: See this badge? <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: This proves I'm going to solve your murder. <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: Or well that I am qualified to I guess?<br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: I think! :D <br><br>";
}

function gummysituation(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I picked this up from the ground earlier. <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: I kept it because I like the jokes on the inside. <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: :O *GASP* O: <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: This is probably the killers! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: Only killers litter... <br><br>";
}

function poisoned(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: *GASP* <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: What if..... <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughamn: SHE WAS POISONED?!<br><br>";
	document.getElementById("think").innerHTML+= "End of Demo<br><br>";
}


function millisnack(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I don't think this little guy killed her.... <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: *GASP* <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: Unlessss.... <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: DID YOU DO IT MILLIPEDE?! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: D,: I THOUGHT WE WERE FRIENDS! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: Hehe I should probably get back to work... <br><br>";
}


function noUse(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I don't need that right now.<br><br>";
}


function throwWrapper(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: I throw nothing away during cases!<br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: All trash could be evidance after all! <br><br>";
	document.getElementById("think").innerHTML+= "Detective Hughman: I wonder if that's why my house has bugs? <br><br>";
}

function throwBadge(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: You only throw your badge out by accident once. <br><br>";
		document.getElementById("think").innerHTML+= "Detective Hughman: .....maybe twince. <br><br>";
			document.getElementById("think").innerHTML+= "Detective Hughman: But never three times! <br><br>";
}

function throwPoison(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: This is where I found the poison bottle. <br><br>";
}

function throwMilli(){
	document.getElementById("talkself").style.display="block";
	document.getElementById("think").innerHTML+= "Detective Hughman: >:( <br><br>";
		document.getElementById("think").innerHTML+= "Detective Hughman: I would never put this little guy in the trash. <br><br>";
}