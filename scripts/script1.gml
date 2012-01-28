/*
 * argument0 = xsp
 * argument1 = ysp
 * argument2 = object
 */
 
if(!place_meeting(x + xsp, y + ysp, argument2)){
    x += xsp;
    y += ysp;
}
else{
    var i;
    for(i = 0; i < max(xsp, ysp); i += 1){
        var xch, ych;
        if(i > abs(xsp)) xch = 0;
        else xch = sign(xsp);
        if(i > abs(ysp)) ych = 0;
        else ych = sign(ysp);
    
        if(!place_meeting(x + xch, y + ych, argument2)){
            x += xch;
            y += ych;
        }
        else break;
    }
}
