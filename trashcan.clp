<!---Trashcan-->
<!--- The bottle of poison can be picked up and added to inventory--->
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
			
			function hasPoison(){
				const helditems = "<available_items/>".split(" ");
				if(!helditems.includes("POISON")){
					document.getElementById("psn").style.display="block";
				}
			}
			
		</script>
	</head>
	
	<body onload="hasPoison()">
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		<img id = "img" src="locations/trashcan.jpg" class="location"/>
		<div class="poison" id="psn" style="display:none" onclick="poisonInv()"></div>
		
		<div class="added-item" id="takePoison" style="display:none">
			<p>Detective Hughman: What's this?</p>
			<br>
			<br>
			<p>Detective Hughman: .....</p>
			<br>
			<p>Detective Hughman: Oh it's poison!</p>
			<br>
			<br>
			<p>Detective Hughman: !!!!!! :0 </p>
			<br>
			<br>
			<p>Detective Hughman: OH SHIT IT'S POISON! </p>
			<br>
			<p>Detective Hughman: ....Just gonna put this in my pocket. It might be a clue.</p>
			<br>
			<p> Empty Bottle of Poison Added to Inventory</p>
			<br>
			<br>
			<button onclick="addPoison()">Continue</button>
		</div>
		
		<div class="dialogue-block" id="talkself" style="display:none">
			<p id="think"></p>
			<p><button onclick="closeDisplay()">Continue</button></p>
		</div>
		
		<div class="side-menu">
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
				onclick="throwWrapper()">
					<img src="items/gum-wrapper.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="BADGE" style="display:none"
				onclick="throwBadge()">
					<img src="items/badge.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="POISON" style="display:none"
				onclick="throwPoison()">
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
				onclick="throwMilli()">
					<img src="items/millipede.png"
						width="50"
						height="50"/>
				</button>
				<button id="DOLLAR" style="display:none" onclick="noUse()">
					<img src="items/dollar.png"
						width="50"
						height="50"/>
				</button>
				<button id="LETTER" style="display:none" onclick="noUse()">
					<img src="items/letter.png"
						width="50"
						height="50"/>
				</button>
				<button id="ARTONE" style="display:none" onclick="noUse()">
					<img src="gallary-imgs/art1.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTWO" style="display:none" onclick="noUse()">
					<img src="gallary-imgs/art2.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTHREE" style="display:none" onclick="noUse()">
					<img src="gallary-imgs/art3.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTFOUR" style="display:none" onclick="noUse()">
					<img src="gallary-imgs/art4.jpg"
						width="50"
						height="50"/>
				</button>
			</div>
			<p><button type="button" onclick="location='gallary'">Back</button></p>
			<p><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
			<p>Made by Gianna Rasmussen</p>
		</div>
		
		
	</body>
</html>