<?php
// required headers
/*header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 */
// get database connection
include_once '../config/database.php';
 
// instantiate product object
include_once '../object/product.php';
 
$database = new Database();
$db = $database->getConnection();
 
$product = new Product($db);
 
// get posted data
#$data = json_decode(file_get_contents('Employee.txt'));
//$data  = (object) $_POST;
$json_params =json_decode( file_get_contents("php://input"));
$data = $json_params;
print_r($data);
// set product property values
$product->name = $data->name;
$product->price = $data->price;
$product->description = $data->description;
$product->category_id = $product->category_id;
$product->created = date('Y-m-d H:i:s');
 
// create the product
if($product->create()){
    echo '{';
        echo '"message": "Product was created."';
    echo '}';
}
 
// if unable to create the product, tempnam(dir, prefix)ll the user
else{
    echo '{';
        echo '"message": "Unable to create product."';
    echo '}';
}
?>