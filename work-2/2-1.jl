function input_int(message)
    println(message);
    input = readline();
    return tryparse(Int8, input);
end
println("Task 2-1");
# Введем перечислимый тип данных
@enum Method s = 1 bez = 2;
# Ввод пользователем номера способа
user_input = input_int("Введите число, для выбора способа: " *
                        "$(Int(s::Method )) - с переменной, " *
                        "$(Int(bez::Method )) - без переменной");
try
	local choice = Method (user_input);
	if choice == s::Method 
		local a = input_int("введите значение a:");
		local b = input_int("введите значение b:");
		local c=a;
		a=b;
		b=c;
		println(a);
		println(b);
	end;
	if choice == bez::Method 
		local a = input_int("введите значение a:");
		local b = input_int("введите значение b:");
		a=a+b;
		b=a-b;
		a=a-b;
		println(a);
		println(b);
	end;
catch
println("Ошибка ввода выбора способа");
end;
