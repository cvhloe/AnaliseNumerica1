function [L, U] = lu(A)
    n = size(A, 1);
    L = eye(n);
    U = eye(n);

    for k = 1:n
        U(k, k:n) = A(k, k:n) - L(k, 1:k-1) * U(1:k-1, k:n);
        L(k+1:n, k) = (A(k+1:n, k) - L(k+1:n, 1:k-1) * U(1:k-1, k)) / U(k, k);
    end
endfunction
