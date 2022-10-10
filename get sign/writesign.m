ht1={'课程\学号';'第1节';'第2节';'第3节';'第4节';'第5节';'第6节';'第7节';'第8节';'第9节';'第10节';
    '第11节';'第12节';'第13节';'第14节';'第15节';'第16节';'第17节';'第18节';'第19节';'第20节';'绩点'};
ht2=1:90;
ht2=ht2+032002000;
[score,sign]=get_random_sign();
data=[ht1,[num2cell(ht2);num2cell(sign);num2cell(score)]];
xlswrite('lesson1.xls',data);
[m, n]=size(sign);
fid=fopen('lesson1.txt', 'wt');
for i = 1 : m
	fprintf(fid, '%g\t', sign(i, :));
	fprintf(fid, '\n');
end
fprintf(fid, '%g\t', score(:));
fclose(fid);

ht2=1:90;
ht2=ht2+032002100;
[score,sign]=get_random_sign();
data=[ht1,[num2cell(ht2);num2cell(sign);num2cell(score)]];
xlswrite('lesson2.xls',data);
[m, n]=size(sign);
fid=fopen('lesson2.txt', 'wt');
for i = 1 : m
	fprintf(fid, '%g\t', sign(i, :));
	fprintf(fid, '\n');
end
fprintf(fid, '%g\t', score(:));
fclose(fid);

ht2=1:90;
ht2=ht2+032002200;
[score,sign]=get_random_sign();
data=[ht1,[num2cell(ht2);num2cell(sign);num2cell(score)]];
xlswrite('lesson3.xls',data);
[m, n]=size(sign);
fid=fopen('lesson3.txt', 'wt');
for i = 1 : m
	fprintf(fid, '%g\t', sign(i, :));
	fprintf(fid, '\n');
end
fprintf(fid, '%g\t', score(:));
fclose(fid);

ht2=1:90;
ht2=ht2+032002300;
[score,sign]=get_random_sign();
data=[ht1,[num2cell(ht2);num2cell(sign);num2cell(score)]];
xlswrite('lesson4.xls',data);
[m, n]=size(sign);
fid=fopen('lesson4.txt', 'wt');
for i = 1 : m
	fprintf(fid, '%g\t', sign(i, :));
	fprintf(fid, '\n');
end
fprintf(fid, '%g\t', score(:));
fclose(fid);

ht2=1:90;
ht2=ht2+032002400;
[score,sign]=get_random_sign();
data=[ht1,[num2cell(ht2);num2cell(sign);num2cell(score)]];
xlswrite('lesson5.xls',data);
[m, n]=size(sign);
fid=fopen('lesson5.txt', 'wt');
for i = 1 : m
	fprintf(fid, '%g\t', sign(i, :));
	fprintf(fid, '\n');
end
fprintf(fid, '%g\t', score(:));
fclose(fid);