files_in_dir=$(ls -l | grep "\-r*" | wc -l)
function ask_for_files {
echo "How many files are in the current directory? Make a guess by entering a number:"
read response
}
ask_for_files
while [[ $response != $files_in_dir ]]
do
if [[ $response -le $files_in_dir ]]
then
	echo "Your guess was too low. Try again!"
elif [[ $response -gt $files_in_dir ]]
then
	echo "Your guess was too high. Try again!"
fi
ask_for_files
done
if [[ $response -eq $files_in_dir ]]
then
	echo "Your guess was correct! Heureka!"
fi
echo "End program."

