<!--Art 1--->
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
			
			function hasArtOne(){
				const helditems = "<available_items/>".split(" ");
				if(!helditems.includes("ARTONE")){
					document.getElementById("plaq").style.display="block";
				}
			}
			
			
		</script>
	</head>
	<body onload="hasArtOne()">
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		<img id = "img" src="locations/heartpainting.jpg" class="location"/>
	
		<div class="plaqueOne" id="plaq" style="display:none" onclick="artInv()"></div>
		
		<div class="added-item" id="takeArt" style="display:none">
			<p>All the Hearts I Stole by Hydra Bass</p>
			<br>
			<br>
			<p>Inspired by her Sirenic Powers</p>
			<br>
			<p>Detective Hughman: I don't get abstract art...</p>
			<br>
			<br>
			<p> Stolen Hearts Added to Inventory</p>
			<br>
			<br>
			<button onclick="addArtOne()">Continue</button>
		</div>
		
		<div class="side-menu" id="side-bar">
			
			<p><button  onclick="showOptionsP()">
					<img src="character-profiles/profiles.png"
						width="60"
						height="60"/>
				</button>
			</p>
			
			<div id="profiles" style="display:none">
			
				<button id="HUGHMAN-PROFILE">
					<img src="character-profiles/detectivehughman.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="CURRAINE-PROFILE">
					<img src="character-profiles/mrcurraine-neautral.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="HYDRA-PROFILE">
					<img src="character-profiles/hydra-body.png"
						width="50"
						height="50"/>
				</button>
				
				
				<button id="DOUGLAS-PROFILE">
					<img src="character-profiles/douglas.png"
						width="50"
						height="50"/>
				</button>
				
				
				<button id="NESS-PROFILE">
					<img src="character-profiles/ness.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="HANNAH-PROFILE">
					<img src="character-profiles/hannah.png"
						width="50"
						height="50"/>
				</button>
				
				<button  id="HEATHER-PROFILE">
					<img src="character-profiles/heather.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="SEYMORE-PROFILE">
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
				<button id="GUM-WRAPPER" style="display:none">
					<img src="items/gum-wrapper.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="BADGE" style="display:none">
					<img src="items/badge.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="POISON" style="display:none">
					<img src="items/poison.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="LETTER" style="display:none">
					<img src="items/letter.png"
						width="50"
						height="50"/>
				</button>
				
				<button id="MILLIPEDE" style="display:none">
					<img src="items/millipede.png"
						width="50"
						height="50"/>
				</button>
				<button id="DOLLAR" style="display:none">
					<img src="items/dollar.png"
						width="50"
						height="50"/>
				</button>
				<button id="LETTER" style="display:none">
					<img src="items/letter.png"
						width="50"
						height="50"/>
				</button>
				<button id="ARTONE" style="display:none">
					<img src="gallary-imgs/art1.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTWO" style="display:none">
					<img src="gallary-imgs/art2.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTTHREE" style="display:none">
					<img src="gallary-imgs/art3.jpg"
						width="50"
						height="50"/>
				</button>
				<button id="ARTFOUR" style="display:none">
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
