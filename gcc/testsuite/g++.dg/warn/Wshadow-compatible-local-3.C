// PR c++/95560
// { dg-do compile { target c++11 } }
// { dg-options "-Wshadow=compatible-local" }

template <typename> void fn1() {
  bool ready;
  enum class State { ready };
}
