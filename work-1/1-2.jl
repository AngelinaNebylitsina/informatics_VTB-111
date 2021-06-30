println("введите координату x1");
x1=readline();
println("введите координату y1");
y1=readline();
println("введите координату x2");
x2=readline();
println("введите координату y2");
y2=readline();
x1 = tryparse(Float64,x1);
y1 = tryparse(Float64,y1);
x2 = tryparse(Float64,x2);
y2 = tryparse(Float64,y2);
if x1!=nothing && y1!=nothing && x2!= nothing && y2!= nothing

s=sqrt((x1-x2)^2+(y1-y2)^2);
println(s);
else
println("вы ввели не правильные данные");
end
