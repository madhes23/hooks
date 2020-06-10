package src.com;

public class Foo {
    public void bar(int x, int y, int z) {
      if (x>y) {
        if (y>z) {
          if (z==x) {
           // !! too deep nested statements
          }
        }
      }
    }
  }