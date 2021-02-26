FVWMDIR=	${HOME}/.fvwm

all:    update

.MAIN:  all

update:
	cp fvwm2rc ${FVWMDIR}/.fvwm2rc;
	cp -r icons/* ${FVWMDIR}/icons/;
	cp -r wallpaper/* ${FVWMDIR}/wallpaper/;
	cp -r scripts/* ${FVWMDIR}/scripts/;
	cp -f pclock-0.13.1/pclock-bin.Linux_x86_64 ${FVWMDIR}/scripts/pclock;
	/usr/bin/pkill -SIGUSR1 fvwm

