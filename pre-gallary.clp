<!---Page where you have to clickity click -->

<html>
	<head>
		<title>Detective Hughman and the Art Gallary Murder</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
	
		<h1 style="text-align:center"> Detective Hughman and the Art Gallary Murder </h1>
		
		
		<img src="gallary-imgs/artgallary.jpg" class="location"/>
		
		<!--All that background images and art-->
		<img src="gallary-imgs/art1.jpg"  class="art1"/>
			
		<img src="gallary-imgs/art2.jpg" class="art2"/>
		
		<img src="gallary-imgs/art3.jpg" class="art3"/>
		
		<img src="gallary-imgs/art4.jpg" class="art4"/>
		
		<img src="gallary-imgs/trashcan.png" class="trashcan"/>
		
		<!---When you hover over the people they speak.-->
		<!--When you hover over dead body it tells you to click to investigate-->

		<!--Left of Body-->
		<div class="hannah">
			<img src="gallary-imgs/hannah-f.png" class="hannahf">
		
			<span class="hannah-text">
				God this is the worst art unveiling I have ever been to.
			</span>
		</div>
		
		<div class="heather">
			<img src="gallary-imgs/heather-f.png" class="heatherf">
			<span class="heather-text">
				Oh no! This isn't insperational at all!!!
			</span>
		</div>
		
		<div class="seymore">
			<img src="gallary-imgs/seymore-f.png" class="seymoref"/>
		
			<span class="seymore-text">
				Guess we won't be meeting for our Tuesday mamosas next week...
			</span>
		</div>
		
		<!--Right of the body-->
		<div class="ness">
			<img src="gallary-imgs/ness-f.png" class="nessf"/>
			<span class="ness-text">
				I knew we shouldn't have come here.
			</span>
		</div>
		
		<div class="douglas">
			<img src="gallary-imgs/douglas-f.png" class="douglasf"/>
			<span class="douglas-text">
				This is so going to make the tabloids.
			</span>
			
		</div>
		
		<div class="mrcurraine">
			<img src="gallary-imgs/mrcurraine-f.png" class="mrcurrainef"/>
			<span class="curraine-text">
				The police are on their way but they won't be here for another hour.
			</span>
		</div>
		
		<!---clickable takes to turorial -->
		<img src="gallary-imgs/hydra.png" class="hydrabody" onclick="location='tutorial'"/>
		
		<div class="side-menu">
		
			<h3> Objective: Investigate Body </h3>
			<h4>Detective Hughman: I should invesitage the body.</h4>
			<p></p>
			
			<p>Click on the body to begin your invesitagtion.</p>
			<p></p>
			
			<p><button class="restart" type="button" onclick="location='start'">Restart Game</button></p>
			<p>Made by Gianna Rasmussen</p>
		</div>
		
	
	</body>


</html>