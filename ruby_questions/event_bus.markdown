# Event Bus Challenge

1. The goal is to build a very simple PubSub/event class in ruby. We will create an EventEmitter object and then we'll subscribe to events and trigger them. Subscribing to an event simply adds a callback to be run when the event is triggered. Triggering an event (emit) should run all the attached callbacks.
2. *Don't overthink it*. The solution should only take a few minutes and a few lines of code. Build only what you need to get the desired ouput.

Attached is a valid ruby script. You can edit in browser or on local ruby file. When you have it working, make sure you update your solution so we can see it. Let us know how long it takes you to finish it.


## Desired Output

```
1. Second error.
1. Yet another error.
2. Yet another error.
SUCCESS! Great success!
```

```ruby

# Constraints:
# 1. event names are arbitrary strings
# 2. event data is always a hash
# 3. calling a proc is just: proc.call(data)

class EventBus
  def initialize
    # your code
  end
  
  def emit(event_name, data)
    # your code
  end

  def subscribe(event_name, callback)
    # your code
  end
end

#----------------------------------------

emitter = EventBus.new

error_callback = proc { |data| puts "Error 1. #{data[:message]}" }
error_callback2 = proc { |data| puts "Error 2. #{data[:message]}" }
success_callback = proc { |data| puts "SUCCESS! #{data[:message]}" }

emitter.emit "error", { message: "Error one." }

emitter.subscribe "error", error_callback
emitter.emit "error", { message: "Second error." }

emitter.subscribe "error", error_callback2
emitter.emit "error", { message: "Yet another error." }

emitter.subscribe "success", success_callback
emitter.emit "success", { message: "Great success!" }
 
# Expected output:

# Error 1. Second error.
# Error 1. Yet another error.
# Error 2. Yet another error.
# SUCCESS! Great success!

```


```py
# Constraints:
# 1. event names are arbitrary strings
# 2. event data is always a hash
# 3. calling a proc is just: proc.call(data)

class EventBus
  def initialize
    # your code
  end
  
  def emit(event_name, data)
    # your code
  end

  def subscribe(event_name, callback)
    # your code
  end
end

#----------------------------------------

emitter = EventBus.new

error_callback = proc { |data| puts "Error 1. #{data[:message]}" }
error_callback2 = proc { |data| puts "Error 2. #{data[:message]}" }
success_callback = proc { |data| puts "SUCCESS! #{data[:message]}" }

emitter.emit "error", { message: "Error one." }

emitter.subscribe "error", error_callback
emitter.emit "error", { message: "Second error." }

emitter.subscribe "error", error_callback2
emitter.emit "error", { message: "Yet another error." }

emitter.subscribe "success", success_callback
emitter.emit "success", { message: "Great success!" }
 
# Expected output:

# Error 1. Second error.
# Error 1. Yet another error.
# Error 2. Yet another error.
# SUCCESS! Great success!

```
