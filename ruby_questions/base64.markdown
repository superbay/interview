implement base64


```ruby


require "base64"

enc   = Base64.encode64('Send reinforcements')
                    # -> "U2VuZCByZWluZm9yY2VtZW50cw==\n"
plain = Base64.decode64(enc)
                    # -> "Send reinforcements"
                    
                    
```
