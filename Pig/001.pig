--A = LOAD 'Student_Data.csv' using PigStorage(',') as (First_name:chararray,Last_name:chararray,Company:chararray,Address:chararray,City:chararray,County:chararray,State_Province:chararray,ZIP:chararray,Phone1:chararray,Phone2:chararray,Email:chararray,Web:chararray);
A = LOAD 'Student_Data.csv' using PigStorage(',');
X = filter A by $0=='Art';
B = foreach A generate First_name as fn,Last_name as ln;
--store B into 'myopt' using PigStorage('\t');
explain X;
dump X;
