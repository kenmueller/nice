nice-to-cpp() {
	if [ -z "$2" ]
	then
		out="${1%%.*}.cpp"
	else
		out="$2"
	fi
	node ~/.nice/convert.js "$(cat "$1")" > "$out"
}

nicec() {
	if [ -z "$2" ]
	then
		out="${1%%.*}.cpp"
	else
		out="$2"
	fi
	nice-to-cpp "$1" "$out"
	g++ "$out" -std=c++17 -o "${out%%.*}"
	rm -fv "$out" > /dev/null
}

nice-run() {
	"./$1"
}

nice() {
	nicec "$1"
	compiled="${1%%.*}"
	nice-run "$compiled"
	rm -fv "$compiled" > /dev/null
}
