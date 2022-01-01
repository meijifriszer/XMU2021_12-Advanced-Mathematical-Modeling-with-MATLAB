clc;
clear;
A=sym('p',[1 32]);
H=0;
M=-1;
for i=1:32
    H=H-A(i)*log2(A(i));
    M=M+A(i);
end
syms r;
L=H-r*M;

for i=1:32
    B(i,1)=diff(L,A(i));
end
B(33,1)=M;
[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,r]=solve(B);
round(eval(L))
