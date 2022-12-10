file_count=$(find . -maxdepth 1 -type f | wc -l)

function prompt_user_input {
	read -p "Guess the number of files in the current directory: " input
}

prompt_user_input

while [ $input -ne $file_count ]
do
	[ $input -lt $file_count ] && echo "Your guess is too low"
	[ $input -gt $file_count ] && echo "Your guess is too high"
	prompt_user_input
done

echo "Your guess $input is accurate. Congrats"
