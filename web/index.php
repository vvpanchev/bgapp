<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Факти за България</title>
  </head>
  <body>
    <div align="center">
      <h1>Факти за България</h1>
      <img src="bulgaria-map.jpg" />
      <table>
        <tr>
          <td>Площ</td>
          <td></td>
          <td>110 993.6 кв.км.</td>
        </tr>
        <tr>
          <td>Столица</td>
          <td></td>
          <td>София</td>
        </tr>
      </table>
      <br />
      <h1>НАСЕЛЕНИЕ КЪМ 31.12.2020 Г. ПО ОБЛАСТИ И ПОЛ</h1>
      <table>
<?php
   require_once ('config.php');

   try {
      $connection = new PDO("mysql:host={$host};dbname={$database};charset=utf8", $user, $password);
      $query = $connection->query("SELECT region_name, men ,women FROM region ORDER BY region_name ASC");
      $cities = $query->fetchAll();

      if (empty($cities)) {
         echo "<tr><td>Няма данни.</td></tr>\n";
      } else {
         foreach ($cities as $city) {
            print "<tr>\n";
            print "<td>{$city['region_name']}</td>\n";
            print "<td>{$city['men']}</td>\n";
            print "<td>{$city['women']}</td>\n";
            print "<td>{$city['men'] + $city['women']}</td>\n";
            print "</tr>\n";
         }
      }
   }
   catch (PDOException $e) {
      print "<tr><td>Няма връзка към базата. Опитайте отново.</td></tr>\n";
   }
?>
      </table>
    </div>
  </body>
</html>
