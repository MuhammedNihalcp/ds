class Strings {
  void addTwoString(String name1, String name2) {
    String sum = name1 + name2;
    print(sum);
  }

  void replaceAlphabets(String string, int n) {
    var result = '';
    for (var i = 0; i < string.length; i++) {
      var charCode = string.codeUnitAt(i);
      if (charCode >= 65 && charCode <= 90) {
        result += String.fromCharCode((charCode - 65 + n) % 26 + 65);
      } else if (charCode >= 97 && charCode <= 122) {
        result += String.fromCharCode((charCode - 97 + n) % 26 + 97);
      } else {
        result += string[i];
      }
    }
    print(result);
  }
}
class hello{
  
}