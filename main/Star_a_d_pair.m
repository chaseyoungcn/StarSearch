function Star_a_d_pair(K_vector,star_lib_total,D) %����Ƕ���Ŀ���ǽǾ�֮��Ĺ�ϵͼ

[s1,s2]=size(star_lib_total);
[NumS,~]=size(K_vector);
Y1=[star_lib_total(1,3),star_lib_total(s1,3)];
X=Y1(1):D:Y1(2);
y=(X-Y1(1))/D +1;%�϶�Ϊ����
Y=[];
for i=1:y(end-1)
    y1=K_vector{i,1};
    [y2,~]=size(y1);
    Y=[Y,y2];
end
Y=[Y,10];
plot(X,Y);
% set(gca,'GridLineStyle','-','GridColor','k','GridAlpha',1);%
title('�Ƕ���Ŀ���ǽǾ�֮��Ĺ�ϵͼ')
xlabel('�ǽǾ෶Χ')
ylabel('�Ƕ���Ŀ')

end
