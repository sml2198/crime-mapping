Map {
  background-color: #b8dee6;
}

#crime {
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
}

#planningneighborhood {
  line-color:#636463;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#fcfcfc;
}
