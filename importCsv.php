<?php


define('PATH', '');
require_once 'start.php';

 view('header');


  if ( isset( $_FILES['userfile'] ) )
  {
    $csv_file = $_FILES['userfile']['tmp_name'];

    if ( ! is_file( $csv_file ) )
      exit('File not found.');

    $sql = '';

    if (($handle = fopen( $csv_file, "r")) !== FALSE)
    {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE)
        {
            $sql .= "INSERT INTO `product` SET
              `id_product` = $data[0],
              `name` = '$data[1]',
              `description` = '$data[2]',
              `cost` = $data[3],
              `id_category` = $data[4];";

        

          
        }
        fclose($handle);
    }

    // Insert into database


    $db->query( $sql );
        
    //exit( $sql );
    exit( "Complete!" );
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>CSV to MySQL Via PHP</title>
</head>
<body>
  <form enctype="multipart/form-data" method="POST">
    <input name="userfile" type="file">
    <input type="submit" value="Upload">
  </form>
</body>
</html>