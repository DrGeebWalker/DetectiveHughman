<!---Page where you have to clickity click -->
<!---Basically where all the actions to move are --->
<html>
	<head>
		<title>Detective Hughman and the Art Gallary Murder</title>
		<link rel="stylesheet" href="style.css">
		<script src="detectiveJScript.js"></script>
		<script>
			
			function showInventory(){
				const helditems = "<available_items/>".split(" ");
				
				
				
				var x;
				for (var i = 0; i < helditems.length ; i++){
					x = document.getElementById(helditems[i]);
					
					if (x.style.display === "none"){
						x.style.display = "block";
					}
				}
			}
			
			
		</script>
	</head>
	
	<body>
	
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		<img id = "img" src="gallary-imgs/artgallary.jpg" class="location"/>
		
		<img id = "img" src="gallary-imgs/art1.jpg"  class="art1" onclick="location='painting1'"/>
			
		<img id = "img" src="gallary-imgs/art2.jpg" class="art2" onclick="location='painting2'"/>
		
		<img id = "img" src="gallary-imgs/art3.jpg" class="art3" onclick="location='painting3'"/>
		
		<img id = "img" src="gallary-imgs/art4.jpg" class="art4" onclick="location='painting4'"/>
		
		<div class="trashcandiv" onclick="location='trashcan'"></div>
		
		
		<img src="gallary-imgs/hydra.png" class="hydrabody" onclick="location='investigate'"/>
		
		<div class="dialogue-block" id="talkself" style="display:none">
			<p id="think"></p>
			<p><button onclick="closeDisplay()">Continue</button></p>
		</div>
		
		
		<div class="side-menu" id="side-bar">
			
			<p><button  onclick="showOptionsP()">
					<img src="character-profiles/profiles.png"
						width="60"
						height="60"/>
				</button>
			</p>
			
			<div id="profiles" style="display:none">
			
				<button id="HUGHMAN-PROFILE" onclick="noUse()">
					<img src="character-profiles/detectivehughman.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="CURRAINE-PROFILE" onclick="noUse()">
					<img src="character-profiles/mrcurraine-neautral.png"
						width="50"
						height="50"/>
				</button>
				
				
				<button id="DOUGLAS-PROFILE" onclick="noUse()">
					<img src="character-profiles/douglas.png"
						width="50"
						height="50"/>
				</button>
				
				
				<button id="NESS-PROFILE" onclick="noUse()">
					<img src="character-profiles/ness.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="HANNAH-PROFILE" onclick="noUse()">
					<img src="character-profiles/hannah.png"
						width="50"
						height="50"/>
				</button>
				
				<button  id="HEATHER-PROFILE" onclick="noUse()">
					<img src="character-profiles/heather.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="SEYMORE-PROFILE" onclick="noUse()">
				<img src="character-profiles/seymore.png"
						width="50"
						height="50"/>
				
				
				</button>
			</div>
				
				
			<p><button onclick="showOptionsI()">
					<img src="items/inventory.jpg"
						width="60"
						height="60"/>
				</button>
			</p>
			
			<div id="inventory" style="display:none">
				<button id="GUM-WRAPPER" style="display:none"
				onclick="noUse()">
					<img src="items/gum-wrapper.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="BADGE" style="display:none"
				onclick="noUse()">
					<img src="items/badge.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="POISON" style="display:none"
				onclick="noUse()">
					<img src="items/poison.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="LETTER" style="display:none"
				onclick="noUse()">
					<img src="items/letter.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="MILLIPEDE" style="display:none"
				onclick="noUse()">
					<img src="items/millipede.png"
						width="50"
						height="50"/>
				</button>
				<button id="DOLLAR" style="display:none"
				onclick="noUse()">
					<img src="items/dollar.png"
						width="50"
						height="50"/>
				</button>
				<button id="ARTONE" style="display:none"
				onclick="noUse()">
					<img src="gallary-imgs/art1.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTWO" style="display:none"
				onclick="noUse()">
					<img src="gallary-imgs/art2.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTHREE" style="display:none"
				onclick="noUse()">
					<img src="gallary-imgs/art3.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTFOUR" style="display:none"
				onclick="noUse()">
					<img src="gallary-imgs/art4.jpg"
						width="50"
						height="50"/>
				</button>
			</div>
			
			<p> Go To </p>
			<p><button class="gohall" type="button" onclick="location='hall'">Hallway</button></p>
			<p><button class="gorefreshments" type="button" onclick="location='lounge'">Lounge</button></p>
			<p><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
			<p>Made by Gianna Rasmussen</p>
		</div>
		
		
	
	</body>


</html>