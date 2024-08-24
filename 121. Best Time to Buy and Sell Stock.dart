import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
      int _prof = 0;
      int _minPrice = prices.first;
      for (int i = 1; i < prices.length; i++) {
          _minPrice = min(_minPrice, prices[i]);
          _prof = max(_prof, prices[i]-_minPrice);
      }
      return _prof;
  }
}
