# Thanks to reddit user: /u/myers022/

imagePath="~/"
outputPath="~/Library/Application Support/Microsoft/Teams/Backgrounds/Uploads"

# Check if the output directory exists; if not, create it
[[ ! -d "$outputPath" ]] && mkdir -p "$outputPath"

# Loop through all PNG images in the specified directory
for image in $imagePath/*.png; do

# Generate a new GUID
guid=$(uuidgen)

# Resize main image to 1920x1080
echo "Creating Background"
sips -z 1080 1920 "$image" --out "$outputPath/$guid.png"

# Resize thumbnail to 220x158
echo "Creating Background Thumbnail"
thumbName="${guid}_thumb.png"
sips -z 158 220 "$image" --out "$outputPath/$thumbName"

done
