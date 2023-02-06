class BubbleSort {
  List<int> bubbleSort(List<int> array) {
    for (var i = 0; i < array.length - 1; i++) {
      for (var j = i + 1; j < array.length - i - 1; j++) {
        if (array[j] > array[j + 1]) {
          var temp = array[j];
          array[j] = array[j + 1];
          array[j + 1] = temp;
        }
      }
    }
    return array;
  }

  void display(List<int> arrays) {
    var array = bubbleSort(arrays);
    for (var i = 0; i < array.length; i++) {
      print(array[i]);
    }
  }
}
