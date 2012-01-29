/*
 * argument0 = xsp
 * argument1 = ysp
 * argument2 = object
 */
 
if(!place_meeting(x + argument0, y + argument1, argument2)){
    x += argument0;
    y += argument1;
}
else{
    var i;
    for(i = 0; i < max(abs(argument0), abs(argument1)); i += 1){
        var xch, ych;
        if(i > abs(argument0)) xch = 0;
        else xch = sign(argument0);
        if(i > abs(argument1)) ych = 0;
        else ych = sign(argument1);
    
        if(!place_meeting(x + xch, y + ych, argument2)){
            x += xch;
            y += ych;
        }
        else break;
    }
}
