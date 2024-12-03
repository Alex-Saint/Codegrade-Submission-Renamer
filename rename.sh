# argument validation check
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <yourFirstName>"
  exit 1
fi

# make directory for files
mkdir ./processed

# process
for i in *; do
  # check if directory exists
  if [[ -d $i ]]; then 
    # exclude processed directory
    if [[ $i != "processed" ]] ; then
      echo  "processed" $i
      # get the filename to process
      name=$i
      #echo "Name is: " $name
      nameNoSpace="$(echo -e "${name}" | tr -d '[:space:]')"
      #remove the spaces from the directory name
      ofname=${nameNoSpace:0:24}
      ofname2=${nameNoSpace:7:24}
      # rename the file into the new directory
      cp ./"$name"/main.cpp  ./processed/"["$1"]"$ofname2-main.cpp
    fi
  fi
done
