<?php

//Define DB Params
define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASS", "");
define("DB_NAME", "brilliant_directories_security");


function get_widget($widget_name, $widget_hash, $widget_url) {
    $widghet_results = "";
    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    /* comprobar la conexión */
    if ($mysqli->connect_error) {
        printf("Falló la conexión: %s\n", $mysqli->connect_error);
        exit();
    }
    $widget_query = "SELECT * FROM widgets_production A INNER JOIN widgets_clients_pivot B ON B.widget_id = A.id INNER JOIN widgets_clients C ON C.id = B.client_id WHERE A.widget_name = '".$widget_name."' AND C.client_url = '".$widget_url."'  ";
    $widget_array = array();
    if ($widget_results = $mysqli->query($widget_query)) {

          while ($row = $widget_results->fetch_object()){
              $widget_array[] = $row;
          }
          /* liberar el conjunto de resultados */
          $widget_results->close();

    }
    $widget_response = "";
    foreach($widget_array as $row) {
        if ($row->widget_name == $widget_name) {
            $widget_response = $row->widget_code;
        }
    }
    return $widget_response;
}

?>
