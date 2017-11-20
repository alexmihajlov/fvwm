FVWMDIR=	/home/amihailov/.fvwm

all:    update

.MAIN:  all

update:
	cp fvwm2rc ${FVWMDIR}/.fvwm2rc;
	cp -r icons/* ${FVWMDIR}/icons/;
	cp -r wallpaper/* ${FVWMDIR}/wallpaper/;
	cp -r scripts/* ${FVWMDIR}/scripts/;
	/usr/bin/pkill -SIGUSR1 fvwm2

