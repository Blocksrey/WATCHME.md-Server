set -e
cd `dirname $0`
for i in raw/*; do
	ffmpeg -y -i $i -q:v 10 baked/`basename $i .ppm`.gif
done
