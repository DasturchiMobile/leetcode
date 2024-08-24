class Solution {
  void rotate(List<int> nums, int k) {
    int _index = k;
    if(nums.length <= 1)
    {
        return;
    }
    while(nums.length < _index)
    {
        _index = _index - nums.length;
    }
    
    List<int> a = [...nums.sublist(nums.length - _index), ...nums.sublist(0,nums.length - _index)];
    nums.removeRange(0, nums.length);
    nums.insertAll(0, a);
  }
}
