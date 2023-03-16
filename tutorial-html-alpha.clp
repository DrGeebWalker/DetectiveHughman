<html>
	<head>
		<title>Detective Hughman and the Tutorial</title>
		<style>
			.playspace {
				position: relative;
				left: 15%;
			}
			
			
			.location
			{
				border:10px solid black;
				position: absolute;
				width: 60%;
			}
			
			.character1
			{
				position: absolute;
				left: 525px;
				bottom: -580px;
				width: 30%;
			}
			
			.character2
			{
				position: absolute;
				left: -40px;
				bottom: -580px;
				width: 30%;
			}
			
			.dialogue-block
			{
				position: absolute;
				border: 3px;
				border-style: solid;
				background-color: white;
				overflow: auto;
				
				left: 325px;
				bottom: -550px;
				width: 300px;
				height:270px;
				
			}
			
			.options-block
			{
				position: absolute;
				background-color: white;
				border: 3px;
				border-style: solid;
				
				left: 662px;
				bottom: -190px;
				width: 200px;
				height: 150px;
				
			}
			
			.button 
			{
				border: 10px;
				color: white;
			}
			
		</style>

	</head>

	<body background="tutorial/dh-bg.png">
	
		<!-- Title of Version -->
		<h1 style="text-align:center"> Detective Hughman and the Tutorial </h1>
		
		
		<div class="playspace">

			<!-- Here is where I need to figure out how to get the game screen -->
			<!-- The src = is going to need to be changable. -->
			<img src="tutorial/background.jpg" class="location"/>
		
			<!-- Now for placing the characters. Which I will also want to be changable. -->
			
			<!---Character 1 will pretty much always be sebbie -->
			<img src="tutorial/detectivehughman.png" class="character1"/>
			
			<!-- The character Sebbie is speaking to -->
			<img src="tutorial/mrcurraine.png" class="character2"/>
			
			<!--- Needs to have the text interchangable -->
			<!-- Here is where the conversation goes -->
			<div class="dialogue-block">
				<p> Figure out how to insert here.</p>
			</div>
			
			<!--- Options for interacting with person-->
			<!--- Needs to have buttons -->
			<div class="options-block">
				<p> Menu Title</p>
				<button type="button">Some Option</button>
			</div>
			
			
			
			
		</div>
		

	</body>
	
</html>