
function x = rand_int(n,m)
x = randi(n,m)
fprintf('The last element of the last row is %d.\n', x(n,m))
