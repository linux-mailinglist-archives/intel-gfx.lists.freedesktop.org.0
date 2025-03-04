Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1BDA4E4B3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D536210E632;
	Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="k8OueO6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA1610E323
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104123; x=1741708923; i=info@metux.net;
 bh=1rUsdXevASwdBe+PD8ktH8/+FGV91+bM2SpQqpi1/H8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=k8OueO6ms8aonFYIeTzr8UTrWc5xn5FALW6iX5ul3kVllKj6JER5msZkKI7DRhJ6
 HnSaUybxEplVWXY7pjTxCw2faYwO2sdM6ZO7whhOUqW7WFP8WB/uWGlyhsCzI30tM
 fTPJXiLkrtlNBCR4JgiERLYDqdZU0/hSPBQOFKN6knzk7ijbPAPtT5y5HgIIkjmn1
 EfR9kpSPuTe//dbQtm8HsQXX3cpA0tlkUaOrJoTxzhu7ChGuRLevcEa+QUKWstD6O
 Fq/kbEmoIDlHQzBBH71bD/wOhAceTahUuOUXRPMBFBABrAAH18GYbFpKC74bGTl+N
 JPe+BgzfYJdhOazjCA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYvoW-1tl93f0cBk-00QED3; Tue, 04 Mar 2025 16:56:31 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 06/16] gitlab CI: common scripts for driver builds
Date: Tue,  4 Mar 2025 16:57:59 +0100
Message-Id: <20250304155809.30399-7-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:t3MvdnfJ+phenwwD88zmONdE1Sli4x6ix0OxV/RLN3zZVIHOSAE
 tKCAROSDYGqQquiX258KW/4SrLLHNpFXkYApNLbX+vdsdU/iCZtDUowDwMkw1dAhJdNH6OU
 6yoKV5yiQgc/J0sBqQj9vthpc9ijP9zOFPF0w8FZHvWtW2z+t0jGsirny+KN52VLtkww7sy
 IMFbtvV++w02nzv1ce7YQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:fz7/k6UeGlU=;NSPGltG+2sTUrjBxyP0aLYZZp79
 f6kfrPhkEdecO//7Pt9LrdaXBjMADsEXr4lIYRGd25Y5zyemuCNhta5NzU/Ziik7XsdlaVXO7
 d7Yt8SIo0hZs4yy3aYncqCQ8mX+t8v0mvJ7jBFaomWKZvpPIsB7K1XMxw/uTaTpezljlj9flh
 C7J4ttgbPfotuCkVJWFIPflLMD2esllTC9vnHYLz787jRnKzn2kJJ52kwW/xy3mNwMVe7Ib6s
 77RfJ9zq1KBakLDpYCxWgGw3BaHwyCBO1ONsQdA0Ey1fhJDiltEjktVi5O7t3XwrXZ5Cgx/Ne
 rUtPIwyUaRY3jPGs2L2Wlq2GUDzAR0osLLD5RCcfxfvntVHYWNUOSwNva3IDI+zHPacp9ljtA
 o7gM/tRNFsnPdTn/8pMGHH/lFtC1f69lzYL5tgIPOzHlju9kKegOOuFCtrK/4dYlYmGehvjpl
 QJTeDstmxHXOs7z0HcpxXRqcv2gUskmQoOk2mN3mBmRy2kgCwyINr4CbsCcwGPKo2RH2kN7HB
 1EVBrwRCeK2oaFfz/kbdB5bn7nCyhyoxmG9Y5Qp5dgKYJo0RxFCWrq2/1m8dHSyr9ys/AfiFv
 bZdyS3hq0IVShaSKMyECZREtLGkx7pfYh5hn6pMCcFvjiV7VDW4zOmF1X5JaPHT729DCBQlOt
 sQSa2EwAoDmDkdxOdcIP/OlXIvAav78r+2mWlbN+o/MAqghbQb6YJN1h6ljNDk+gtDHXtMQJz
 8O7icrOl3EGxDGGGSTCk+9AhR1JCc2ScyWR8iVY/YOqSbwBHLl4/uocjL48zgNbmMhpqtsT4v
 /0Iff9enWfLGYQscbZSPic+fkraCaCSmxKmbWzGB1AHzqMbD37fAJiA4oLi7Bw6N5Z8SWHHoV
 wkT3eYWQNC+kYpxk0/TO+aFhtNoZQnK4c0oDa0LjudhU45S4iBvq2ULBYCRgx5Vb2iAsdAKaw
 bMWpa07Wzg7kmJCZzTR6+xIR8oJns8/yikFq/6XuMgDxbbqlSsp8EBKK3ScMvOyN3+HP7pQN0
 1NgABcZK2Kksbc8iS+UYN4hpTNz07t+dI3g65ey/VuwqirDTF8DSRqpHxvDeb+lpfGNqETFVD
 SjWrCqKERS29/B+2PdurU04ct27A8/zVwW9DcUNVWZIYXBDFVWjGSI/G44kU0YMGiv3lcfj0f
 Jk8oE1pV9VV/Ng+Xn7RHhtvFHdFid2nffG5ObTshmwpWeLq4pOIPhBtoSVn/pVNOV3D1mTyAG
 UZJ4rixrG5SaGVcMvEbyUB5vBxwYKeOjT9OgviAJnaKBLJ+9MZ1s4oactOOqX8gFAdypDHjF9
 0ubAeXmZm3bHxJolG+PQSQGJtqIBjvSIQbkcaocRLJUY9x7oDCMxHDqlCvD/Q4OHjVUieaxm8
 oh9DdA0N2dTIeaCA==
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding a bunch of common scripts for building xorg drivers on different
platforms (for now Debian and FreeBSD) against different server versions.

Also designed to be executed locally (eg. within a VM), so one doesn't
always have to employ f.d.o gitlab.

For now, these are synced manually across various driver repos, until we'v=
e
found a viable solution for a central place.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 .gitlab-ci/common/README.md                   |  20 ++
 .gitlab-ci/common/build-driver.sh             |  61 +++++
 .gitlab-ci/common/build-xserver.sh            |  71 ++++++
 .gitlab-ci/common/debian/image-install.sh     |  91 ++++++++
 .gitlab-ci/common/freebsd/FreeBSD.conf        |   8 +
 .gitlab-ci/common/freebsd/image-install.sh    |  59 +++++
 .../common/freebsd/libdrm-2.4.116.patch       | 109 +++++++++
 .gitlab-ci/common/xorg-driver.yml             | 216 ++++++++++++++++++
 8 files changed, 635 insertions(+)
 create mode 100644 .gitlab-ci/common/README.md
 create mode 100755 .gitlab-ci/common/build-driver.sh
 create mode 100755 .gitlab-ci/common/build-xserver.sh
 create mode 100755 .gitlab-ci/common/debian/image-install.sh
 create mode 100644 .gitlab-ci/common/freebsd/FreeBSD.conf
 create mode 100755 .gitlab-ci/common/freebsd/image-install.sh
 create mode 100644 .gitlab-ci/common/freebsd/libdrm-2.4.116.patch
 create mode 100644 .gitlab-ci/common/xorg-driver.yml

diff --git a/.gitlab-ci/common/README.md b/.gitlab-ci/common/README.md
new file mode 100644
index 00000000..1f2dbd87
=2D-- /dev/null
+++ b/.gitlab-ci/common/README.md
@@ -0,0 +1,20 @@
+common CI stuff - supposed to be synced across all drivers
+
+moving this to a dedicated CI component is left for a later exercise.
+
+Some scripts can also be used locally, eg. in a VM:
+
+Prepare the image:
+
+    .gitlab-ci/common/debian/image-install.sh
+    .gitlab-ci/common/freebsd/image-install.sh
+
+Build the xserver + driver:
+
+    .gitlab-ci/common/build-driver.sh debian <xserver git ref>
+    .gitlab-ci/common/build-driver.sh freebsd <xserver git ref>
+
+Build just the xserver:
+
+    .gitlab-ci/common/build-xserver.sh debian <xserver git ref>
+    .gitlab-ci/common/build-xserver.sh freebsd <xserver git ref>
diff --git a/.gitlab-ci/common/build-driver.sh b/.gitlab-ci/common/build-d=
river.sh
new file mode 100755
index 00000000..384d7636
=2D-- /dev/null
+++ b/.gitlab-ci/common/build-driver.sh
@@ -0,0 +1,61 @@
+#!/usr/bin/env bash
+
+set -e
+
+PLATFORM=3D"$1"
+XSERVER_REF=3D"$2"
+
+if [ ! "$PLATFORM" ]; then
+    echo "missing PLATFORM" >&2
+    exit 1
+fi
+
+if [ ! "$XSERVER_REF" ]; then
+    echo "missing XSERVER_REF" >&2
+    exit 1
+fi
+
+.gitlab-ci/common/build-xserver.sh "$PLATFORM" "$XSERVER_REF"
+
+MACH=3D`gcc -dumpmachine`
+echo "Building on machine $MACH"
+
+case "$PLATFORM" in
+    freebsd)
+        export PKG_CONFIG_PATH=3D"/usr/lib/pkgconfig:/usr/libdata/pkgconf=
ig:/usr/local/lib/pkgconfig:/usr/local/libdata/pkgconfig"
+        export ACLOCAL_PATH=3D"/usr/share/aclocal:/usr/local/share/acloca=
l"
+        export CFLAGS=3D"$CFLAGS -I/usr/local/include"
+        export UDEV_CFLAGS=3D" "
+        export UDEV_LIBS=3D" "
+    ;;
+    debian)
+        export PKG_CONFIG_PATH=3D"/usr/lib/pkgconfig:/usr/share/pkgconfig=
"
+    ;;
+    *)
+        echo "unknown platform $PLATFORM" >&2
+    ;;
+esac
+
+if [ -f autogen.sh ]; then
+    (
+        echo "building driver via autotools"
+        rm -Rf _builddir
+        mkdir -p _builddir
+        cd _builddir
+        ../autogen.sh --disable-silent-rules
+        make
+        make check
+        make distcheck
+    )
+elif [ -f meson.build ]; then
+    (
+        echo "building driver via meson"
+        meson setup _build
+        cd _build
+        meson compile
+        meson install
+    )
+else
+    echo "failed detecting build system"
+    exit 1
+fi
diff --git a/.gitlab-ci/common/build-xserver.sh b/.gitlab-ci/common/build-=
xserver.sh
new file mode 100755
index 00000000..7e21580e
=2D-- /dev/null
+++ b/.gitlab-ci/common/build-xserver.sh
@@ -0,0 +1,71 @@
+#!/usr/bin/env bash
+
+set -e
+set -x
+
+PLATFORM=3D"$1"
+XSERVER_REF=3D"$2"
+
+if [ ! "$XSERVER_REF" ]; then
+    echo "missing XSERVER_REF variable" >&2
+    exit 1
+fi
+
+XSERVER_CLONE=3D/tmp/xserver
+XSERVER_BUILD=3D$XSERVER_CLONE/_builddir
+XSERVER_REPO=3Dhttps://gitlab.freedesktop.org/xorg/xserver.git
+
+MACH=3D`gcc -dumpmachine`
+
+export PKG_CONFIG_PATH=3D"/usr/lib/$MACH/pkgconfig:/usr/share/pkgconfig:$=
PKG_CONFIG_PATH"
+export PKG_CONFIG_PATH=3D"/usr/local/lib/$MACH/pkgconfig:/usr/local/lib/p=
kgconfig:/usr/local/share/pkgconfig:$PKG_CONFIG_PATH"
+
+echo "cloning xserver"
+rm -Rf $XSERVER_CLONE
+git clone --depth=3D1 -b $XSERVER_REF $XSERVER_REPO $XSERVER_CLONE
+
+echo "checking platform: $PLATFORM"
+case "$PLATFORM" in
+    freebsd)
+        echo "Building on FreeBSD"
+        XSERVER_OS_AUTOCONF_FLAGS=3D"--without-dtrace"
+        XSERVER_MESON_DISABLE=3D"glx udev udev_kms"
+    ;;
+    debian)
+        echo "Building on Debian"
+    ;;
+    *)
+        echo "unknown platform $PLATFORM" >&2
+        exit 1
+    ;;
+esac
+
+if [ -f $XSERVER_CLONE/meson.build ]; then
+    (
+        echo "Building Xserver via meson"
+        for opt in $XSERVER_MESON_DISABLE ; do
+            if grep "'$opt'" $XSERVER_CLONE/meson_options.txt ; then
+                echo "disable $opt"
+                XSERVER_MESON_FLAGS=3D"$XSERVER_MESON_FLAGS -D$opt=3Dfals=
e"
+            else
+                echo "no option $opt"
+            fi
+        done
+        mkdir -p $XSERVER_BUILD
+        cd $XSERVER_BUILD
+        meson setup --prefix=3D/usr $XSERVER_MESON_FLAGS
+        meson compile
+        meson install
+    )
+else
+    (
+        echo "Building Xserver via autotools"
+        cd $XSERVER_CLONE
+        # Workaround glvnd having reset the version in gl.pc from what Me=
sa used
+        # similar to xserver commit e6ef2b12404dfec7f23592a3524d2a63d9d25=
802
+        sed -i -e 's/gl >=3D [79].[12].0/gl >=3D 1.2/' configure.ac
+        ./autogen.sh --prefix=3D/usr $XSERVER_AUTOCONF_FLAGS $XSERVER_OS_=
AUTOCONF_FLAGS
+        make -j`nproc`
+        make -j`nproc` install
+    )
+fi
diff --git a/.gitlab-ci/common/debian/image-install.sh b/.gitlab-ci/common=
/debian/image-install.sh
new file mode 100755
index 00000000..f0e98f0c
=2D-- /dev/null
+++ b/.gitlab-ci/common/debian/image-install.sh
@@ -0,0 +1,91 @@
+#!/bin/bash
+
+set -e
+set -o xtrace
+
+echo 'deb-src https://deb.debian.org/debian bullseye main' >>/etc/apt/sou=
rces.list.d/deb-src.list
+echo 'deb-src https://deb.debian.org/debian bullseye-updates main' >>/etc=
/apt/sources.list.d/deb-src.list
+echo 'deb http://deb.debian.org/debian bullseye-backports main' >> /etc/a=
pt/sources.list
+
+apt-get update
+
+apt-get autoremove -y --purge
+
+apt-get install -y --no-remove \
+	autoconf \
+	automake \
+	build-essential \
+	libtool \
+	pkg-config \
+	ca-certificates \
+	git \
+	debian-archive-keyring \
+	python3 python3-setuptools libxshmfence-dev \
+	clang \
+	libxcb-icccm4-dev libxcb-xkb-dev \
+	libxvmc-dev libxcb1-dev libx11-xcb-dev libxcb-dri2-0-dev libxcb-util-dev=
 \
+	libxfixes-dev libxcb-xfixes0-dev libxrender-dev libxdamage-dev libxrandr=
-dev \
+	libxcursor-dev libxss-dev libxinerama-dev libxtst-dev libpng-dev libssl-=
dev \
+	libxcb-dri3-dev libxxf86vm-dev libxfont-dev libxkbfile-dev libdrm-dev \
+	libgbm-dev libgl1-mesa-dev libpciaccess-dev libpixman-1-dev libudev-dev =
\
+	libgcrypt-dev libepoxy-dev libevdev-dev libmtdev-dev libinput-dev \
+	mesa-common-dev libspice-protocol-dev libspice-server-dev \
+	meson/bullseye-backports \
+	nettle-dev \
+	pkg-config \
+	valgrind \
+	x11-xkb-utils xfonts-utils xutils-dev x11proto-dev
+
+build_autoconf() {
+    local subdir=3D"$1"
+    shift
+    (
+        cd $subdir
+        ./autogen.sh "$@"
+        make -j${FDO_CI_CONCURRENT:-4}
+        make -j${FDO_CI_CONCURRENT:-4} install
+    )
+}
+
+build_meson() {
+    local subdir=3D"$1"
+    shift
+    (
+        cd $subdir
+        meson _build -Dprefix=3D/usr "$@"
+        ninja -C _build -j${FDO_CI_CONCURRENT:-4} install
+    )
+}
+
+do_clone() {
+    git clone "$1" --depth 1 --branch=3D"$2"
+}
+
+mkdir -p /tmp/build-deps
+cd /tmp/build-deps
+
+# xserver 1.18 and older branches require libXfont 1.5 instead of 2.0
+echo "Installing libXfont 1.5"
+do_clone https://gitlab.freedesktop.org/xorg/lib/libXfont.git libXfont-1.=
5-branch
+build_autoconf libXfont
+
+echo "Installing font-util"
+do_clone https://gitlab.freedesktop.org/xorg/font/util.git font-util-1.4.=
1
+build_autoconf util --prefix=3D/usr
+
+echo "Installing libxcvt"
+do_clone https://gitlab.freedesktop.org/xorg/lib/libxcvt.git libxcvt-0.1.=
0
+build_meson libxcvt
+
+# xserver requires xorgproto >=3D 2024.1 for XWAYLAND
+echo "Installing xorgproto"
+do_clone https://gitlab.freedesktop.org/xorg/proto/xorgproto.git xorgprot=
o-2024.1
+build_autoconf xorgproto
+
+# Xwayland requires drm 2.4.116 for drmSyncobjEventfd
+# xf86-video-freedreno and xf86-video-omap need extra features
+echo "Installing libdrm"
+do_clone https://gitlab.freedesktop.org/mesa/drm libdrm-2.4.116
+build_meson drm -Dfreedreno=3Denabled -Dnouveau=3Denabled -Domap=3Denable=
d
+
+rm -Rf /tmp/build-deps
diff --git a/.gitlab-ci/common/freebsd/FreeBSD.conf b/.gitlab-ci/common/fr=
eebsd/FreeBSD.conf
new file mode 100644
index 00000000..50a9bce1
=2D-- /dev/null
+++ b/.gitlab-ci/common/freebsd/FreeBSD.conf
@@ -0,0 +1,8 @@
+# using the latest branch
+FreeBSD: {
+  url: "pkg+http://pkg.FreeBSD.org/${ABI}/latest",
+  mirror_type: "srv",
+  signature_type: "fingerprints",
+  fingerprints: "/usr/share/keys/pkg",
+  enabled: yes
+}
diff --git a/.gitlab-ci/common/freebsd/image-install.sh b/.gitlab-ci/commo=
n/freebsd/image-install.sh
new file mode 100755
index 00000000..758e90fc
=2D-- /dev/null
+++ b/.gitlab-ci/common/freebsd/image-install.sh
@@ -0,0 +1,59 @@
+#!/usr/bin/env bash
+
+set -e
+
+# note: really wanna install to /usr/local, since that's explicitly searc=
hed first,
+# so we always catch the locally installed before any system/ports provid=
ed one
+# otherwise we might run into trouble like trying to use outdated xorgpro=
to
+build_autoconf() {
+    local subdir=3D"$1"
+    shift
+    (
+        cd $subdir
+        ./autogen.sh --prefix=3D/usr/local "$@"
+        make -j${FDO_CI_CONCURRENT:-4}
+        make -j${FDO_CI_CONCURRENT:-4} install
+    )
+}
+
+build_meson() {
+    local subdir=3D"$1"
+    shift
+    (
+        cd $subdir
+        meson _build -Dprefix=3D/usr/local "$@"
+        ninja -C _build -j${FDO_CI_CONCURRENT:-4} install
+    )
+}
+
+do_clone() {
+    git clone "$1" --depth 1 --branch=3D"$2"
+}
+
+cp .gitlab-ci/common/freebsd/FreeBSD.conf /etc/pkg
+
+pkg upgrade -f -y
+
+pkg install -y \
+    git gcc pkgconf autoconf automake libtool xorg-macros xorgproto meson=
 \
+    ninja pixman xtrans libXau libXdmcp libXfont libXfont2 libxkbfile lib=
xcvt \
+    libpciaccess font-util libepoll-shim libdrm mesa-libs libdrm libglu m=
esa-dri \
+    libepoxy nettle xkbcomp libXvMC xcb-util valgrind libXcursor libXScrn=
Saver \
+    libXinerama libXtst evdev-proto libevdev libmtdev libinput spice-prot=
ocol \
+    libspice-server xcb-util xcb-util-wm
+
+[ -f /bin/bash ] || ln -sf /usr/local/bin/bash /bin/bash
+
+# Xwayland requires drm 2.4.116 for drmSyncobjEventfd
+# xf86-video-freedreno and xf86-video-omap need extra features
+echo "Installing libdrm"
+do_clone https://gitlab.freedesktop.org/mesa/drm libdrm-2.4.116
+(
+    cd drm
+    git config user.email "buildbot@freebsd"
+    git config user.name "FreeBSD build bot"
+    git am ../.gitlab-ci/common/freebsd/libdrm-2.4.116.patch
+)
+build_meson drm -Dfreedreno=3Denabled -Dnouveau=3Denabled -Domap=3Denable=
d
+
+echo "=3D=3D=3D post-install script END"
diff --git a/.gitlab-ci/common/freebsd/libdrm-2.4.116.patch b/.gitlab-ci/c=
ommon/freebsd/libdrm-2.4.116.patch
new file mode 100644
index 00000000..820ea279
=2D-- /dev/null
+++ b/.gitlab-ci/common/freebsd/libdrm-2.4.116.patch
@@ -0,0 +1,109 @@
+From a87432dbb281ddf1c50a5e78091d38f0dac79416 Mon Sep 17 00:00:00 2001
+From: "Enrico Weigelt, metux IT consult" <info@metux.net>
+Date: Fri, 7 Jun 2024 15:18:47 +0200
+Subject: [PATCH 1/2] fix FTBS on FreeBSD (or non-Linux in general)
+
+Several drivers still including <linux/stddef.h>, but not using anything
+from it, thus breaking build on non-Linux platforms (eg. FreeBSD).
+Since not needed at all, just stop including it.
+
+Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
+---
+ etnaviv/etnaviv_device.c          | 1 -
+ exynos/exynos_drm.c               | 1 -
+ exynos/exynos_fimg2d.c            | 1 -
+ omap/omap_drm.c                   | 1 -
+ tests/exynos/exynos_fimg2d_test.c | 1 -
+ 5 files changed, 5 deletions(-)
+
+diff --git a/etnaviv/etnaviv_device.c b/etnaviv/etnaviv_device.c
+index 699df256..a63bd15d 100644
+--- a/etnaviv/etnaviv_device.c
++++ b/etnaviv/etnaviv_device.c
+@@ -25,7 +25,6 @@
+  */
+
+ #include <stdlib.h>
+-#include <linux/stddef.h>
+ #include <linux/types.h>
+ #include <errno.h>
+ #include <sys/mman.h>
+diff --git a/exynos/exynos_drm.c b/exynos/exynos_drm.c
+index 3e322a17..fb4cd8de 100644
+--- a/exynos/exynos_drm.c
++++ b/exynos/exynos_drm.c
+@@ -31,7 +31,6 @@
+ #include <unistd.h>
+
+ #include <sys/mman.h>
+-#include <linux/stddef.h>
+
+ #include <xf86drm.h>
+
+diff --git a/exynos/exynos_fimg2d.c b/exynos/exynos_fimg2d.c
+index ac6fa687..f0aee962 100644
+--- a/exynos/exynos_fimg2d.c
++++ b/exynos/exynos_fimg2d.c
+@@ -30,7 +30,6 @@
+ #include <assert.h>
+
+ #include <sys/mman.h>
+-#include <linux/stddef.h>
+
+ #include <xf86drm.h>
+
+diff --git a/omap/omap_drm.c b/omap/omap_drm.c
+index aa273660..42d35ef7 100644
+--- a/omap/omap_drm.c
++++ b/omap/omap_drm.c
+@@ -27,7 +27,6 @@
+  */
+
+ #include <stdlib.h>
+-#include <linux/stddef.h>
+ #include <linux/types.h>
+ #include <errno.h>
+ #include <sys/mman.h>
+diff --git a/tests/exynos/exynos_fimg2d_test.c b/tests/exynos/exynos_fimg=
2d_test.c
+index d85e2f6b..b1baa503 100644
+--- a/tests/exynos/exynos_fimg2d_test.c
++++ b/tests/exynos/exynos_fimg2d_test.c
+@@ -31,7 +31,6 @@
+ #include <unistd.h>
+
+ #include <sys/mman.h>
+-#include <linux/stddef.h>
+
+ #include <xf86drm.h>
+ #include <xf86drmMode.h>
+--
+2.39.2
+
+From 79123db12c6c5f42747fae02068b482055e8c376 Mon Sep 17 00:00:00 2001
+From: "Enrico Weigelt, metux IT consult" <info@metux.net>
+Date: Fri, 7 Jun 2024 15:43:13 +0200
+Subject: [PATCH 2/2] omap: fix FTBS on FreeBSD and drop unneeded include
+
+No need to explicitly include <linux/types.h>, since drm.h already does t=
hat,
+but conditionally only Linux only.
+
+Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
+---
+ omap/omap_drm.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/omap/omap_drm.c b/omap/omap_drm.c
+index 42d35ef7..93d2207f 100644
+--- a/omap/omap_drm.c
++++ b/omap/omap_drm.c
+@@ -27,7 +27,6 @@
+  */
+
+ #include <stdlib.h>
+-#include <linux/types.h>
+ #include <errno.h>
+ #include <sys/mman.h>
+ #include <fcntl.h>
+--
+2.39.2
+
diff --git a/.gitlab-ci/common/xorg-driver.yml b/.gitlab-ci/common/xorg-dr=
iver.yml
new file mode 100644
index 00000000..3e63bc48
=2D-- /dev/null
+++ b/.gitlab-ci/common/xorg-driver.yml
@@ -0,0 +1,216 @@
+# version 0.1.19
+variables:
+    DEBIAN_VERSION:   'bullseye-slim'
+    DEBIAN_TAG:       "2024-10-01.03"
+    DEBIAN_EXEC:      'bash .gitlab-ci/common/debian/image-install.sh'
+    DEBIAN_SKIP:      "false" # to enable, it has to be litterally "true"
+
+    FREEBSD_TAG:      '2024-10-01.01'
+    FREEBSD_VERSION:  '14.0'
+# image is yet too small for that - need a more complicated way :(
+#    FREEBSD_EXEC:     "bash .gitlab-ci/common/freebsd/image-install.sh"
+    FREEBSD_SKIP:     "false" # to enable, it has to be litterally "true"
+
+.templates_sha: &template_sha bc70242ffb8402243e934659ecc1a2d1c89eca2b # =
see https://docs.gitlab.com/ee/ci/yaml/#includefile
+
+include:
+    - project:  'freedesktop/ci-templates'
+      ref:      *template_sha
+      file:     '/templates/debian.yml'
+    - project:  'freedesktop/ci-templates'
+      ref:      *template_sha
+      file:     '/templates/freebsd.yml'
+    - project:  'freedesktop/ci-templates'
+      ref:      *template_sha
+      file:     '/templates/ci-fairy.yml'
+    - template: Security/SAST.gitlab-ci.yml
+
+stages:
+    - images
+    - build
+    - test
+
+# standard commits quality check
+check-commits:
+    extends:
+        - .fdo.ci-fairy
+    stage: test
+    script:
+        - ci-fairy check-commits --junit-xml=3Dresults.xml
+    except:
+        - master@$FDO_UPSTREAM_REPO
+    variables:
+        GIT_DEPTH: 100
+    artifacts:
+        reports:
+            junit: results.xml
+    allow_failure: true
+    needs:
+
+# standard merge request quality checks
+check-merge-request:
+    extends:
+      - .fdo.ci-fairy
+    stage: test
+    script:
+      - ci-fairy check-merge-request --require-allow-collaboration --juni=
t-xml=3Dresults.xml
+    artifacts:
+        when: on_failure
+        reports:
+            junit: results.xml
+    allow_failure: true
+    needs:
+
+# create debian build image
+image@debian@amd64:
+    extends:
+        - .xorg.distro@debian@amd64
+        - .fdo.container-build@debian
+    stage: images
+    variables:
+        GIT_STRATEGY: none
+    rules:
+        - if: $DEBIAN_SKIP !=3D "true"
+          when: always
+    needs:
+
+image@debian@i386:
+    extends:
+        - .xorg.distro@debian@i386
+        - .fdo.container-build@debian
+    stage: images
+    variables:
+        GIT_STRATEGY: none
+    rules:
+        - if: $DEBIAN_SKIP !=3D "true"
+          when: always
+    needs:
+
+# inherit this to define FDO_DISTRIBUTION_* variables for Debian
+.xorg.distro@debian@amd64:
+    variables:
+        FDO_DISTRIBUTION_VERSION:   "$DEBIAN_VERSION"
+        FDO_DISTRIBUTION_EXEC:      "$DEBIAN_EXEC"
+        FDO_DISTRIBUTION_TAG:       "amd64-$DEBIAN_TAG"
+        FDO_BASE_IMAGE:             "amd64/debian:$DEBIAN_VERSION"
+
+.xorg.distro@debian@i386:
+    variables:
+        FDO_DISTRIBUTION_VERSION:   "$DEBIAN_VERSION"
+        FDO_DISTRIBUTION_EXEC:      "$DEBIAN_EXEC"
+        FDO_DISTRIBUTION_TAG:       "i386-$DEBIAN_TAG"
+        FDO_BASE_IMAGE:             "i386/debian:$DEBIAN_VERSION"
+
+# overwrite this one if another matrix is needed
+.xorg.driver_matrix@debian:
+    parallel:
+        matrix:
+            - CC:           [ "gcc", "clang" ]
+              XSERVER_REF:  [
+# these break on Debian
+#                "xorg-server-1.18.4",
+#                "xorg-server-1.19.7",
+                "xorg-server-1.20.14",
+                "xorg-server-21.1.13",
+                "master"
+              ]
+
+# default build with meson on Debian
+.xorg.driver_common@debian:
+    needs:
+        - image@debian@i386
+        - image@debian@amd64
+    extends:
+        - .fdo.distribution-image@debian
+    stage: build
+    script:
+        - .gitlab-ci/common/build-driver.sh "debian" "$XSERVER_REF"
+    variables:
+        CFLAGS: "-pipe -g -O2"
+    rules:
+        - if: $DEBIAN_SKIP !=3D "true"
+          when: always
+
+# overwrite this when you need some special Debian build
+build@debian@amd64:
+    extends:
+        - .xorg.driver_matrix@debian
+        - .xorg.driver_common@debian
+        - .xorg.distro@debian@amd64
+
+build@debian@i386:
+    extends:
+        - .xorg.driver_matrix@debian
+        - .xorg.driver_common@debian
+        - .xorg.distro@debian@i386
+
+# inherit this to define FDO_DISTRIBUTION_* variables for FreeBSD
+.xorg.distro@freebsd:
+    variables:
+        FDO_DISTRIBUTION_VERSION:   "$FREEBSD_VERSION"
+        FDO_DISTRIBUTION_EXEC:      "$FREEBSD_EXEC"
+        FDO_DISTRIBUTION_TAG:       "$FREEBSD_TAG"
+
+# create base image for FreeBSD
+image@freebsd:
+    extends:
+        - .xorg.distro@freebsd
+        - .fdo.qemu-build@freebsd@x86_64
+    stage: images
+    variables:
+        GIT_STRATEGY: none
+    rules:
+        - if: $FREEBSD_SKIP !=3D "true"
+          when: always
+
+# inherit this to get the default build matrix
+.xorg.driver_matrix@freebsd:
+    parallel:
+        matrix:
+            - CC:           [ "gcc", "clang" ]
+              XSERVER_REF:  [
+#                "xorg-server-1.18.4", # this breaks due name clash on "b=
ool"
+#                "xorg-server-1.19.7",
+#                "xorg-server-1.20.14", # breaks meson ... see: 331850ce6=
f0c48a1cfc489da2a27ca0220997a2f -- server-1.20-branch
+                "xorg-server-21.0.99.1",
+                "xorg-server-21.1.13",
+                "master"
+              ]
+
+# common build for driver on FreeBSD. meson and autoconf are both handled=
 by this
+.xorg.driver_common@freebsd:
+    needs:
+        - image@freebsd
+    stage: build
+    extends:
+        - .fdo.distribution-image@freebsd
+        - .xorg.distro@freebsd
+    script:
+        # FIXME: increasing image and running image-install.sh should be =
done
+        # at container image build time, but would have to replicate too =
much
+        # of the cbuild script here. better wait until CI folks have incr=
eased
+        # the image size or provide hooks for that
+        - xz -d -T0 /app/image.raw.xz
+        - rm -f /app/image.raw.xz
+        - truncate -s +5G /app/image.raw
+        - /app/vmctl start
+        - set +e
+        - /app/vmctl exec "service growfs onestart"
+        - scp -r $PWD "vm:"
+        - /app/vmctl exec "cd $CI_PROJECT_NAME && .gitlab-ci/common/freeb=
sd/image-install.sh"
+        - /app/vmctl exec "cd $CI_PROJECT_NAME && .gitlab-ci/common/build=
-driver.sh freebsd $XSERVER_REF" && touch .success
+        # copy any test results from the VM to our container so we can
+        # save them as artifacts
+        - scp -r vm:$CI_PROJECT_NAME/test-results.xml . || true # this is=
 allowed to fail
+        - /app/vmctl stop
+        - set -e
+        - test -e .success || exit 1
+    rules:
+        - if: $FREEBSD_SKIP !=3D "true"
+          when: always
+
+# overwrite this if you need some special FreeBSD build
+build@freebsd:
+    extends:
+        - .xorg.driver_matrix@freebsd
+        - .xorg.driver_common@freebsd
=2D-
2.39.5

