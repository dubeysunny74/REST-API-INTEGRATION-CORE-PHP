<?php
// required headers
header("Access-Control-Allow-Origin: *");
#header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 

 
// include database and object files
include_once '../config/database.php';
include_once '../object/users.php';
 
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$users = new Users($db);
 
$json_params =json_decode(file_get_contents("php://input"));
$data = $json_params;
print_r($data);
// set product property values
#echo $data->email;
$users->email = $data->email;
$users->password = $data->password;


// query products
$stmt = $users->login();
#$result = $stmt->fetchAll();
    # extract($row);
        # print_r( $stmt);

        echo json_encode($stmt);
// check if more than 0 record found

 
    // products array
 
    // retrieve our table contents
    // fetch() is faster than fetchAll()
  /*  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
       # extract($row);
         print_r( $row);
        $users->echojson($row);
 
       
    }*/
 
    # $product->echojson($products_arr);
 
/*else{
    echo json_encode(
        array("message" => "No products found.")
    );
}*/
?>