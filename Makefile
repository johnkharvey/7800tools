# Makefile for "color.asm"


#==================
# Global Variables
#==================
DASM_VERSION=2.20.12
A7800_VERSION=188-03
# For a7800sign
DEVKIT_VERSION=0.7-20181107
# A7800 dependency
SDL2_VERSION=2.0.10


#=========
# Aliases
#=========
# 7800-specific build tools
DASM=bin/dasm/dasm
7800SIGN=bin/devkit_tools/7800AsmDevKit.${DEVKIT_VERSION}/7800sign.Darwin.x86

# 7800-specific runtime tools
A7800=bin/a7800/a7800
SDL2=/Library/Frameworks/SDL2.framework/SDL2

# OS-level Tools
WGET=/usr/local/bin/wget
TAR=/usr/bin/tar
UNZIP=/usr/bin/unzip
MD5=/sbin/md5


#===============
# Build Targets
#===============
.PHONY:	all check run clean megaclean setup

all:	bin/color.a78

# Special variable to only initialize tools.  Not generally used.
setup:  ${WGET} ${7800SIGN} ${DASM} ${SDL2} ${A7800}

${WGET}:
	brew install wget

${7800SIGN}:	${WGET} ${UNZIP}
	mkdir -p bin/devkit_tools
	wget -O bin/devkit_tools/7800AsmDevKit.zip http://7800.8bitdev.org/images/c/c8/7800AsmDevKit.${DEVKIT_VERSION}.zip
	cd bin/devkit_tools && ${UNZIP} 7800AsmDevKit.zip
	# Do a touch so it doesn't keep appearing out-of-date
	find bin/devkit_tools/ -type f -exec touch {} +
	rm -f bin/devkit_tools/7800AsmDevKit.zip

${DASM}:	${WGET} ${TAR}
	mkdir -p bin/dasm
	wget -O bin/dasm/dasm.tar.gz https://github.com/dasm-assembler/dasm/releases/download/${DASM_VERSION}/dasm-${DASM_VERSION}-osx-x64.tar.gz
	tar xvf bin/dasm/dasm.tar.gz --directory bin/dasm/
        # Do a touch so it doesn't keep appearing out-of-date
	find bin/dasm/ -type f -exec touch {} +
	rm -f bin/dasm/dasm.tar.gz

bin/color.bin:	src/color.asm ${DASM}
	echo "\n###### Creating a Bin file... ######"
	${DASM} src/color.asm -f3 -obin/color.bin

bin/color.a78:	src/color_header32.asm bin/color.bin ${7800SIGN}
	echo "\n###### Signing Bin file... ######"
	${7800SIGN} -w bin/color.bin
	echo "\n\n###### Creating a78 file... ######"
	${DASM} src/color_header32.asm -f3 -obin/color.a78

check:	bin/color.a78 2001_roms/20010804_color01.a78
	mkdir -p check
	# The last 128 bytes (save for the last 6) are random due to digital signing.  Let's remove that and test the rest
	split -b 32768 bin/color.a78 check/new.check.
	split -b 32768 2001_roms/20010804_color01.a78 check/base.check.
	# Do a diff
	diff -b check/new.check.aa check/base.check.aa
	# Some MD5 sums for good measure
	${MD5} check/new.check.aa
	${MD5} check/base.check.aa
	# Now, let's check the remaining 6 vector bytes
	dd if=check/new.check.ab of=check/new.check.ac bs=1 skip=122
	dd if=check/base.check.ab of=check/base.check.ac bs=1 skip=122
	# Do a diff
	diff -b check/new.check.ac check/base.check.ac
	# Some MD5 sums for good measure
	${MD5} check/new.check.ac
	${MD5} check/base.check.ac


#===============
# Run Targets
#===============

${SDL2}:	${WGET}
	mkdir -p tmp/
	wget -O tmp/SDL2.dmg https://www.libsdl.org/release/SDL2-${SDL2_VERSION}.dmg
	cd tmp && sudo hdiutil attach SDL2.dmg
	sudo cp -r /Volumes/SDL2/SDL2.framework /Library/Frameworks/
	sleep 1
	sudo hdiutil detach /Volumes/SDL2
	rm -rf tmp

${A7800}:	${WGET} ${UNZIP} ${SDL2}
	# Download and install
	mkdir -p tmp/
	wget -O tmp/a7800.zip http://7800.8bitdev.org/images/e/e0/A7800.${A7800_VERSION}.OSX.zip
	cd tmp && unzip a7800.zip
	mkdir -p bin/a7800
	cp tmp/a7800.${A7800_VERSION}.OSX/a7800.OSX-x86_64 bin/a7800/a7800
	rm -rf tmp
	# Configure our ini file
	mkdir -p ~/.a7800
	./bin/a7800/a7800 -cc
	mv a7800.ini ~/.a7800
	rm -f ui.ini plugin.ini
	# We need the 7800.rom file (found here: https://atariage.com/forums/topic/268458-a7800-the-atari-7800-emulator/)
	wget -O bin/a7800/Additional_Files_a7800_v0188-01.zip https://atariage.com/forums/applications/core/interface/file/attachment.php?id=521608
	cd bin/a7800 && unzip Additional_Files_a7800_v0188-01.zip
	rm -f bin/a7800/Additional_Files_a7800_v0188-01.zip

run:	${A7800}
	cd bin/a7800 && ./a7800 a7800 -cart ../../bin/color.a78


#===============
# Clean Targets
#===============
clean:
	rm -f bin/color.bin
	rm -f bin/color.a78
	rm -rf check

megaclean:	clean
	brew uninstall wget
	rm -rf bin/devkit_tools
	rm -rf bin/dasm
	rm -rf bin/a7800
	#rm -rf ~/.a7800
	#sudo rm -rf /Volumes/SDL2/SDL2.framework
