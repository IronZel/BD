/* Запрос на вывод данных по имени*/

$select = mysql_query
("select * from documents
 where name = '$name'");