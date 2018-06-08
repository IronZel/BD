/* Запрос на вывод данных с выбором главы*/

$select = mysql_query
("select * from documents
 where id_head = '$id_head'");