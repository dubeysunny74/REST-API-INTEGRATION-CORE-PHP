<?php
class TDshape {
const Pi = 3.142 ;  // constant value
 function __call($fname, $argument){
    if($fname == 'area')
        switch(count($argument)){
            case 0 : return 0 ;
            case 1 : return self::Pi * $argument[0] ; // 3.14 * 5
            case 2 : return $argument[0] * $argument[1];  // 5 * 10
        }

    }

}
$circle = new TDshape();
echo "Area of circle:".$circle->area(5)."</br>"; // display the area of circle
echo "Area of circle:".$circle->area()."</br>"; // display the area of circle
echo "Area of circle:".$circle->area(5,10)."</br>"; // display the area of circle
 $rect = new TDshape();
echo "Area of rectangle:".$rect->area(5,10); // display area of rectangle
echo '<br>';
echo "===========================================================================";
echo '<br>';
/*$array1 = array(1, 'a' => "red", 8, 'b' => "fruits");
$array2 = array(1,2,'a' => "green", 2, 'xyz', 4, 'b' => "test");
$result = array_merge($array1, $array2);
print_r($result);*/


$array1 = array('a' => "red", 'b' => "fruits");
$array2 = array('a' => "green", 'b' => "test");
$result = array_merge($array1, $array2);
print_r($result);

$array1 = array(0 => 'zero', 1 => 'one', 2 => 'two');
$array2 = array(1 => 'One', 2 => 'Three', 3 => 'Four');
$final = array_merge($array1, $array2);
print_r($final);


$array1 = array( 'zero','one', 'two');
$array2 = array('One','Three',  'Four');
$final = array_merge($array1, $array2);
print_r($final);


$roll = array(1, 2, 3, 4);
$name = array("Amit", "Deepak", "Rahul", "Shyam");
$students = array_combine($roll,$name);
print_r($students);

$my_array = array("Dog","Cat","Horse");

list($a, , $c) = $my_array;
echo "Here I only use the $a and $c variables.";	
?>
