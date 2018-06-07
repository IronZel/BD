/* Запрос на изменение данных */

$update = mysql_query
("update table documents
 set  date_accept = '$date_accept', date_entry = '$date_entry'");