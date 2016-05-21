# server

nc -k -l 4444

# client
exec 3<>/dev/tcp/localhost/4444
cat <&3
echo foo >&3

# client
nc localhost 4444