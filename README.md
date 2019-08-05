# jsiterminal
Extremely simple JSI component to accept keyboard input on a Linux terminal

## Installation:

```
make && sudo make install
```

## Usage:

```
require('Terminal');

var stdin = new Terminal();
while(1)
{
    System.update(50);
    var ch = stdin.read();
    while( ch && ch.length > 0 )
    {
        puts("I got a key: " + ch);
        ch = stdin.read();
    }
}
```
