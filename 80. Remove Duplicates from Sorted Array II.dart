class Solution {
    int k = 1;
  int removeDuplicates(List<int> nums) {
    int _l = 1;
    for(int i = 1; i < nums.length; i ++){
        if(nums[i] == nums[i - 1]){
            _l++;
        }else{
            _l = 1;
        }
        if(_l <= 2){
            nums[k] = nums[i];
            k++;
        }
    }
    return k;
  }
}

// second way

class Solution {
    var k = 0;
    List<int> expectedNums = [];
  int removeDuplicates(List<int> nums) {
    List<int> indexs = [];
    for(int i = 1; i < nums.length - 1; i ++){
        if((nums[i - 1] == nums[i]) && (nums[i] == nums[i+1])){
            indexs.add(i + 1);
        }
    }
     indexs = indexs.reversed.toList();
    for(int a in indexs){
        nums.removeAt(a);
    }
    k = nums.length;
    return k;      
    }
}
