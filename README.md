# SHERLOCK 13

This program implements the game Sherlock 13 in C. The game works through the network with TCP/IP. The user interface was made using SDL2.

## Rules

Click [here](https://www.arcanewonders.com/wp-content/uploads/2021/05/S13_Rules_ENG_web.pdf) to find the rules : 

## Building

### Make

`make all`

### No make

`./cmd.sh`

## Playing the game

### Hosting a game

`make server`

`./server <port>`

### Joining a game

`make sh13`

`./sh13 <server ip> <server port> <client ip> <client port> <player name>`

Then press connect on the interface. If the game crashes, the connection has failed due to wrong parameters (or the server is down).

The game will start when 4 players are connected.
