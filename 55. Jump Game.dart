class Solution {
  bool canJump(List<int> nums) {
    int gas = 0; 

    for (int n in nums) {
      if (gas < 0) {
        return false; 
      } else if (n > gas) {
        gas = n; 
      }
      gas -= 1; 
    }

    return true;
  }
}
