close all;
n=3; % iloœæ trutni 
matka=[0 0]; % pozycja królowej
% losowanie pozycji trutni
trutnie = zeros(n,2); 
for i=1:n
    trutnie(i,:)=trutnie(i,:)+[20+10*randn, -20+10*randn];
end    
szybkosc=0.1;
s=tf('s');
xsys=1/(randn*5*s+randn*5);
ysys=1/(randn*5*s+randn*5);
while 1
    matka=matka+[randn randn]
    for i=1:n
        x=(matka(1)-trutnie(i,1));
        y=(matka(2)-trutnie(i,2));
        norm=sqrt(x^2+y^2);
        trutnie(i,:)=trutnie(i,:)+[x y]/norm*szybkosc;
    end
    pause(0.02);
    plot(matka(1),matka(2),'rx');
    hold on;
    xlim([-60 60]);
    ylim([-60 60]);
    plot(trutnie(:,1),trutnie(:,2),'go');
    hold off
end