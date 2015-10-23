find . -type f | while read f
do
echo "$f ..."
CDATE=$(exiftool -createdate -S -d "%m/%d/%Y %H:%M:%S" "$f"| sed "s/CreateDate: //")
[[ -z "$CDATE" ]] || SetFile -d "$CDATE" "$f"

MDATE=$(exiftool -modifydate -S -d "%m/%d/%Y %H:%M:%S" "$f"| sed "s/ModifyDate: //")
[[ -z "$MDATE" ]] ||SetFile -m "$MDATE" "$f"
done
