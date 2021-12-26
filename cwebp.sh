images=$(ls -d 4 *.png)

for image in $images
do
  # -q 90 指定转换质量，经试验这个值效果和压缩率都不错
  cwebp $image -q 70 -o ${image%.*}.webp
done
