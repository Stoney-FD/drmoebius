//argument 0 == time reset
with(obj_solid_placeholder){
    instance_activate_object(original);
    instance_destroy();
}

with(obj_block){
    if(object_index == obj_moveable_block){
        x = xs;
        y = ys;
    }
    else if(object_index == obj_stone){
        x = xs;
        y = ys;
    }
    else if(object_index == obj_stomp){
        x = xs;
        y = ys;
    }
    else if(object_index == obj_falling_moveable){
        instance_create(xs, ys, static);
        instance_destroy();
    }
    else if(object_index == obj_falling_stone){
        instance_create(xs, ys, static);
        instance_destroy();
    }
    else if(object_index == obj_stomp_down){
        instance_create(xs, ys, static);
        instance_destroy();
    }
    else if(object_index == obj_body){
        //instance_destroy();
    }
    else{
        x = xstart;
        y = ystart;
    }
}
with(obj_player){
    x = xstart;
    y = ystart;
    
    ysp = 0;
}

with(obj_master){
    state = false;
    sprite_index = spr_switch;
}

with(obj_placeholder){
    instance_create(xs, ys, original);
    instance_destroy();
}

with(obj_saw){
    direction = 0;
}

with(obj_mummy){
    x = xstart;
    y = ystart;
    
    dir = sdir;
    while(!place_meeting(x, y + 1, obj_block)){
        y += 1;
    }
}

with(obj_player_spawner){
    x = xstart;
    y = ystart;
}

if(argument0){
    with(obj_timer){
        c_time = max_time;
    }
}

sound_play(sfx_revert);
