
for f in ./*
do
    SetFile -m "$(GetFileInfo -d "$f")" "$f" 
done