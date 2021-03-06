// static test: sporking a static function without dot notation
// e.g., foo(...) rather than f.foo(...) or Foo.foo(...)
// note this can only happen from within another function of 
// the same class or a child class.

class Foo
{
    fun static void start()
    {
        spork ~ foo( "bar" );
        me.yield();
    }

    fun static void foo( string s )
    {
        if( s == "bar" ) <<< "success" >>>;
    }
}

Foo.start();
