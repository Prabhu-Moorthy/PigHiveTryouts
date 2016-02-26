A = load 'Employee.txt' using PigStorage(' ');
X = filter A by $0 == 10;
B = foreach A generate $0;
dump X;

