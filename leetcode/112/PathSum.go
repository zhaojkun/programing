package leetcode

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func hasPathSum(root *TreeNode, sum int) bool {
	if root == nil {
		return false
	}
	if root.Left == nil && root.Right == nil {
		return sum == root.Val
	}
	leftZero := false
	rightZero := false
	if root.Left != nil {
		leftZero = hasPathSum(root.Left, sum-root.Val)
	}
	if root.Right != nil {
		rightZero = hasPathSum(root.Right, sum-root.Val)
	}
	return leftZero || rightZero
}
