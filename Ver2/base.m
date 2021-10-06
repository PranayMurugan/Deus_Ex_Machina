clear
clc

n = input('Enter the number of variables');
for i=1:n
    a{i} = input("enter the elements: ","s");
end


b = ["v1" "v2" "v3" "" "" "f1" 3;"v2" "v4" "v5" "v6" "v7" "f2" 5];
%a = ["v2" "v1" "v3"];

for i=1:2
    check = ismember(b(i,:),a)
    x = str2num(b(i,end))
    s = int8(sum(check(1,:)))
    x1 = int8(x)
    if x1==s 
        disp(b(i,end-1))
    else
        x = 0;
        s = 0;
    end
end