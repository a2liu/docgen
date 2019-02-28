---
layout: latex
---
{:start="3"}
3. **A heaping challenge.** We begin by calling function <code>solution(Heap h,
<strong>int</strong> x, <strong>int</strong> k)</code> with the heap we'd like
to search `h`, the data item `x` we're comparing with, and the number of items
*k* that we'd like to see less than `x`. `solution` then calls
<code>solveRecursive(HeapNode i, <strong>int</strong> x,
<strong>int</strong> k)</code>, passing the root node of `h`, as well as `x` and
`k`. `solveRecursive` then follows the following logic:

    1. If `i` is null, or `k` is `0`, or the value at `i` is not less than `x`,
return `0`.
    2. Else, if `i` has no children, return `1`.
    3. Else, call `solveRecursive`, passing parameters `i.left` (the left child
of `i`), `x`, and <code>k - 1</code>, storing the result as `lsum`.
    4. If `lsum` is greater than or equal to `k - 1`, then return `lsum + 1`.
    5. Else, call `solveRecursive`, passing parameters `i.right` (the right child
of `i`), `x`, and <code class="text-nowrap">k - 1 - lsum</code>, and store the result as `rsum`.
    6. Return `1 + lsum + rsum`


    Then, in `solution`, return true if the final result is greater than or equal
to `k`, and false otherwise.

    As pseudocode, this could be written as:

    ```c
    #define true 1
    #define false 0
    typedef int bool;
    typedef unsigned int uint32_t;

    bool solution(Heap h, int x, uint32_t k) {
      return solveRecursive(h.root, x, k) >= k;
    }

    uint32_t solveRecursive(HeapNode i, int x, uint32_t k) {
      if (i == NULL || k <= 0 || i.value >= x)
        return 0;
      else if (i.left == NULL && i.right == NULL) {
        return 1;
      } else {
        uint32_t sum = solveRecursive(i.left, x, k-1) + 1;
        if (sum >= k) return sum;
        else return sum + solveRecursive(i.right, x, k - sum);
      }
    }
    ```

4. We first define a list-backed heap node to be a heap node with no children and
a reference to a sorted list, and whose delete operations replace the node's current
value with the next value from the list (by index), unless the list is empty, in which
case the node is successfully deleted. In both cases the node's previous value is
returned.

    We can then create a list-backed heap node from each of the `k` lists, and combine
them pairwise into a single heap using this process:

    1. Given heaps `h1` and `h2`, delete min from the heap with the smaller root
node value, storing the result as `r`.
    2. Create a heap with root node with value `r`, and children `h1` and `h2`.

    Note that this process doesn't maintain the shape of the resulting heap; the final
heap is not guarranteed to be a complete tree. This operation is done `k - 1` times
to combine all of the list-backed heap nodes into a single heap of `2k - 1` nodes,
and each operation has a runtime of on average `O(log k)`, meaning that this process is
`O(k*log k)`. We then output the result of `n` delete min operations from the final
heap we have created. each delete min is a `O(log k)` operation, meaning that
this operation is `O(n*log k)`, and the whole process is `O((n + k)*log k)`.
Since <code>n &Gt; k</code>, this simplifies to `O(n*log k)`.

    <div class="page-break"></div>
5. We use a modified version of a 2-3 tree, where each guide now describes the total
number of elements contained in its subtree, and each value is an element in a list.
The values are stored in the order that they appear in the list. Then the following operations
can be performed

    - <big><strong><i>O</i>(1) List creation:</strong></big> To create a list, we instantiate a new 2-3 tree of
known size. This is a constant time operation.
    - <big><strong><i>O</i>(log <i>n</i>) List Concatenation:</strong></big> To concatenate two lists, <i>L<sub>1</sub></i>
and <i>L<sub>2</sub></i>, we follow the general procedure for combining 2-3
trees, with 3 cases:
    1. <b><i>L<sub>1</sub></i> has height greater than <i>L<sub>2</sub></i>:</b>
We find some node *p* on the right-most path of <i>L<sub>1</sub></i> whose
subtree has height one greater than the height of <i>L<sub>2</sub></i>. We then
perform an insert, inserting <i>L<sub>2</sub></i> as the right-most child of *p*.
This insert is done identically to a general ordered 2-3 tree, except that each time
we try to insert a child, we also update the parent's guide to be the sum of all
its childrens' guides.
    2. <b><i>L<sub>2</sub></i> has height greater than <i>L<sub>1</sub></i>:</b>
This reduces to the previous case, except that we define *p* as a node on the
left-most path of <i>L<sub>2</sub></i> whose subtree has height one greater than
the height of <i>L<sub>1</sub></i>, and we insert <i>L<sub>1</sub></i> as the
left-most child of *p*.
    3. <b><i>L<sub>1</sub></i> has the same height as <i>L<sub>2</sub></i>:</b>
We return a new list whose children, in order, are <i>L<sub>1</sub></i> and
<i>L<sub>2</sub></i>, and whose guide is the sum of the guides of the root nodes of
those two lists.

    - <big><strong><i>O</i>(log <i>n</i>) List Splitting:</strong></big> To split
a list, follow the procedure that you would for an ordered 2-3 tree, substituting
the above list concatenation method for the ordered 2-3 tree method. To traverse to
the <i>k<sup>th</sup></i> item, use the next item.
    - <big><strong><i>O</i>(log <i>n</i>) Get the <i>k<sup>th</sup></i> Item:</strong></big>
To get the <i>k<sup>th</sup></i> item, use the following procedure:
    1. Begin with some integer *i* = *k*, and node *n* = *RootNodeOfL*, with guide *n.guide* and children
*n.child0*, *n.child1*, and *n.child2*, where *n.child2* is undefined if *n* has only
2 children.
    2. If *i* > *n.guide*, then *k* is not a valid index. Return an error code.
    3. If *n* has the guide 1, *n* is a leaf node! Return the value at *n*.
    4. If *n.child0* has a guide greater than or equal to *i*, set *n* to *n.child0*, and go back to **3**.
    5. If *n.child0.guide* + *n.child1.guide* is greater than or equal to *i*, set *n* to *n.child1*, and go back to **3**.
    6. Set *n* to *n.child2* and go back to **3**.

    <div class="page-break"></div>
6. To accomodate for fast reversing of *L*, we add a reverse bit to the guide of each
node in *L*, which by default is set to 0. We then define two modes of reading/writing
to the structure of *L*:
    - Normal Mode: The children are in order from left to right (as before). When a node has 2 children,
its *child2* is undefined
    - Reversed Mode: The children are in reverse order. The right-most child is *child0*, and
the left most child is *child1* when the node has 2 children and *child2* when
the node has 3 children.

    When performing any of the operations described in problem 5, we start with our
read/write mode as normal mode, and switch between normal and reversed mode whenever
we come accross a node with a reversed bit of 1. For example, if *L* has exactly one
reverse bit set to 1 in its root, then we interpret every node in reverse mode.
When finding the <i>k<sup>th</sup></i> element of *L*, we traverse using the same
method as above, but do the operations from *right to left* instead of *left to right* if we're
in reverse mode, i.e. do step 4 with *n.child2* (if its defined), step 5 with *n.child2* and *n.child1*
(if *n.child2* is defined), and so on.
