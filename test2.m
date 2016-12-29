clc,clear;
% p=4;
% X=sym('X',[p,p]);
% b=sym('b',[p,p]);
% f1=0.5*norm(X*b-X,'fro')^2;
% X1=[1,2,1,3;1,4,1,1;4,4,5,6;5,6,7,8];
% b1=[1,2,5,3;5,6,4,7;0,9,7,8;0,0,0,9];
% for i=1:p
%     for j=1:p      
%         eval([char(X(i,j)),'=',num2str(X1(i,j)),';']);   
%         eval([char(b(i,j)),'=',num2str(b1(i,j)),';']); 
%     end
% end
% z2=X1'*(X1*b1-X1);
% for i=1:p
%     for j=1:p
%         z1(i,j)=diff(f1,b(i,j));
%     end
% end
% z1=double(subs(z1));
% z1-z2
p=4;
b=sym('b',[1,p]);
b_real=[10,2,3,4];
f2=norm(b,2);
for i=1:p  
        eval([char(b(1,i)),'=',num2str(b_real(1,i)),';']);   
end
z2=b_real/norm(b_real,2)
for i=1:p
    z1(1,i)=diff(f2,b(1,i));
end    
z1=double(subs(z1))
