<!---Phase 1 on the tutorial
An unknown man stops you from investigating the body
You have to ask who he is to unlock next phase --->

<html>
	<head>
		<title>Detective Hughman and the Art Gallary Murder</title>
		<link rel="stylesheet" href="style.css">
		<script src="detectiveJScript.js"></script>

	</head>

	<body>
	
		<!-- Title of Version -->
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		<img src="locations/tutorial-screen.jpg" class="location"/>
		
		<img src="character-profiles/detectivehughman.png" class="character1"/>
		
		<img src="character-profiles/mrcurraine-angry.png" class="character2"/>
		
		<p class="dialogue-block" id="convo">
			????: What do you think you're doing?<br>
		</p>
			
		
		<div class="side-menu">
			<!--This is what allows you to talk--->
			<p><button  class="talker" onclick="showOptionsT()">Talk</button></p>
				<div id="talk" class="talk-options" style="display:none">
					<button onclick="talkone()">I want to examine the body.</button>
					<p></p>
					
					<button onclick="talktwo()">Move. I need to examine the body.</button>
					<p></p>
					
					<button onclick="location='tutorial2'">Who are you?</button>
					
				</div>
				
				
				<p style="text-align:center"><button class="back" onclick="location='pre-gallary'">Back</button></p>
				
				<p></p>
				<p></p>
				<p style="text-align:center"><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
				<p style="text-align:center">Made by Gianna Rasmussen</p>
				
			</div>
			
		
	</body>
</html>