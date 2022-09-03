# Nim ZeroMQ wrapper

![example workflow](https://github.com/nim-lang/nim-zmq/actions/workflows/tests.yml/badge.svg)

**Note:** This wrapper was written and tested with ZeroMQ version 4.2.0. Older
versions may not work.

ZeroMQ API Reference can be found here : http://api.zeromq.org/4-2:_start

## Installation

```
$ nimble install zmq
```

## Examples

### Simple client/server

#### server

```nim
  import zmq

  var responder = zmq.listen("tcp://127.0.0.1:5555", REP)
  for i in 0..10:
    var request = receive(responder)
    echo("Received: ", request)
    send(responder, "World")
  close(responder)
```

#### client 

```nim
  import zmq

  var requester = zmq.connect("tcp://127.0.0.1:5555", REQ)
  for i in 0..10:
    send(requester, "Hello")
    var reply = receive(requester)
    echo("Received: ", reply)
  close(requester)
```

### Advanced usage

For more examples demonstrating many functionalities and patterns that ZMQ offers, see the ``tests/`` and ``examples/`` folder.

The examples are commented to better understand how zmq works.
