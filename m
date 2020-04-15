Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CA81A94B8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5E86E8C3;
	Wed, 15 Apr 2020 07:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730C089308
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:21 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a201so17307528wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2H30jIEDD11qSxQxpCleB9uk8qmGhVe/WOieJFi7LTw=;
 b=OFvhQt+wzABIdksPxx9xVuNqEN7IekHKj8l+0SlgB7+6jRXeGJ4/RisMZm6OoXpo5i
 3cQIQEE/s8jQ6SkV2mkouXky8Usy7J/6XIOYM6VOvA56lHjXrHMhJIt6mTGUxaC49h2w
 uT5KJkz9EkyxQeNn+GPZzUH2Wo75tVoztazDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2H30jIEDD11qSxQxpCleB9uk8qmGhVe/WOieJFi7LTw=;
 b=gK9l0GHFwSg8PNkOPNVt3ruvhC4A8ogMgrYmHNKkpN7kpK78pljsbFmTjYwVJsKMKz
 Ii8m1ZKm2tLySJWiWz9Yy2kFBiuFH7z/igSePsIHtPbj7FicuBdkY/v85SABUsqAm60j
 GqzndYXz4wDxlh5mvNMYJj7WqgUkI7hYrstkryFgILPTvSBPM9sx+PSDrN6W2mNBDfDt
 mxZxSuEOdc+XHgpoPA2YP4GlTd7Sq3I9uDLPvzlUsXDaGf7/Y3z7iScxJ7TmzAfWY+ky
 zWyULZS6GDRYsVbu4vTmCP8k6w/bj5k7MQXpi4Ku0+2Bxzzi1NnZFD8QiQ6b+VE10JgR
 oGpg==
X-Gm-Message-State: AGi0Pubt7IJrk87U2pkAh+gcpoLDxv8tAO32SCy/a2FnQzIuOUiKl6cv
 2pG92YVLGDP40YMleQTzUDxmgfNZFJo=
X-Google-Smtp-Source: APiQypLs5r80mVEEP1uzMzAmmqWiKQSAQy7ew3+iWYVMq92xN6QC2hhYFiEZMck6gWVDyQtJdrs+QA==
X-Received: by 2002:a05:600c:2f17:: with SMTP id
 r23mr3597690wmn.81.1586936479698; 
 Wed, 15 Apr 2020 00:41:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:12 +0200
Message-Id: <20200415074034.175360-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/59] drm/cirrus: Move to drm/tiny
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Because it is. Huge congrats to everyone who made this kind of
refactoring happen!

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
---
 MAINTAINERS                               |  2 +-
 drivers/gpu/drm/Kconfig                   |  2 --
 drivers/gpu/drm/Makefile                  |  1 -
 drivers/gpu/drm/cirrus/Kconfig            | 19 -------------------
 drivers/gpu/drm/cirrus/Makefile           |  2 --
 drivers/gpu/drm/tiny/Kconfig              | 19 +++++++++++++++++++
 drivers/gpu/drm/tiny/Makefile             |  1 +
 drivers/gpu/drm/{cirrus => tiny}/cirrus.c |  0
 8 files changed, 21 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/gpu/drm/cirrus/Kconfig
 delete mode 100644 drivers/gpu/drm/cirrus/Makefile
 rename drivers/gpu/drm/{cirrus => tiny}/cirrus.c (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7b3255d96d1d..0a5cf105ee37 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5397,7 +5397,7 @@ L:	virtualization@lists.linux-foundation.org
 S:	Obsolete
 W:	https://www.kraxel.org/blog/2014/10/qemu-using-cirrus-considered-harmful/
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-F:	drivers/gpu/drm/cirrus/
+F:	drivers/gpu/drm/tiny/cirrus.c
 
 DRM DRIVER FOR QXL VIRTUAL GPU
 M:	Dave Airlie <airlied@redhat.com>
diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 43594978958e..4f4e7fa001c1 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -310,8 +310,6 @@ source "drivers/gpu/drm/ast/Kconfig"
 
 source "drivers/gpu/drm/mgag200/Kconfig"
 
-source "drivers/gpu/drm/cirrus/Kconfig"
-
 source "drivers/gpu/drm/armada/Kconfig"
 
 source "drivers/gpu/drm/atmel-hlcdc/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index f34d08c83485..2c0e5a7e5953 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -74,7 +74,6 @@ obj-$(CONFIG_DRM_I915)	+= i915/
 obj-$(CONFIG_DRM_MGAG200) += mgag200/
 obj-$(CONFIG_DRM_V3D)  += v3d/
 obj-$(CONFIG_DRM_VC4)  += vc4/
-obj-$(CONFIG_DRM_CIRRUS_QEMU) += cirrus/
 obj-$(CONFIG_DRM_SIS)   += sis/
 obj-$(CONFIG_DRM_SAVAGE)+= savage/
 obj-$(CONFIG_DRM_VMWGFX)+= vmwgfx/
diff --git a/drivers/gpu/drm/cirrus/Kconfig b/drivers/gpu/drm/cirrus/Kconfig
deleted file mode 100644
index c6bbd988b0e5..000000000000
--- a/drivers/gpu/drm/cirrus/Kconfig
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-config DRM_CIRRUS_QEMU
-	tristate "Cirrus driver for QEMU emulated device"
-	depends on DRM && PCI && MMU
-	select DRM_KMS_HELPER
-	select DRM_GEM_SHMEM_HELPER
-	help
-	 This is a KMS driver for emulated cirrus device in qemu.
-	 It is *NOT* intended for real cirrus devices. This requires
-	 the modesetting userspace X.org driver.
-
-	 Cirrus is obsolete, the hardware was designed in the 90ies
-	 and can't keep up with todays needs.  More background:
-	 https://www.kraxel.org/blog/2014/10/qemu-using-cirrus-considered-harmful/
-
-	 Better alternatives are:
-	   - stdvga (DRM_BOCHS, qemu -vga std, default in qemu 2.2+)
-	   - qxl (DRM_QXL, qemu -vga qxl, works best with spice)
-	   - virtio (DRM_VIRTIO_GPU), qemu -vga virtio)
diff --git a/drivers/gpu/drm/cirrus/Makefile b/drivers/gpu/drm/cirrus/Makefile
deleted file mode 100644
index 0c1ed3f99725..000000000000
--- a/drivers/gpu/drm/cirrus/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_DRM_CIRRUS_QEMU) += cirrus.o
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 4160e74e4751..2b6414f0fa75 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -1,5 +1,24 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+config DRM_CIRRUS_QEMU
+	tristate "Cirrus driver for QEMU emulated device"
+	depends on DRM && PCI && MMU
+	select DRM_KMS_HELPER
+	select DRM_GEM_SHMEM_HELPER
+	help
+	 This is a KMS driver for emulated cirrus device in qemu.
+	 It is *NOT* intended for real cirrus devices. This requires
+	 the modesetting userspace X.org driver.
+
+	 Cirrus is obsolete, the hardware was designed in the 90ies
+	 and can't keep up with todays needs.  More background:
+	 https://www.kraxel.org/blog/2014/10/qemu-using-cirrus-considered-harmful/
+
+	 Better alternatives are:
+	   - stdvga (DRM_BOCHS, qemu -vga std, default in qemu 2.2+)
+	   - qxl (DRM_QXL, qemu -vga qxl, works best with spice)
+	   - virtio (DRM_VIRTIO_GPU), qemu -vga virtio)
+
 config DRM_GM12U320
 	tristate "GM12U320 driver for USB projectors"
 	depends on DRM && USB
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index c96ceee71453..6ae4e9e5a35f 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-$(CONFIG_DRM_CIRRUS_QEMU)		+= cirrus.o
 obj-$(CONFIG_DRM_GM12U320)		+= gm12u320.o
 obj-$(CONFIG_TINYDRM_HX8357D)		+= hx8357d.o
 obj-$(CONFIG_TINYDRM_ILI9225)		+= ili9225.o
diff --git a/drivers/gpu/drm/cirrus/cirrus.c b/drivers/gpu/drm/tiny/cirrus.c
similarity index 100%
rename from drivers/gpu/drm/cirrus/cirrus.c
rename to drivers/gpu/drm/tiny/cirrus.c
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
