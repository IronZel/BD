/*Запрос на добавление данных*/

$insert = mysql_query 	
("INSERT INTO documents (date_accept, date_entry)
 VALUES ('$date_accept','$date_entry')");
