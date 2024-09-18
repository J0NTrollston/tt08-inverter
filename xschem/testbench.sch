v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 727.5 -115 1527.5 285 {flags=graph
y1=-7.7e-05
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-08
x2=2.1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0




color="4 6"
node="in
out"}
B 2 727.5 297.5 1527.5 697.5 {flags=graph
y1=-2.1e-06
y2=0.00041
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-08
x2=2.1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
N 510 -110 530 -110 {
lab=VDD}
N 340 0 340 50 {
lab=#net1}
N 340 130 340 160 {
lab=VSS}
N 250 90 280 90 {
lab=in}
N 430 90 460 90 {
lab=#net2}
N 430 90 430 110 {
lab=#net2}
N 520 90 550 90 {
lab=out}
N 400 90 430 90 {
lab=#net2}
N 430 170 430 180 {
lab=GND}
N 390 -110 410 -110 {
lab=VSS}
N 410 -50 410 -37.5 {
lab=GND}
N 530 -50 530 -37.5 {
lab=GND}
N 340 -80 340 -60 {
lab=VDD}
C {devices/code.sym} -130 20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -127.5 180 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {myInverter.sym} 280 90 0 0 {name=x1}
C {devices/vsource.sym} 410 -80 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 390 -110 0 0 {name=p1 sig_type=std_logic lab=VSS

}
C {devices/gnd.sym} 410 -37.5 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 530 -80 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 510 -110 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 530 -37.5 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 340 160 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 340 -80 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/ipin.sym} 250 90 0 0 {name=p5 lab=in}
C {devices/opin.sym} 550 90 0 0 {name=p6 lab=out}
C {devices/res.sym} 490 90 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 430 140 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} -290 330 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
save all
tran 100p 200n
write testbench.raw
.endc
"}
C {devices/gnd.sym} 430 180 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 340 -30 0 0 {name=Vmeas }
