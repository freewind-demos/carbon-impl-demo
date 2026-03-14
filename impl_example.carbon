// Carbon impl
package ImplExample api;

struct Counter {
  var count: i32;
}

impl Counter {
  fn New() -> Counter {
    return Counter{.count = 0};
  }

  fn Increment(self: *Counter) {
    self.count = self.count + 1;
  }
}

fn Main() -> i32 {
  var c: Counter = Counter.New();
  c.Increment();
  Print("Count = {0}", c.count);
  return 0;
}
