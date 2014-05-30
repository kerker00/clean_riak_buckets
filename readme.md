# Clean Riak DB

This small modul written in erlang, allows to delete all buckets in a riak database. This modul is only recomended to be used while developing and should not be used on any db which is in production mode. Since this modul will delete all key and values in all existing buckets. 

THIS MODEL WILL DELETE ALL DATA IN YOUR DB! Be carefull and don't blame me for any data loss you may will have. So keep in mind:

	with great power comes great responsibility

# Dependings

Bashos erlang riak client will be needed to get this running. So go and download and build it, if you don't already have. 
	
[https://github.com/basho/riak-erlang-client](https://github.com/basho/riak-erlang-client)

# Todo

Bring this module in a better structure (OTP Style) to make it more convenient, so it can be used with bashos rebar.

# License  

The MIT License (MIT)

Copyright (c) 2014 Markus Müller (markus@grafixmafia.net)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.