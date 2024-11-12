hosts_func()
{
    [[ $(dig +short @$3 $1) == $2 ]] && echo "OK" || echo "BAD"
}

hosts_func $1 $2 $3