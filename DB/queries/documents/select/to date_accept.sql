/* Запрос на вывод данных с выбором даты принятия*/

$select = mysql_query
("select * from documents
 where date_accept = '$date_accept'");