<!--TUTORIAL PHASE 2-->
<!---You have to tell Mr. Curraine you are a detective
by showing him your profile--->

<html>
	<head>
		<title>Detective Hughman and the Art Gallary Murder</title>
		<link rel="stylesheet" href="style.css">
		<script src="detectiveJScript.js"></script>

	</head>

	<body>
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		<img src="locations/tutorial-screen.jpg" class="location"/>
		
		<img src="character-profiles/detectivehughman.png" class="character1"/>
		
		<img src="character-profiles/mrcurraine-angry.png" class="character2"/>
		
		<div class="dialogue-block">
			<p>Detective Hughman: Who are you?
			<p> 
				Mr. Curraine: I am the Curator of this gallary Allan Curraine. 
				Now please step away from the body.
			</p>
			<p>
				Detective Hughman: (I should try showing Mr. Curraine
				 one of my profiles to see if that convinces him to let me through.)
			</p>
			<p></p>
			<p> You can now access your profiles list during conversations.</p>
			<p></p>
			<p> Mr. Curraine added to your profiles list.</p>
			<p></p>
			<p id="convo">Mr. Curraine: Please stop wasting my time and just wait for the police to arrive.<br></p>
		</div>
			
		
		<div class="side-menu">
		
			<p><button class="talker" onclick="showOptionsT()">Talk</button></p>
				<div class="talk-options" id="talk" style="display:none">
					<p><button onclick="talkthree()">I want to examine the body.</button></p>
					<p><button onclick="talkfour()">Move. I need to examine the body.</button></p>
					<p><button onclick="talkfive()">So, Mister Allan Curraine, you work here?</button></p>
					
				</div>
				
				<!--New Options block. Tutorial has it's own version of showOptionsP 
				because the others work differently to account for player choice of order-->
				<p>
					<button  onclick="showOptionsP()">
						<img src="character-profiles/profiles.png"
						width="60"
						height="60"/>
					</button>
				</p>				
				<div id="profiles" style="display:none">
					<button onclick="location='tutorial3'">
						<img src="character-profiles/detectivehughman.png"
						width="50"
						height="50"/>
					</button>
					<button  onclick="showcurraine()">
						<img src="character-profiles/mrcurraine-neautral.png"
						width="50"
						height="50"/>
					</button>
				</div>
				
				<p style="text-align:center"><button class="back" onclick="location='pre-gallary'">Back</button></p>
				
				<p style="text-align:center"><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
				<p style="text-align:center">Made by Gianna Rasmussen</p>
				
			</div>
			
		
	</body>
</html>