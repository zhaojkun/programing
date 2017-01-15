package leetcode

import "testing"

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}
type TestCase struct {
	Root     *TreeNode
	SumVal   int
	Excepted bool
}

func TestCases(t *testing.T) {
	cases := []TestCase{
		{
			Root:     nil,
			SumVal:   1,
			Excepted: false,
		},
	}
	for _, caseItem := range cases {
		result := hasPathSum(caseItem.Root, caseItem.SumVal)
		if result != caseItem.Excepted {
			t.Errorf("excpted %v,but the val is %v", caseItem.Excepted, result)
		}

	}
}
