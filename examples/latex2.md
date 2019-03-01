---
layout: latex
---
1. (25 points) For each of the following sets, determine whether the given set is a subspace
of $$\mathbb{R}^3$$. If yes, please prove that it is a subset of $$\mathbb{R}^3$$; if not, please give a counterexample.
(Recall that to prove that a set is a subspace, show closure over addition and scalar
multiplication for arbitrary elements in the set. To disprove, give a counterexample.)

   {: type="a"}
   1. **The set is a subspace.** Let

      $$\vec x = \begin{bmatrix} 1 \\ 4 \\ 2 \end{bmatrix} \> \>
      \vec y = \begin{bmatrix} 2 \\ 2 \\ 2 \end{bmatrix}$$

      Then, our set is
      $$S = \left\{ \> c\vec x + d\vec y \>
      \middle\vert \> c,d \in \mathbb{R} \> \right\}$$.
      Closed under scalar multiplication:
      Given any element $$\vec a \in S$$ with $$\vec a = c\vec x + d\vec y$$,
      and an arbitrary scalar *k*, $$k\vec a$$ can be defined as $$kc\vec x + kd\vec y$$,
      which is also in $$S$$.
      Closed under addition:
      Given any elements $$\vec a, \vec b \in S$$, with $$\vec a = c_{a}\vec x + d_{a}\vec y$$
      and $$\vec b = c_{b}\vec x + d_{b}\vec y$$, the sum $$\vec a + \vec b$$ can
      be expressed as $$(c_{a} + c_{b})\vec x + (d_{a} + d_{b})\vec y$$,
      which is also in the set $$S$$.

   2. **The set is not a subspace.** Counter example: $$x = 1, y = 2, z = 0$$ and $$x = 0, y = 1, z = 3$$ are both
   in the set, but their sum, $$x = 1, y = 3, z = 3$$ is not.

   3. **The set is a subspace.** Closed under addition: if $$x_1 + y_1 + z_1 = 0$$
   and $$x_2 + y_2 + z_2 = 0$$, then $$(x_1 + x_2) + (y_1 + y_2) + (z_1 + z_2) = 0$$.
   Closed under multiplication: if $$x + y + z = 0$$, then
   $$kx + ky + kz = k(x + y + z) = 0$$ for any scalar $$k$$.

   4. **The set is a subspace.** Observation: the only member of the set is a
   vector of all zeros, i.e. the zero vector in $$\mathbb{R}^3$$. The zero vector
   added to itself is the zero vector, which is part of the set, so the set is
   closed under addition. Any scalar multiplied by the zero vector is the zero
   vector, so the set is also closed under scalar multiplication.

   5. **The set is not a subspace.** Counter example: $$x = 0, y = 0, z = 1$$,
   multiplied by scalar $$k = -1$$ results in a vector with $$x = 0, y = 0, z = -1$$,
   and now $$y \not \leq z$$ so the set is not closed under scalar multiplication.

2. (10 points) Consider the vector space $$\mathbb{M}_2$$, the set of all 2 × 2 matrices.

   {: type="a"}
   1. The additive identity is the matrix $$\begin{bmatrix}0 & 0 \\ 0 & 0 \end{bmatrix}$$.
   2. All matrices that are scalar multiples of $$A$$.
   3. All scalar multiples of $$B$$.
   4. Yes, because $$I$$ is a linear combination of $$B$$ and $$C$$
   5. The span of matrices $$\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$ and
   $$\begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}$$

3. (20 points) For each system:

   {: type="i"}
   1. find a condition on $$b_1$$, $$b_2$$, and $$b_3$$ that makes it solvable
   2. describe the column space geometrically
   3. find the null space of the matrix (describe algebraically as a span of special solutions)

   {: type="a"}
   1. <span></span>
      {: type="i"}
      1. $$b_1 + b_3 = 0$$ and $$b_2 - 2b_1 = 0$$
      2. A single line in $$\mathbb{R}^3$$
      3. The span of $$\begin{bmatrix} -4 \\ 1 \\ 0 \end{bmatrix}$$ and
      $$\begin{bmatrix} -2 \\ 0 \\ 1 \end{bmatrix}$$

   2. <span></span>
      {: type="i"}
      1. $$b_3 - b_1 = 0$$&nbsp;
      2. a plane
      3. The span of $$\begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}$$

