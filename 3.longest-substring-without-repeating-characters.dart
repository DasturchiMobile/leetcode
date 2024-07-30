class Solution {
  int lengthOfLongestSubstring(String s) {
    List<String> list = [];
    s = s.replaceAll("p", "");
    for(int i = 0; i < s.length; i++){
//       list.add(s[i]);
      for(int l = i; l < s.length; l++){
        if(s[i] == s[l]){
          list.add(s[i]);
        }
      }
    }
     return list.toSet().toList().length;
  }
}
