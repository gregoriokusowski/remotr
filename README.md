### Overview

Running in Ruby, using Sinatra and AppleScript, remotr is a simple application that aims for simplicity on presentations.

### Prerequisites

* Keynote
* Ruby ( bundler is recommended but not needed )

### Setup

In order to get the app running, you can setup it by executing the following commands:

```
$ git clone git://github.com/gregoriokusowski/remotr.git
$ bundle
```

### Up and Running

If you are ready with the setup steps, feel free to run the following:

```
$ ruby remotr.rb
```

This will start a sinatra server on your machine, on port 4567.

### Usage

First of all, your Keynote presentation, should me opened at Play mode. ( This part can be improved )
Let's say that your machine's IP address is 192.168.1.5.
So everything you should do now, is access ```http://192.168.1.5:4567/show/next``` to advance, or ```http://192.168.1.5:4567/show/next``` to go back.

### Todo

* Release as a gem.
* Open Keynote and Play the Presentation
* Create a command line interface, working with features like:
  * Presentation to open and show # like ``` $ remotr foo.key ```
  * Port # like ``` $ remotr --port 1233 ```
  * Password # maybe prompt it :)
