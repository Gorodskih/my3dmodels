$fn=50;

block_width=3;
block_length=20;
block_count=6;

r1=1;
l=2;

difference (){
    cube([block_count*block_width*2,block_length+2*block_width,block_width]);
    for (i=[0:block_count-1])
        translate([i*2*block_width,block_width,-0.1])
                cube([block_width,block_length,block_width+0.2]); 
    translate([-2,block_width,-0.1])  
        cube([block_width,block_length,block_width+0.2]); 
    rotate([0,90,0]){
        translate([-block_width/2, block_width/2, -1]){
            cylinder(h = l+1, r = r1);
            translate([0,block_length+block_width,0])
                cylinder(h = l+1, r = r1);
        }
    }
}
rotate([0,90,0]){
    translate([-block_width/2, block_width/2, 2*block_count*block_width]){
        cylinder(h = l, r = r1);
    translate([0,block_length+block_width,0])
        cylinder(h = l, r = r1);
    }
}
