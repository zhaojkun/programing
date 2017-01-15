package leetcode

import (
	"reflect"
	"testing"
)

type TestCase struct {
	nums     []int
	target   int
	excepted []int
}

func TestCases(t *testing.T) {
	cases := []TestCase{
		{
			nums:     []int{3, 2, 4},
			target:   6,
			excepted: []int{1, 2},
		},
	}
	for _, c := range cases {
		res := twoSum(c.nums, c.target)
		if !reflect.DeepEqual(c.excepted, res) {
			t.Errorf("excpted %v,but the val is %v", c.excepted, res)

		}
	}
}
