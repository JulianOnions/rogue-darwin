#	@(#)Makefile	8.1 (Berkeley) 5/31/93
# $FreeBSD: src/games/rogue/Makefile,v 1.8 2001/01/25 12:24:29 phantom Exp $
CFLAGS= -g

rogue: hit.o init.o inventory.o level.o machdep.o main.o message.o monster.o move.o object.o pack.o play.o random.o ring.o room.o save.o score.o spec_hit.o throw.o trap.o use.o zap.o

	cc -g -o rogue hit.o init.o inventory.o level.o machdep.o main.o message.o monster.o move.o object.o pack.o play.o random.o ring.o room.o save.o score.o spec_hit.o throw.o trap.o use.o zap.o -lcurses

hit.o: hit.c
	cc -c hit.c $(CFLAGS)

init.o: init.c
	cc -c -g init.c $(CFLAGS)

inventory.o: inventory.c
	cc -c -g inventory.c $(CFLAGS)

level.o: level.c
	cc -c level.c $(CFLAGS)

machdep.o: machdep.c pathnames.h
	cc -c machdep.c $(CFLAGS)

main.o: main.c
	cc -c main.c $(CFLAGS)

message.o: message.c
	cc -c message.c $(CFLAGS)

monster.o: monster.c
	cc -c monster.c $(CFLAGS)

move.o: move.c
	cc -c move.c $(CFLAGS)

object.o: object.c
	cc -c -g object.c $(CFLAGS)

pack.o: pack.c
	cc -c pack.c $(CFLAGS)

play.o: play.c 
	cc -c play.c $(CFLAGS)

random.o: random.c
	cc -c random.c $(CFLAGS)

ring.o: ring.c
	cc -c ring.c $(CFLAGS)

room.o: room.c
	cc -c room.c $(CFLAGS)

save.o: save.c
	cc -g -c save.c $(CFLAGS)

score.o: score.c pathnames.h
	cc -g -c score.c $(CFLAGS)

spec_hit.o: spec_hit.c
	cc -c spec_hit.c $(CFLAGS)

throw.o: throw.c
	cc -c throw.c $(CFLAGS)

trap.o: trap.c
	cc -c trap.c $(CFLAGS)

use.o: use.c
	cc -c use.c $(CFLAGS)

zap.o: zap.c
	cc -c zap.c $(CFLAGS)


