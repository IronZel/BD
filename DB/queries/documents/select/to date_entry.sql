/* Запрос на вывод данных с выбором даты вступления*/

$select = mysql_query
("select * from documents
 where date_entry = '$date_entry'");