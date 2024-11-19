 B = [1 1 2;
      2 1 3;
      3 1 4;
      4 1 5];

 C = [-2 0 0;
      -2 1 0;
       1 0 2];
   
% The null space of B
N_B = null(B); % 3x1
disp('the null space of matrix B is:');
disp(N_B);

% sketch the null space of B
N = 100;
y = linspace(0,2,N);
N_B_set = zeros(3,N);
N_B_set(:,1) = N_B;

for i=1:N
    N_B_set(:,i) = y(i)*N_B;
end

plot3(N_B_set(1,:),N_B_set(2,:),N_B_set(3,:), 'b*');
xlim([0,1]);
xlabel('x1');
ylabel('x2');
zlabel('x3')
title('Null space of matrix B N(B)');

%Finding eigenvalue,determinant,trace,rank
eig_C = eig(C);
det_C = det(C);
trace_C = trace(C);
rank_C = rank(C);
disp('the eigen values of matrix C are:');
disp(eig_C);
disp('the determinant of matrix C is:');
disp(det_C);
disp('the trace of matrix C is:');
disp(trace_C);
disp('the rank of matrix C is:');
disp(rank_C);

%Finding a matrix from given vector values and Eigen Vectors
E=[3 0;
   0 5];
P=[1 2;
   3 -6];
P_Inv=inv(P);

% disp(P_Inv);
D=P*E*P_Inv;
disp('the matrix D is:')
disp(D)

    
