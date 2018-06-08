/*Запрос на добавление данных*/

$insert = mysql_query 	
("INSERT INTO documents (date_accept, date_entry, id_head)
 VALUES ('$date_accept','$date_entry','id_head')");
