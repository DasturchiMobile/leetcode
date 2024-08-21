class Solution {
    List<int> expectedNums = []; 
    int k = 1;
  int removeDuplicates(List<int> nums) {
    if(nums.isEmpty){
        return 0;
    }
    if(nums.length == 1)
    {
        return 1;
    }
    else 
    {
        for(int i = 1; i < nums.length; i++ )
        {
            if(nums[i] != nums[i -1]){
                nums[k] = nums[i];
                k ++;
            }
        }
        return k;
    }
    
  }
}
