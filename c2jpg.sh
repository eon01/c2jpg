#!/usr/bin/env bash
# Massively convert images to JPEG format
# Usage : c2jpg [file_to_convert]
# Original script : https://dl.dropboxusercontent.com/u/63555455/youtube/jpg.sh
# Check : https://github.com/eon01/c2jpg for contributions




# ---------------check if an image exists, else exit----------
if [ "`ls | grep -i '\(\.jpg\|\.JPG\|\.jpeg\|\.JPEG\|\.gif\|\.GIF\|\.bmp\|\.BMP\|\.pdf\|\.PDF\|\.webp\|\.WEBP\|\.pcx\|\.PCX\|\.pict\|\.PICT\|\.pct\|\.PCT\|\.png\|\.PNG\|\.tif\|\.TIF\|\.tiff\|\.TIFF\|\.xcf\|\.XCF\|\.crw\|\.CRW\|\.cr2\|\.CR2\|\.arw\|\.ARW\|\.sr2\|\.SR2\|\.nef\|\.NEF\)' | wc -l`" -eq 0 ]; then
 echo ""
 echo "--------No image file found -----Exit----"
 echo ""
 exit 1
else
echo "Finding images [ok]"
fi


# ---------------bash check if ./jpg directory exists, else make directory
directory="./originals"
if [ -d $directory ]; then
cp *.* ./originals
echo "Copying photos [ok]"
else
mkdir ./originals
cp *.* ./originals
echo "Directory originals created, copying photos [ok] "
fi

#Check if ./jpg directory exists, else create it
directory="./jpg"
if [ -d $directory ]; then
echo "Directory  jpg exists [ok]"
else
mkdir ./jpg
echo "Directory jpg created [ok]"
fi

echo ""

if (ls *.jpg) > /dev/null 2>&1
then
mv *.jpg \jpg
fi
echo "Moving *.jpg [ok]"


if (ls *.JPG) > /dev/null 2>&1
then
  for i in *.JPG; do mv "$i" "`basename $i .JPG`-JPG.jpg"; done
mv *.jpg \jpg
fi
echo "Moving *.JPG [ok]"



if (ls *jpeg) > /dev/null 2>&1
then
  for i in *.jpeg; do mv "$i" "`basename $i .jpeg`-jpeg.jpg"; done
mv *.jpg \jpg
fi
echo "Moving *.jpeg [ok]"


if (ls *.JPEG) > /dev/null 2>&1
then
  for i in *.JPEG; do mv "$i" "`basename $i .JPEG`-JPEG.jpg"; done
mv *.jpg \jpg
rm *.JPEG
fi
echo "Moving *.JPEG [ok]"

echo "Searching for jpg, JPG, jpeg, JPEG, gif, GIF, bmp, BMP, pdf, PDF, webp, WEBP, pcx, PCX, pict, PICT, pct, PCT, png, PNG, tif, TIF, tiff, TIFF, xcf, XCF, crw, CRW, cr2, CR2, arw, ARW, sr2, SR2, nef, NEF [ok]"


if (ls *.gif) > /dev/null 2>&1
then
  mogrify -format jpg *.gif
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-gif.jpg"; done
mv *.jpg \jpg
rm *.gif
fi
echo "gif [ok]"

if (ls *.GIF) > /dev/null 2>&1
then
  mogrify -format jpg *.GIF
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-GIF.jpg"; done
mv *.jpg \jpg
rm *.GIF
fi
echo "GIF [ok]"


if (ls *.bmp) > /dev/null 2>&1
then
  mogrify -format jpg *.bmp
    for i in *.jpg; do mv "$i" "`basename $i .jpg`-bmp.jpg"; done
mv *.jpg \jpg
rm *.bmp
fi
echo "bmp [ok]"

if (ls *.BMP) > /dev/null 2>&1
then
  mogrify -format jpg *.BMP
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-BMP.jpg"; done
mv *.jpg \jpg
rm *.BMP
fi
echo "BMP [ok]"


if (ls *.pdf) > /dev/null 2>&1
then
  mogrify -format jpg *.pdf
    for i in *.jpg; do mv "$i" "`basename $i .jpg`-pdf.jpg"; done
mv *.jpg \jpg
rm *.pdf
fi
echo "pdf [ok]"

if (ls *.PDF) > /dev/null 2>&1
then
  mogrify -format jpg *.PDF
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PDF.jpg"; done
mv *.jpg \jpg
rm *.PDF
fi
echo "PDF [ok]"


if (ls *.webp) > /dev/null 2>&1
then
  mogrify -format jpg *.webp
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-webp.jpg"; done
mv *.jpg \jpg
rm *.webp
fi
echo "webp [ok]"

if (ls *.WEBP) > /dev/null 2>&1
then
  mogrify -format jpg *.WEBP
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-WEBP.jpg"; done
mv *.jpg \jpg
rm *.WEBP
fi
echo "WEBP [ok]"


if (ls *.pcx) > /dev/null 2>&1
then
  mogrify -format jpg *.pcx
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-pcx.jpg"; done
mv *.jpg \jpg
rm *.pcx
fi
echo "pcx [ok]"

if (ls *.PCX) > /dev/null 2>&1
then
  mogrify -format jpg *.PCX
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PCX.jpg"; done
mv *.jpg \jpg
rm *.PCX
fi
echo "PCX [ok]"


if (ls *.pict) > /dev/null 2>&1
then
  mogrify -format jpg *.pict
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-pict.jpg"; done
mv *.jpg \jpg
rm *.pict
fi
echo "pict [ok]"

if (ls *.PICT) > /dev/null 2>&1
then
  mogrify -format jpg *.PICT
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PICT.jpg"; done
mv *.jpg \jpg
rm *.PICT
fi
echo "PICT [ok]"


if (ls *.pct) > /dev/null 2>&1
then
  mogrify -format jpg *.pct
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-pct.jpg"; done
mv -i *.jpg \jpg
rm *.pct
fi
echo "pct [ok]"

if (ls *.PCT) > /dev/null 2>&1
then
  mogrify -format jpg *.PCT
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PCT.jpg"; done
mv *.jpg \jpg
rm *.PCT
fi
echo "PCT [ok]"


if (ls *.png) > /dev/null 2>&1
then
  mogrify -format jpg *.png
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-png.jpg"; done
mv -i *.jpg \jpg
rm *.png
fi
echo "png [ok]"

if (ls *.PNG) > /dev/null 2>&1
then
  mogrify -format jpg *.PNG
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PNG.jpg"; done
mv *.jpg \jpg
rm *.PNG
fi
echo "PNG [ok]"


if (ls *.tif) > /dev/null 2>&1
then
  mogrify -format jpg *.tif
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-tif.jpg"; done
mv *.jpg \jpg
rm *.tif
fi
echo "tif [ok]"

if (ls *.TIF) > /dev/null 2>&1
then
  mogrify -format jpg *.TIF
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-TIF.jpg"; done
mv *.jpg \jpg
rm *.TIF
fi
echo "TIF [ok]"


if (ls *.tiff) > /dev/null 2>&1
then
  mogrify -format jpg *.tiff
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-tiff.jpg"; done
mv *.jpg \jpg
rm *.tiff
fi
echo "tiff [ok]"

if (ls *.TIFF) > /dev/null 2>&1
then
  mogrify -format jpg *.TIFF
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-TIFF.jpg"; done
mv *.jpg \jpg
rm *.TIFF
fi
echo "TIFF [ok]"


if (ls *.psd) > /dev/null 2>&1
then
  mogrify -format jpg *.psd
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-psd.jpg"; done
mv *.jpg \jpg
rm *.psd
fi
echo "psd [ok]"

if (ls *.PSD) > /dev/null 2>&1
then
  mogrify -format jpg *.PSD
  for i in *.jpg; do mv "$i" "`basename $i .jpg`-PSD.jpg"; done
mv *.jpg \jpg
rm *.PSD
fi
echo "PSD [ok]"


if (ls *.dng) > /dev/null 2>&1
then
dcraw -e *.dng
rename ".thumb" "" *
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-dng.jpg"; done
mv *.jpg \jpg
rm *.dng
fi
echo "dng [ok]"

if (ls *.DNG) > /dev/null 2>&1
then
dcraw -e *.DNG
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-DNG.jpg"; done
mv *.jpg \jpg
rm *.DNG
fi
echo "DNG [ok]"


if (ls *.xcf) > /dev/null 2>&1
then
  gimp -n -i -b - <<EOF
(let* ( (file's (cadr (file-glob "*.xcf" 1))) (filename "") (image 0) (layer 0) )
  (while (pair? file's) 
    (set! image (car (gimp-file-load RUN-NONINTERACTIVE (car file's) (car file's))))
    (set! layer (car (gimp-image-merge-visible-layers image CLIP-TO-IMAGE)))
    (set! filename (string-append (substring (car file's) 0 (- (string-length (car file's)) 4)) ".jpg"))
    (gimp-file-save RUN-NONINTERACTIVE image layer filename filename)
    (gimp-image-delete image)
    (set! file's (cdr file's))
    )
  (gimp-quit 0)
  )
EOF
for i in *.jpg; do mv "$i" "`basename $i .jpg`-xcf.jpg"; done
mv *.jpg \jpg
rm *.xcf
fi
echo "xcf [ok]"

if (ls *.XCF) > /dev/null 2>&1
then
  gimp -n -i -b - <<EOF
(let* ( (file's (cadr (file-glob "*.XCF" 1))) (filename "") (image 0) (layer 0) )
  (while (pair? file's) 
    (set! image (car (gimp-file-load RUN-NONINTERACTIVE (car file's) (car file's))))
    (set! layer (car (gimp-image-merge-visible-layers image CLIP-TO-IMAGE)))
    (set! filename (string-append (substring (car file's) 0 (- (string-length (car file's)) 4)) ".jpg"))
    (gimp-file-save RUN-NONINTERACTIVE image layer filename filename)
    (gimp-image-delete image)
    (set! file's (cdr file's))
    )
  (gimp-quit 0)
  )
EOF
for i in *.jpg; do mv "$i" "`basename $i .jpg`-XCF.jpg"; done
mv *.jpg \jpg
rm *.XCF
fi
echo "XCF [ok]"


if (ls *.crw) > /dev/null 2>&1
then
dcraw -e *.crw
rename ".thumb" "" *
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-crw.jpg"; done
mv *.jpg \jpg
rm *.crw
fi
echo "nef [ok]"

if (ls *.CRW) > /dev/null 2>&1
then
dcraw -e *.CRW
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-CRW.jpg"; done
mv *.jpg \jpg
rm *.CRW
fi
echo "CRW [ok]"


if (ls *.cr2) > /dev/null 2>&1
then
dcraw -e *.cr2
rename ".thumb" "" *
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-cr2.jpg"; done
mv *.jpg \jpg
rm *.cr2
fi
echo "cr2 [ok]"

if (ls *.CR2) > /dev/null 2>&1
then
dcraw -e *.CR2
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-CR2.jpg"; done
mv *.jpg \jpg
rm *.CR2
fi
echo "CR2 [ok]"


if (ls *.arw) > /dev/null 2>&1
then
mogrify -format jpg *.arw
for i in *.jpg; do mv "$i" "`basename $i .jpg`-arw.jpg"; done
mv *.jpg \jpg
rm *.arw
fi
echo "arw [ok]"

if (ls *.ARW) > /dev/null 2>&1
then
mogrify -format jpg *.ARW
for i in *.jpg; do mv "$i" "`basename $i .jpg`-ARW.jpg"; done
mv *.jpg \jpg
rm *.ARW
fi
echo "ARW [ok]"


if (ls *.sr2) > /dev/null 2>&1
then
mogrify -quality 85 -format jpg *.sr2
for i in *.jpg; do mv "$i" "`basename $i .jpg`-sr2.jpg"; done
mv *.jpg \jpg
rm *.sr2
fi
echo "sr2 [ok]"

if (ls *.SR2) > /dev/null 2>&1
then
mogrify -quality 85 -format jpg *.SR2
for i in *.jpg; do mv "$i" "`basename $i .jpg`-SR2.jpg"; done
mv *.jpg \jpg
rm *.SR2
fi
echo "SR2 [ok]"


if (ls *.nef) > /dev/null 2>&1
then
dcraw -e *.nef
rename ".thumb" "" *
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-nef.jpg"; done
mv *.jpg \jpg
rm *.nef
fi
echo "nef [ok]"

if (ls *.NEF) > /dev/null 2>&1
then
dcraw -e *.NEF
for i in *.jpg; do mv "$i" "`basename $i thumb.jpg`-NEF.jpg"; done
mv *.jpg \jpg
rm *.NEF
fi
echo "NEF [ok]"



echo ""
echo "Done, please check JPG photos in jpg folder."
echo ""

exit
