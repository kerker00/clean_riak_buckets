-module(clean_riak_buckets).

% requires bashos erlang riak client from 
% https://github.com/basho/riak-erlang-client

-export([clean_buckets/2]).

% example usage clean_riak_buckets:clean_buckets("192.168.1.8", 10017) 
% if you followd the 5 minute install guide in the riak documentation

clean_buckets(RiakIP, RiakPort) ->
    {ok, Pid} = riakc_pb_socket:start_link(RiakIP, RiakPort),
    {ok, Buckets} = riakc_pb_socket:list_buckets(Pid),
    deleteBucket(Pid,Buckets),
    {ok, Buckets}.

% get all Buckets in given riakDB
deleteBucket(Pid, Buckets) -> 
	deleteBucket(Pid, Buckets, []).

deleteBucket(_, [], Acc) ->
    {ok, Acc};
deleteBucket(Pid, [Bucket|RestBucket], Acc) ->
	{ok, Keys} = riakc_pb_socket:list_keys(Pid, Bucket),
	{ok, _} = deleteAllKeys(Pid,Bucket, Keys),
    deleteBucket(Pid, RestBucket, Acc++[Bucket]).

% find and all keys in given Bucket
deleteAllKeys(Pid, Bucket, Keys) -> 
	deleteAllKeys(Pid, Bucket, Keys, []).
% iterate and delete all keys
deleteAllKeys(_, _, [], Acc) ->
	{ok, Acc};
deleteAllKeys(Pid, Bucket, [Key|Rest], Acc) ->
    riakc_pb_socket:delete(Pid,Bucket,Key),
    deleteAllKeys(Pid,Bucket,Rest, Acc++Key).
    