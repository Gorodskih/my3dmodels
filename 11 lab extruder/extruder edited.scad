
m3d=3+0.4;
m3r=m3d/2;

m4d=4+0.4;
m4r=m4d/2;

m5d=5+0.4;
m5r=m5d/2;

m3nd = 6.2+0.4;
m3nr = m3nd/2;
m3nh=2.8;

m4nd = 7.9+0.4;
m4nr = m4nd/2;
m4nh=3.4;

m5nd = 9+0.4;
m5nr = m5nd/2;
m5nh=4.2;

sbd = 8+0.3;
sbr = sbd/2;

insd = 16+0.35;
insr = insd/2;


b608d=22+0.3;
b608r=b608d/2;
b608h=7;


hx=40;
hy=60;
hz=2+7+1+8+1+7;

bx=25;
by=31;

fila=3;
//mkd=12.6;
mkd=8;

ih=8;
ih1=hz-4-0.4;
iy=28;
ix=7.5;

osx=-hx/2-4;
osy=-iy/2+1;

sd=(0.4*3)*2+0.2;
sr=sd/2;

fcen=-mkd/2-fila/2+0.5;

kp=1;

module extruder() {

difference() {
  union() {
	translate([-hx/2,-hy/2,0]) cube([hx,hy,hz]);
	translate([-hx/2-mkd-1, -hy/2, 0]) cube([9, 12, hz]);
	translate([osx+1, osy-1, hz/2]) cube([6, 8, hz], center=true);

	translate([0,40,-8])
	rotate([0,0,45]) 
translate([0,0,6+(hz-6)/2]) cube([43,43,16+hz-6], center=true);
  } // union

	translate([fcen, 0, hz/2]) rotate([-90, 0, 0]) cylinder(hy/2+1, (fila+2.5)/2, (fila+2.5)/2, $fn=8);

	translate([fcen, -hy/2-1, hz/2]) rotate([-90, 0, 0]) cylinder(hy/2+1, (fila+1)/2, (fila+1)/2, $fn=8);


	%translate([0,0,-1]) cylinder(hz, 4, 4, $fn=64);

	translate([0,0,-1]) cylinder(hz, 4.5, 4.5, $fn=16);

	translate([0,0,-1]) cylinder(b608h+1, b608r, b608r, $fn=32);
	translate([0,0,hz-b608h-2]) cylinder(b608h+3, b608r, b608r, $fn=32);

	translate([0,0,b608h-0.2]) cylinder(0.4+0.2, 7.5, 7.5, $fn=32);
	translate([0,0,hz-b608h-2-0.4]) cylinder(0.4+0.2, 7, 7, $fn=32);




translate([-mkd/2-fila-2,-14/2,(hz-8.2)/2]) cube([hx+2,14,8.2]);
translate([mkd/2+10,-18/2,(hz-7.4)/2]) cube([hx+2,18,7.4]);
translate([b608r+6,0,hz/2+4]) rotate([0,-30,0]) cube([16,18,5], center=true);
translate([b608r+6,0,hz/2-4]) rotate([0,30,0]) cube([16,18,5], center=true);

for (i=[0:2:16])
translate([osx, osy, 0])
rotate([0,0,i])
translate([-osx, -osy, 0]) {
	translate([-2-mkd/2+1-23/2, 0, (hz-8.2)/2]) cylinder(8.2, 23/2, 23/2, $fn=16);
	translate([-2-mkd/2-16, -22/2, 3.4]) cube([10.4,20,hz-6.8]);
	translate([-2-mkd/2-7.6, 18.5/2, hz/2]) rotate([0,0,20]) cylinder(hz-6.8, 2, 2, center=true, $fn=16);
}




	translate([0,0,-10]) cylinder(10, 75/2, 75/2, $fn=32);
	translate([0,40,-10])
	rotate([0,0,45]) {
%translate([0,0,-43/2]) cube([43,43,43], center=true);
	}

for (i=[-1.5:1.5])
	translate([0,40+i,0])
	rotate([0,0,45]) {
	translate([0,0,-11]) rotate([0,0,360/64]) cylinder(hz+16.1+1,26/2,26/2, $fn=32);

	translate([31/2, -31/2, -11]) rotate([0,0,360/16]) cylinder(11.4+1-0.2, m3r, m3r, $fn=8);
	translate([-31/2, 31/2, -11]) rotate([0,0,360/16]) cylinder(11.4+1-0.2, m3r, m3r, $fn=8);
	translate([31/2, 31/2, -11]) rotate([0,0,360/16]) cylinder(11.4+1-0.2, m3r, m3r, $fn=8);

	translate([31/2, -31/2, -10+11.4]) rotate([0,0,360/32]) cylinder(hz+16, 3.8, 3.8, $fn=16);
	translate([-31/2, 31/2, -10+11.4]) rotate([0,0,360/32]) cylinder(hz+16, 3.8, 3.8, $fn=16);
	translate([31/2, 31/2, -10+11.4]) rotate([0,0,360/32]) cylinder(hz+16, 3.8, 3.8, $fn=16);
	}
	

	translate([-bx/2, -by/2+kp, hz-8-0.2]) cylinder(hz+2, m3r, m3r, $fn=8);
	translate([bx/2, -by/2+kp, hz-8-0.2]) cylinder(hz+2, m3r, m3r, $fn=8);
	translate([-bx/2, by/2+kp, hz-8-0.2]) cylinder(hz+2, m3r, m3r, $fn=8);
	translate([bx/2, by/2+kp, hz-8-0.2]) cylinder(hz+2, m3r, m3r, $fn=8);

	translate([-bx/2, -by/2+kp, -1]) cylinder(hz-8+1, m3nr, m3nr, $fn=6);
	translate([bx/2, -by/2+kp, -1]) cylinder(hz-8+1, m3nr, m3nr, $fn=6);
	translate([-bx/2, by/2+kp, -1]) cylinder(hz-8+1, m3nr, m3nr, $fn=6);
	translate([bx/2, by/2+kp, -1]) cylinder(hz-8+1, m3nr, m3nr, $fn=6);


	translate([-hx/2-1, iy/2-1, 6]) rotate([0, 90, 0]) cylinder(35, m3r, m3r, $fn=8);
	translate([-hx/2-1, iy/2-1, hz-6]) rotate([0, 90, 0]) cylinder(35, m3r, m3r, $fn=8);

	for (i=[0:5]) {
	translate([-8, iy/2-1, 6-i]) rotate([0, 90, 0]) rotate([0,0,0]) cylinder(m3nh, m3nr, m3nr, $fn=6);
	translate([-8, iy/2-1, hz-6+i]) rotate([0, 90, 0]) rotate([0,0,0]) cylinder(m3nh, m3nr, m3nr, $fn=6);
	}

	
translate([fcen, -hy/2-1, hz/2]) rotate([-90, 0, 0]) cylinder(4+1, insr, insr, $fn=32);
translate([fcen, -hy/2-1, hz/2-4.6]) rotate([-90, 0, 0]) rotate([0,0,90]) cylinder(4+1, insr*2/3, insr*2/3, $fn=5);

translate([fcen-(35/2), -hy/2-1, hz/2]) rotate([-90, 0, 0]) cylinder(4+1, m4r, m4r, $fn=8);
translate([fcen+(35/2), -hy/2-1, hz/2]) rotate([-90, 0, 0]) cylinder(4+1, m4r, m4r, $fn=8);

translate([fcen-20, -hy/2-1, 5]) rotate([-90, 0, 0]) cylinder(14, m3r, m3r, $fn=8);
translate([fcen+20, -hy/2-1, 5]) rotate([-90, 0, 0]) cylinder(14, m3r, m3r, $fn=8);
translate([fcen-20, -hy/2-1, hz-5]) rotate([-90, 0, 0]) cylinder(14, m3r, m3r, $fn=8);
translate([fcen+20, -hy/2-1, hz-5]) rotate([-90, 0, 0]) cylinder(14, m3r, m3r, $fn=8);

for (i=[0:5]) {
	translate([fcen-20, -hy/2+8, i]) rotate([-90, 0, 0]) rotate([0,0,30]) cylinder(m3nh, m3nr, m3nr, $fn=6);
	translate([fcen+20, -hy/2+8, i]) rotate([-90, 0, 0]) rotate([0,0,30]) cylinder(m3nh, m3nr, m3nr, $fn=6);
	translate([fcen-20, -hy/2+8, hz-i]) rotate([-90, 0, 0]) rotate([0,0,30]) cylinder(m3nh, m3nr, m3nr, $fn=6);
	translate([fcen+20, -hy/2+8, hz-i]) rotate([-90, 0, 0]) rotate([0,0,30]) cylinder(m3nh, m3nr, m3nr, $fn=6);
}



translate([-hx/2-mkd-2, -hy/2+16+1, hz/2]) rotate([0,0,45]) cube([10,10,hz+1], center=true);


translate([osx, osy, -1]) cylinder(hz+2, m3r+0.1, m3r+0.1, $fn=8);

translate([osx, osy, -1]) rotate([0,0,360/32]) cylinder(7.8+1, 5.5, 5.5, $fn=16);
translate([osx, osy, hz-7.8]) rotate([0,0,360/32]) cylinder(7.8+1, 5.5, 5.5, $fn=16);


translate([0,40,0])
rotate([0,0,45]) {
	translate([-43/2,43/2,0]) rotate([0,0,45]) cube([7,7,hz+30], center=true);
	translate([43/2,43/2,0]) rotate([0,0,45]) cube([4,4,hz+30], center=true);
	translate([43/2,-43/2,0]) rotate([0,0,45]) cube([7,7,hz+30], center=true);
}

translate([-hx/2-10, hy/2+16, 4]) cube([hx+20, 30, hz]);
translate([-hx/2-10, hy/2+16, 4]) rotate([45,0,0]) cube([hx+20, 30, hz+10]);


translate([fcen, -9, hz/2]) rotate([-90, 0, 0]) cylinder(2.2, 3/2, 6/2, $fn=32);
translate([fcen, hy/2-3, hz/2]) rotate([-90, 0, 0]) cylinder(12, 9/2, 9/2, $fn=32);
translate([fcen, hy/2-7, hz/2]) rotate([-90, 0, 0]) cylinder(4.1, 2/2, 9/2, $fn=32);



} // difference

difference() {
	translate([osx, osy, 7.8]) cylinder(hz-(7.8*2), 4, 4, $fn=32);
	translate([osx, osy, -1]) cylinder(hz+2, m3r+0.1, m3r+0.1, $fn=8);
} //df

//КУБ-ПОДДЕРЖКА
//difference() {
	//translate([-hx/2-4, hy/2+16.5, 4+0.4]) cube([hx+8, 22, hz-4-0.4]);
	//translate([-hx/2-4+sr, hy/2+16.5+sr, 5+0.4]) cube([hx+8-sd, 22-sd, hz-4-0.4]);
//}

//ПОДДЕРЖКА
//for (i=[-11:2:11])
//translate([i, -6.5, 8.9]) cube([0.4, 13, 8.2]);

//ПОДДЕРЖКА
//for (i=[0:2:7])
//translate([-hx/2+0.4+i, -10.5, 3.4]) cube([0.4, 21.5, 19.2]);

//ПОДДЕРЖКА
//difference() {
  //translate([osx, osy, hz-7.8+0.4]) cylinder(7.8-0.4, 4.5, 4.5);
  //translate([osx, osy, hz-7.8+0.4+1]) cylinder(7.8-0.4, 4.5-sr, 4.5-sr);
//}

difference() {
  translate([0, 0, hz-9+0.4]) cylinder(9-0.4, 10, 10);
  translate([0, 0, hz-9+0.4+1]) cylinder(9-0.4, 10-sr, 10-sr);
}

} // extruder


module idler() {

difference() {
union() {
	%translate([-2-mkd/2+1-22/2, 0, 5]) cylinder(hz-10, 4, 4);
	%translate([-2-mkd/2+1-22/2, 0, (hz-7)/2]) cylinder(7, 22/2, 22/2);
	translate([-2-mkd/2-16, -14/2, 4]) cube([10,14,hz-8]);

	translate([-hx/2-ix-1.5, osy, 0.4]) cube([ix,iy+10, hz-0.8]);
      translate([osx, osy, 0.4])  cylinder(7, 5, 5, $fn=16);
      translate([osx, osy, hz-0.4-7])  cylinder(7, 5, 5, $fn=16);


} // union
	translate([-hx/2, osy+iy+7+5, 0]) cylinder(hz, ix, ix, $fn=16);


	translate([osx, osy, 0]) cylinder(m3nh+0.4, m3nr, m3nr, $fn=16);
	translate([osx, osy, 0.4+m3nh+1]) cylinder(m3nh+1, m3nr, m3nr, $fn=6);
	translate([osx, osy, 0]) cylinder(hz, m3r, m3r, $fn=8);
	translate([osx-5-1, osy-5-1, 7+0.4]) cube([10+2,10+1,hz-14-0.8]);


	translate([-2-mkd/2+1-23/2, 0, (hz-7.4)/2]) cylinder(7.4, 23/2, 23/2);

	translate([-2-mkd/2+1-22/2, 0, 6]) cylinder(hz-12, 4, 4, $fn=32);
	translate([-2-mkd/2+1-22/2, -7.8/2, 6]) cube([6, 7.8, hz-12]);

	translate([-2-mkd/2+1-14/2, -7, hz/2]) rotate([0,0,45]) cube([2, 2, hz], center=true);
	translate([-2-mkd/2+1-14/2, 7, hz/2]) rotate([0,0,45]) cube([2, 2, hz], center=true);
	

	for (i=[-1.5:0.5:1.5]) {
		translate([-hx/2-10, iy/2+i-1, 6]) rotate([0, 90, 0]) rotate([0,0,360/32]) cylinder(10, m3r+0.1, m3r+0.1, $fn=16);
		translate([-hx/2-10, iy/2+i-1, hz-6]) rotate([0, 90, 0]) rotate([0,0,360/32]) cylinder(10, m3r+0.1, m3r+0.1, $fn=16);
	}

	translate([-hx/2+ix, iy/2, hz/2]) rotate([0,0,45]) cube([2,2,hz+2], center=true);

} // difference



} // idler


mirror()
rotate([0,180,0])
translate([0,0,-hz])
extruder();

//rotate([0,-90,0])
//translate([-0, 0, 0]) 
//translate([osx, osy, 0])
//rotate([0,0,90])
//translate([-osx, -osy, 0])
//idler();
