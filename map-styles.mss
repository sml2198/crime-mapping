#crimeclusters {
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
	[value >= 3254] { marker-width:4; }
	[value > 4352] { marker-width:7; }
 	[value > 4696] { marker-width:10; }
	[value > 5499] { marker-width:13; }
	[value > 6396] { marker-width:16; }
	[value > 7606] { marker-width:19; }
	[value > 10288] { marker-width:22; }
  	[value > 11996] { marker-width:25; }
	[value >= 18509] { marker-width:28; }
  	[zoom >= 13] {
    	[value >= 3254] { marker-width:9; }
		[value > 4352] { marker-width:12; }
 		[value > 4696] { marker-width:15; }
		[value > 5499] { marker-width:18; }
		[value > 6396] { marker-width:21; }
		[value > 7606] { marker-width:24; }
		[value > 10288] { marker-width:27; }
  		[value > 11996] { marker-width:30; }
		[value >= 18509] { marker-width:33; }
    }
    [zoom <= 11] {
    	[value >= 3254] { marker-width:2; }
		[value > 4352] { marker-width:4; }
 		[value > 4696] { marker-width:6; }
		[value > 5499] { marker-width:8; }
		[value > 6396] { marker-width:10; }
		[value > 7606] { marker-width:12; }
		[value > 10288] { marker-width:14; }
  		[value > 11996] { marker-width:16; }
		[value >= 18509] { marker-width:18; }
	}
}


#sfpddistricts {
  text-name: [DISTRICT];
  text-face-name: 'Arial Regular';
  text-fill: #62c44a;
  text-size: 10;
  text-halo-fill: fadeout(white, 30%);
  text-halo-radius: 2.0;
  line-color:#62c44a;
  line-width:0.8;
}


#planningneighborhood {
  line-color:#f7a54f;
  line-width:0.8;
}
