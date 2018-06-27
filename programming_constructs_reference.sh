#use -eq to compare numbers, and = to compare strings
VAR=1
if [ $VAR -eq 1 ] ; then
echo "The variable is 1"
fi

STRING="Friday"
if [ $STRING != "Friday" ] ; then
echo "Will Friday ever come?"
else
echo "WhooHoo. Friday."
fi
#elif and file type testing
filename="$HOME"
if [ -f "$filename" ] ; then
	echo "$filename is a regular file"
elif [ -d "$filename" ] ; then 
	echo "$filename is a directory"
else
	echo "I don't know what $filename is"
fi

#list of testable conditions
#-a OR -e: Does the file exist
#-f: regular file that exists (not a dir, socket, pipe, link or device file)
#-d: Is the file a directory
#-g: does the file have the SGID bit set
#-h OR -L: is the file a symbolic link
#-k: does the file have the sticky bit set
#-n: does this string have a length of greater than 0 bytes
#-O: do you own the file?
#-r: is the file readable by you?
#-s: does the file exist and is larger than 0 bytes?
#-u: does the file have the SUID bit set?
#-w: Do you have write permissions on the indicated file?
#-x: Do you have execute permissions on the indicated file?
#-z: is the length of the string zero bytes?
# expr1 -a expr2: Are both expr1 and expr2 true?
# expr1 -o exptr2: Are either expr1 or expr2 true?
# file1 -nt/-ot file2: Is file1 newer than/older than file2? (per modification timestamp)
# file1 - ef file2: Are the two files associated by a link?
# comparisorns: -ge (greater than or equal to) -gt (greater than) -le (less than or equal to) -lt (less than) -ne (not equal to)

#perform a single command if test is false
[ -d "$dirname"] || echo "$dirname is not a directory"
#perform a single command if test is true
[ -d "$dirname"] && echo "$dirname is a directory"

#case statement
	# Take extension available in a filename
        ext=${filename##*\.}
        case "$ext" in
        c) echo "$filename : C source file"
           ;;
        o) echo "$filename : Object file"
           ;;
        sh) echo "$filename : Shell script"
            ;;
        txt) echo "$filename : Text file"
             ;;
        *) echo " $filename : Not processed"
           ;;
esac

	#for loops syntax
	for FILE in `/bin/ls`
	do
	    echo $FILE
	done
	#following syntax is also acceptable, but can be tricky due to whitespace
	for NAME in John Paul Ringo George ; do
	    echo $NAME is my favorite Beatle
	done

	

	while condition
	do
	    { body }
	done
#do while syntactical example
	N=0
	while [ $N -lt 10 ] ; do
	    echo -n $N
	    let N=$N+1

	until condition
	do

	    { body }
	done
	#until syntactical example
	N=0
	until [ $N -eq 10 ] ; do
	    echo -n $N
	    #let is equivalent to '(())' in bash and is for arithmatic
	    let N=$N+1
	done

	#the tr command translates one set of characters to another
	i.e.:
	FOO="Mixed UPpEr aNd LoWeR CaSE"
	echo $FOO | tr [A-Z] [a-z]
	mixed upper and lower case

	#translate tabs/spaces in filenames into underscores
	for file in * ; do
	    f=`echo $file | tr [:blank:] [_]`
	    [ "$file" = "$f" ] || mv -i -- "$file" "$f"
	done
	
	#print every line containing the word home in /etc/ passwd (the -n is silent mode)
	sed -n '/home/p' /etc/passwd
	#replace every instance of the string 'Mac with Linux in file somefile.txt, and output it to fixed_file.txt
	sed 's/Mac/Linux/g' somefile.txt > fixed_file.txt
	#you can also cat the file through a pipe, i.e.
	cat somefile | sed 's/Mac/Linux/g' > newfile
	#you can remove all instances by using a null pattern, in sed defined as //
	cat somefile | sed 's/ *//' > newfile

	
