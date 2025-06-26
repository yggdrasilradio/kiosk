all: kiosk

kiosk: kiosk.bas
	decbpp < kiosk.bas > /tmp/kiosk.bas
	decb kill /media/share1/COCO/drive0.dsk,KIOSK.BAS
	decb copy -tr /tmp/kiosk.bas /media/share1/COCO/drive0.dsk,KIOSK.BAS
	#cat /tmp/kiosk.bas
	rm -f /tmp/kiosk.bas
