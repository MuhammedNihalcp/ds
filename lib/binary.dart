class Binary{
  var array = [];

 
 
  double binary(int target,array ){
    double start = 0;
    double end = array.length;
     
    double middle = start + (end-start)/2;
    if(array[middle] == target){
      return array[start];
    }else if(array[middle]>target){
       middle -1;
    }else if(array[middle]<target){
      middle +1;
    }

    return -1;

    
  }
}