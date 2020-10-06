%Date: Wednesday, October 7th, 2020
%Assignment 2
%Names: Jeffin Domi (501018734) and Shaurya Ganguly (501015243)
%Section: 12

clc
clear all

%%
%Question 1

%a)Sum of the diagonal matrix C

A = [3,2,1; 3,6,8;, 4,1,4];

B = [4,4,9; 6,1,7; 5,2,0];

C = B+A;

sumOfDiag = sum(diag(C))

%b)Matrix product D

D = B'*B

%c)Product of determinant of matrix D and element B'(2,3)
trans_B = B';

product = det(D)*trans_B(2,3)

%%
%Question 2
%a)Construct matrix E

first_col = A(:,1);
second_col = A(:,2);
third_col = C(2,:);
E = [first_col, second_col, third_col']

%b)Store inverse of E in F
F = inv(E)

% Sum of matrix F
Fsum = sum(sum(F))

%%
%Question 3
x = 0:pi/100:2*pi;
y1 = cos(x).^2;
y2 = sin(x.^2);

figure;
hold on;
plot(x,y1,'r --');
plot(x,y2,'b -');
xlim([0,2*pi]);
ylim([-1,1]);
xlabel('X');
ylabel('Y');
title('Plot of y1= cos^2(x) and y2=sin(x^2)');
legend('y1','y2');
