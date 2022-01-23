require 'fiddle'

libm = Fiddle.dlopen('./target/debug/librust_fiddle.so')

hello_world = Fiddle::Function.new(
    libm["hello_world"],
    [],
    :void
)

hello_world.call()
