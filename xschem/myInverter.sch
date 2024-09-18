v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -20 40 20 {
lab=out}
N -10 -50 0 -50 {
lab=in}
N -10 -50 -10 50 {
lab=in}
N -10 50 -0 50 {
lab=in}
N -30 0 -10 0 {
lab=in}
N 40 0 60 0 {
lab=out}
N 40 -100 40 -80 {
lab=VDD}
N 40 80 40 100 {
lab=VSS}
N 40 -50 50 -50 {
lab=VDD}
N 50 -80 50 -50 {
lab=VDD}
N 40 -80 50 -80 {
lab=VDD}
N 40 50 50 50 {
lab=VSS}
N 50 50 50 80 {
lab=VSS}
N 40 80 50 80 {
lab=VSS}
C {devices/iopin.sym} 50 -140 2 1 {name=p1 lab=VDD
}
C {devices/iopin.sym} 130 -140 2 1 {name=p2 lab=VSS

}
C {sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -30 0 0 0 {name=p3 lab=in}
C {devices/lab_pin.sym} 40 -100 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 40 100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 20 -50 0 0 {name=M1
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 60 0 0 0 {name=p9 lab=out
}
