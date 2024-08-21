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
