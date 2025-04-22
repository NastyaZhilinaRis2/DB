<?php
	require_once 'connect.php';
?>

<!doctype html>
<html lang="ru">
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="css/style.css" />
  <title>Сотрудники</title>
 
</head>
<body>
	<form method="POST">
        <div class="button-container">
            <button type="submit" name="button1">Запрос 1</button>
            <button type="submit" name="button2">Запрос 2</button>
            <button type="submit" name="button3">Запрос 3</button>
        </div>
    </form>
<?php
// Проверяем, была ли нажата кнопка
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['button1'])) {
       $goods = mysqli_query($connect, "SELECT table_employees_zhilina.Name, table_employees_zhilina.Surname, table_employees_zhilina.Patronymic, table_employees_zhilina.Telephone, Salary 
FROM table_employees_zhilina, table_post_zhilina 
WHERE table_employees_zhilina.id_post = table_post_zhilina.id_post");
       $goods = mysqli_fetch_all($goods);

       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Телефон</th>
               <th>Оклад</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[0]) . '</td>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                   <td>' . htmlspecialchars($iter[4]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }

   elseif (isset($_POST['button2'])) {
       $goods = mysqli_query($connect, "SELECT `Name`, `Surname`, `Patronymic`, `Address`
FROM `table_employees_zhilina`
ORDER BY `Address` ASC");
       $goods = mysqli_fetch_all($goods);

       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Адрес</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[0]) . '</td>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }
   elseif (isset($_POST['button3'])) {
       $goods = mysqli_query($connect, "SELECT table_employees_zhilina.Name, table_employees_zhilina.Surname, table_employees_zhilina.Patronymic, table_post_zhilina.Clock
FROM table_employees_zhilina, table_post_zhilina 
WHERE table_post_zhilina.Clock > 4 AND table_post_zhilina.Id_post = `table_employees_zhilina`.`id_post`");
       $goods = mysqli_fetch_all($goods);

       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Кол-во часов</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[0]) . '</td>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }
}
    ?>
</body>
</html>
