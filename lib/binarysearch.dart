class BinarySearch {
  var array = [];
  double binaryS(double target, array) {
    double start = 0;
    double end = array.length - 1;
    while (start <= end) {
      double middle = start + (end - start) / 2;
      if (array[middle] == target) {
        return middle;
      } else if (array[middle] > target) {
        end = middle - 1;
      } else if (array[middle] < target) {
        start = middle + 1;
      }
    }
    return -1.0;
  }

  double binaryRec(array, int target) {
    return binaryRecHelper(array, target, 0, array.length - 1);
  }

  double binaryRecHelper(array, int target, double start, double end) {
    if (start > end) {
      return -1;
    }
    double middle = start + (end - start) / 2;
    if (array[middle] == target) {
      return middle;
    } else if (array[middle] > target) {
      return binaryRecHelper(array, target, start, middle - 1);
    } else {
      return binaryRecHelper(array, target, start, middle + 1); 
    }
  }
}
