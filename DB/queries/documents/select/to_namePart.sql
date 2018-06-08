/* Запрос на вывод данных по введенному слову*/

$select = mysql_query
("select * from documents
 where name like '%' + @sch + '%'");