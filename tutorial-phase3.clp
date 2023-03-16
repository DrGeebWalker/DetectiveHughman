<!--TUTORIAL PHASE 3-->
<!---Show Mr. Curraine your badge to be able to investigate--->

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
			<p>Detective Hughman: I am Detective Seabasstian Hughman of the S. E. A. </p>
			<p></p>
			<p>Mr. Curraine: And?</p>
			<p></p>
			<p> Detective Hughman: So, since I am a detective can you let me thorugh now? </p>
			<p></p>
			<p> Mr. Curraine: And you expect me to take your word for it?</p>
			<p></p>
			<p>Detective Hughman: (I should show him my badge.)</p>
			<p></p>
			<p>You can now access your inventory during conversations</p>
			
			<p id="convo">Mr. Curraine: As if I would just take your word for it that you're a detective.</p>
		</div>
			
		
		<div class="side-menu">
		
			<p><button  onclick="showOptionsT()">Talk</button></p>
				<div class="talk-options" id="talk" style="display:none">
					<button onclick="talksix()">I want to examine the body.</button>
					<button onclick="talksevan()">Move. I need to examine the body.</button>
					<button onclick="talkeight()">Who are you?</button>
					
				</div>
				
				<p><button  onclick="showOptionsP()">
					<img src="character-profiles/profiles.png"
						width="60"
						height="60"/>
					</button>
				</p>
				<div id="profiles" style="display:none">
					<button onclick="showsebbie()">
						<img src="character-profiles/detectivehughman.png"
						width="50"
						height="50"/>
					</button>
					<button  onclick="showcurraine2()">
						<img src="character-profiles/mrcurraine-neautral.png"
						width="50"
						height="50"/>
					</button>
				</div>
				
				<!---New option! Tutorial has it's own version to account for player choice of completion later-->
				<p><button onclick="showOptionsIg()">
					<img src="items/inventory.jpg"
						width="60"
						height="60"/>
					</button>
				</p>
				
				<div id="inventory" style="display:none">
					<button onclick="displaywrapper()">
						<img src="items/gum-wrapper.png"
						width="50"
						height="50"/>
					</button>
					
					<button onclick="location='tutorialend'">
						<img src="items/badge.png"
						width="50"
						height="50"/>
					</button>
				</div>
				
				<p><button type="button" onclick="location='pre-gallary'">Back</button></p>
				<p><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
				<p>Made by Gianna Rasmussen</p>
				
			</div>
			
		
	</body>
</html>