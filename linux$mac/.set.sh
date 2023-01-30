$type = $1
$loc = $2
$path = $3

sudo chmod 777 "/usr/bin/velt/$type/.$loc"
cp "$path" "/usr/bin/velt/$type/.$loc"
