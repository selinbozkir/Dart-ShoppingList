import 'dart:io';

void main(){


Map <String, dynamic> fruitSList = {};
Map <String, dynamic> vegetableList = {}; 
Map <String, dynamic> otherList = {};  

  while(true){
    print("Please enter type. Fruit is f, vegetable is v, and other types o"); 
    var type = stdin.readLineSync() ?? ""; 
    if (type.isEmpty) {
      break;
    }
    if (type=='f') {
    print("Enter the fruit");
     var fruit = stdin.readLineSync() ?? "";
    print("How many kilos do you want $fruit");
     var fquantity = stdin.readLineSync() ?? ""; 
    fruitSList.addAll({
    fruit: fquantity
    });
    }
    else if(type=='v'){
    print("Enter the vegetable");
    var vegetable = stdin.readLineSync() ?? "";
    print("How many kilos do you want $vegetable");
    var vquantity = stdin.readLineSync() ?? ""; 
    vegetableList.addAll({
    vegetable: vquantity 
    });
    }
    else if (type=='o') {
    print("Enter the others");
    var other = stdin.readLineSync() ?? "";
    print("Enter quantity for $other");
    var oquantity = stdin.readLineSync() ?? ""; 
    otherList.addAll({
    other: oquantity
    });
    }
}
print(fruitSList);
print(vegetableList);
print(otherList); 

var mSum = 0; 
var sSum = 0; 
var dSum = 0; 
for(int i = 0; i<fruitSList.keys.length; i++){
mSum = mSum + int.parse(fruitSList.values.elementAt(i)); 
}
double average = mSum / fruitSList.keys.length;
print("Average fruits: $average");


for(int i = 0; i<vegetableList.keys.length; i++){
sSum = sSum + int.parse(vegetableList.values.elementAt(i)); 
}
double average2 = sSum / vegetableList.keys.length;
print("Average vegetables: $average2");

for(int i = 0; i<otherList.keys.length; i++){
dSum = dSum + int.parse(otherList.values.elementAt(i)); 
}
double average3 = dSum / otherList.keys.length;
print("Average others: $average3");

}