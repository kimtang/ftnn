
.import.require`remote`reQ;

d)lib futubull.fmp 
 Library for working with the lib fmp
 q).import.module`fmp 
 q).import.module`futubull.fmp
 q).import.module"%futubull%/qlib/fmp/fmp.q"


.bt.add[`.import.init;`.fmp.init]{ .fmp.config:.import.pconfig .import.config`fmp;}

.fmp.con:flip`api`path!()

.fmp.init:{}

.fmp.summary:{} 

d)fnc fmp.fmp.summary 
 Give a summary of this function
 q) fmp.summary[] 

.fmp.homePage:{"b" "chrome.exe https://site.financialmodelingprep.com/developer/docs";}