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
            <button type="submit" name="button1">SELECT</button>
            <button type="submit" name="button2">INSERT</button>
            <button type="submit" name="button3">UPDATE</button>
            <button type="submit" name="button4">DELETE</button>
            <button type="submit" name="button5">CREATE</button>
            <button type="submit" name="button6">ALTER</button>
            <button type="submit" name="button7">DROP</button>
            <button type="submit" name="button8">INNER JOIN</button>
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
       $goods = mysqli_query($connect, "INSERT INTO `table_employees_zhilina`(`Name`, `Surname`, `Patronymic`, `Telephone`, `Address`, `id_post`) 
VALUES ('Новый','Сотрудник','!','89000000000','Г.Пермь','1')");
       
       $goods = mysqli_query($connect, "SELECT * FROM `table_employees_zhilina`");

       $goods = mysqli_fetch_all($goods);

       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Телефон</th>
               <th>Адрес</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                   <td>' . htmlspecialchars($iter[4]) . '</td>
                   <td>' . htmlspecialchars($iter[5]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }
   elseif (isset($_POST['button3'])) {
       $goods = mysqli_query($connect, "UPDATE `table_employees_zhilina` 
SET `Name`='Измененный',`Surname`='Новый',`Patronymic`='Сотрудник',`Telephone`='88005552525',`Address`='ул. Академика Королева' 
WHERE `Name`= 'Новый'");

       $goods = mysqli_query($connect, "SELECT * FROM `table_employees_zhilina`");

       $goods = mysqli_fetch_all($goods);

       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Телефон</th>
               <th>Адрес</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                   <td>' . htmlspecialchars($iter[4]) . '</td>
                   <td>' . htmlspecialchars($iter[5]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }

   elseif (isset($_POST['button4'])) {
       $goods = mysqli_query($connect, "DELETE FROM `table_employees_zhilina` 
WHERE `Name`= 'Измененный'");
       $goods = mysqli_query($connect, "SELECT * FROM `table_employees_zhilina`");

       $goods = mysqli_fetch_all($goods);
       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Телефон</th>
               <th>Адрес</th>
             </tr>';

       foreach ($goods as $iter) {
           echo '<tr>
                   <td>' . htmlspecialchars($iter[1]) . '</td>
                   <td>' . htmlspecialchars($iter[2]) . '</td>
                   <td>' . htmlspecialchars($iter[3]) . '</td>
                   <td>' . htmlspecialchars($iter[4]) . '</td>
                   <td>' . htmlspecialchars($iter[5]) . '</td>
                 </tr>';
       }
       echo '</table>'; // Закрытие таблицы
   }

   elseif (isset($_POST['button5'])) {
       $goods = mysqli_query($connect, "CREATE TABLE `table_group_zhilina` (
  `Id_group` int(11) NOT NULL,
  `Name` varchar(40),
  `Id_employees` int(11) DEFAULT 0) 
  DEFAULT CHARACTER SET utf8 COLLATE=utf8_general_ci");
       if (!$goods) {
             ?><p align="center">Таблица уже была создана!</p><?php
        }
        else 
        {
             ?><p align="center">Таблица создана!</p><?php
        }
   }
   elseif (isset($_POST['button6'])) {
       $goods = mysqli_query($connect, "ALTER TABLE table_group_zhilina 
MODIFY COLUMN Id_group INT AUTO_INCREMENT PRIMARY KEY;");
       if (!$goods) {
             ?><p align="center">Таблица не может быть изменена!</p><?php
        }
        else 
        {
             ?><p align="center">Таблица изменена!</p><?php
        }
   }
   elseif (isset($_POST['button7'])) {
       $goods = mysqli_query($connect, "DROP TABLE table_group_zhilina");
       if (!$goods) {
             ?><p align="center">Таблица уже была удалена!</p><?php
        }
        else 
        {
             ?><p align="center">Таблица удалена!</p><?php 
        }
   }
   elseif (isset($_POST['button8'])) {
       $goods = mysqli_query($connect, "SELECT table_employees_zhilina.Name, table_employees_zhilina.Surname, table_employees_zhilina.Patronymic, table_post_zhilina.Name, table_post_zhilina.Salary
FROM table_employees_zhilina
INNER JOIN table_post_zhilina ON table_employees_zhilina.id_post = table_post_zhilina.Id_post AND table_post_zhilina.Salary >= 70000
ORDER BY table_employees_zhilina.Surname");
       $goods = mysqli_fetch_all($goods);
       echo '<table align="center">';
       echo '<tr>
               <th>Фамилия</th>
               <th>Имя</th>
               <th>Отчество</th>
               <th>Должность</th>
               <th>Зарплата</th>
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
}
    ?>
</body>
</html>
