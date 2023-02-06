class Hello {
  String name = 'nihalrij';
  String name2 = 'brototype';
  void hello() {
    // var num = name2.length-3;
    // var temp = name[3];
    // name[3] = name2[7];
    // name2[num] = temp;

    for (var i = 0; i < name.length; i++) {
      for (var j = name2.length - 1; j >= 0; j--) {
        if (i == num || j == name2.length - 3) {
          var namenum = name.codeUnitAt(i);
          var name2num = name2.codeUnitAt(j);
          var temp = namenum;
          namenum = name2num;
          name2num = temp;

        }
      }
      print(name);
      
    }
  }
}
