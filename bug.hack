function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This code has an uncommon bug.  The recursive call to foo() will eventually hit the base case (x==0), but the stack size for recursive calls may be limited.  For sufficiently large inputs, this code could result in a stack overflow error instead of correctly computing the factorial.