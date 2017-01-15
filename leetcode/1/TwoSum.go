package leetcode

func twoSum(nums []int, target int) []int {
	res := make([]int, 2, 2)
	leftOver := make(map[int]int)
	for iFirst, num := range nums {
		if iSec, ok := leftOver[target-num]; ok {
			if iFirst < iSec {
				res[0] = iFirst
				res[1] = iSec
			} else {
				res[0] = iSec
				res[1] = iFirst
			}

		} else {
			leftOver[num] = iFirst
		}
	}
	return res
}
