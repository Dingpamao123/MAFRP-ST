function [New] = Junzhenpinjie(A,B)

upper_A = triu(A);%获得A阵的上三角矩阵
lower_A = tril(A);%%获得A阵的下三角矩阵

upper_B = triu(B);%获得B阵的上三角矩阵
lower_B = tril(B);%%获得B阵的下三角矩阵

New = zeros(size(A));

New(tril(true(size(New)))) = lower_A(tril(true(size(lower_A))));
New(triu(true(size(New)))) = upper_B(triu(true(size(upper_B))));


end

