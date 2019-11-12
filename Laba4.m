str1 = 'Сидоров Николай 101 521 899'
str2 = strrep(str1,' ','')
lengthstr2 = length(str2)
s1 = 'Сидоров Николай'
s2 = 'Николай Сидоров'
str3 = strrep(str1, s1, s2)
str4 = strrep(str3,'1','один')
str4 = strrep(str4,'2','два')
str4 = strrep(str4,'3','три')
str4 = strrep(str4,'4','четыре')
str4 = strrep(str4,'5','пять')
str4 = strrep(str4,'6','шесть')
str4 = strrep(str4,'7', 'семь')
str4 = strrep(str4,'8','восемь')
str4 = strrep(str4,'9','девять')
str4 = strrep(str4,'0','ноль')

mas = []
for i=1:lengthstr2
for j=0:9
if str2(i)==num2str(j)
mas = [ mas,j]
end
end
end

f = fopen('in9.txt', 'wt')
fprintf(f, '1 2 3 4 99 80 \n')
fprintf(f, '5 6 7 8 33 21 \n')
fprintf(f, '15 90')
fclose(f);

f=fopen('in9.txt','rt')
mas1=fscanf(f,'%g',[1,6])
mas2=fscanf(f,'%g',[1,6])
mas3=fscanf(f,'%g',[1,2])
fclose(f)


File1NameExp='var9';
PictHigh1='400';
DirName1=['C:\Пользователи\MetalHead\Рабочий стол\Учёба\MATLAB\'];
if ~exist(DirName1)
 mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['laba4_' File1NameExp ' отчет.htm'],'wt');
 fprintf(FileHtml,'<HTML>\n');
 fprintf(FileHtml,'<head>\n');
 fprintf(FileHtml,'<title>Отчет по лабораторной работе № 4 \n');
 fprintf(FileHtml,'</title>\n');
 fprintf(FileHtml,'<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n');
 fprintf(FileHtml,'</head>\n');
 fprintf(FileHtml,'<body>\n');
 fprintf(FileHtml,'<center><H3>ОТЧЕТ<br>по лабораторной работе № 4</h3></center>\n');
 fprintf(FileHtml,'<h3>Задание</h3>\n'); 
 fprintf(FileHtml,'Написать файл-функцию для решения поставленной задачи.');
 fprintf(FileHtml,'<h3>Исходные данные</h3>\n');
 fprintf(FileHtml,'<br> Вариант-9');
 fprintf(FileHtml,'<br> y = sin(9*x)');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
h1=figure('Name','Модельное изображение (исходное Image0)im3d');
hold on
x = [1:0.1:5];
y = sin(9*x);
plot(x,y,'-r.');
hold off
FileName000=[File1NameExp '.jpg'];
saveas(h1,FileName000);
 fprintf(FileHtml,'<br><br> График \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
 fprintf(FileHtml,'</body>\n');
 fprintf(FileHtml,'</HTML>\n');
 fclose(FileHtml);