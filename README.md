# CustomRubyFlattener

A custom implementation of Ruby's flatten method.
<h1> Usage </h1>

```ruby
require 'flattener.rb'

flatten!([[1],0]) -> [1,0]
flatten!([[[]], 1]) -> [1] 
flatten!(["hello", [["hi",123]]]) -> ["hello","hi",123] 
```
