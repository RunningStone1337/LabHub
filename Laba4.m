str1 = '������� ������� 101 521 899'
str2 = strrep(str1,' ','')
lengthstr2 = length(str2)
s1 = '������� �������'
s2 = '������� �������'
str3 = strrep(str1, s1, s2)
str4 = strrep(str3,'1','����')
str4 = strrep(str4,'2','���')
str4 = strrep(str4,'3','���')
str4 = strrep(str4,'4','������')
str4 = strrep(str4,'5','����')
str4 = strrep(str4,'6','�����')
str4 = strrep(str4,'7', '����')
str4 = strrep(str4,'8','������')
str4 = strrep(str4,'9','������')
str4 = strrep(str4,'0','����')

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
DirName1=['C:\������������\MetalHead\������� ����\�����\MATLAB\'];
if ~exist(DirName1)
 mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['laba4_' File1NameExp ' �����.htm'],'wt');
 fprintf(FileHtml,'<HTML>\n');
 fprintf(FileHtml,'<head>\n');
 fprintf(FileHtml,'<title>����� �� ������������ ������ � 4 \n');
 fprintf(FileHtml,'</title>\n');
 fprintf(FileHtml,'<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n');
 fprintf(FileHtml,'</head>\n');
 fprintf(FileHtml,'<body>\n');
 fprintf(FileHtml,'<center><H3>�����<br>�� ������������ ������ � 4</h3></center>\n');
 fprintf(FileHtml,'<h3>�������</h3>\n'); 
 fprintf(FileHtml,'�������� ����-������� ��� ������� ������������ ������.');
 fprintf(FileHtml,'<h3>�������� ������</h3>\n');
 fprintf(FileHtml,'<br> �������-9');
 fprintf(FileHtml,'<br> y = sin(9*x)');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
h1=figure('Name','��������� ����������� (�������� Image0)im3d');
hold on
x = [1:0.1:5];
y = sin(9*x);
plot(x,y,'-r.');
hold off
FileName000=[File1NameExp '.jpg'];
saveas(h1,FileName000);
 fprintf(FileHtml,'<br><br> ������ \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
 fprintf(FileHtml,'</body>\n');
 fprintf(FileHtml,'</HTML>\n');
 fclose(FileHtml);