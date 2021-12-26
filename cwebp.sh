cd /root/picture_2
git pull
images=$(ls  *.png)

for image in $images
do
  # -q 90 指定转换质量，经试验这个值效果和压缩率都不错
  cwebp $image -q 70 -o ${image%.*}.webp
  rm -rf $image
done
date=`date "+%Y-%m-%d %H:%M:%S"`

#提交
git add .
git commit -m "图片优化$(date)"
git push
