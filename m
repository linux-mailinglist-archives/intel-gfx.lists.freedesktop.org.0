Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DB31A94E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBF86E897;
	Wed, 15 Apr 2020 07:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B546E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:36 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id y24so17675153wma.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/O80CnGhcLcZzT6QHRKesAbNntx2JJLrEjlz68nNumA=;
 b=SmVxShk7K8tTYpEOA/+Gisjw3nwqxHDAWDzX5eawhvwEmcNcFn9X132Zt6pKHRb0+7
 fxc0lzLZtnRZFBvEqiUEVQMswm5w2hfepRTYtMJKqND7BrVOzwjR9hfm+odoX4kUzR4J
 Bu8fGOakumarw/vbaQ5+yv0QjCPfxF4PYhuFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/O80CnGhcLcZzT6QHRKesAbNntx2JJLrEjlz68nNumA=;
 b=MnPwCvlapCXIbo7e/5lqsHqXkUHWARdvcbx1T3q8nWqZ/GGoyDlG1fdpMmjQ8XV4ky
 lX3GCYfrLYsW3XmOtOZ5zQ1GsTrrlnGopKESD0U481pkwt2XzfiaL2JMoMA9LS/GJdIr
 LRKx/L72IWAAZo8L49848t2IPJHvXt703J2gN9GBYE0eF+gU8nyWisqhVdAlpITykmBB
 Itq48KkwVTXVUSlBbgXXvUciU34ULEN1HQ4pLRybmkxxHyeKN4WsGOYa/c+YnEjAhiEe
 /QX0s+YqjzyIra3oAY30dgUOzulBhbu2LDAhmRb8N3gBfshhWJWX4Y+7RCnk5pba1/77
 0XFQ==
X-Gm-Message-State: AGi0PuaQ/LdF/90oOfbzgO1b+pR+eO7Z5/u32X8NpHDjjGvS8PHkuup3
 CHq0pHhAnE2KcVuDLsHslpaZ1NYXHqc=
X-Google-Smtp-Source: APiQypKw9/e4wA0jehthA3APCUvDc87ZGfO0UmDa2ni4A8QtNHfxfTOgMJEXJWugCL0WUe6oaiHZ7w==
X-Received: by 2002:a1c:6a17:: with SMTP id f23mr3628361wmc.136.1586936494598; 
 Wed, 15 Apr 2020 00:41:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:28 +0200
Message-Id: <20200415074034.175360-54-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 53/59] drm/arc: Move to drm/tiny
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
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Because it is.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 MAINTAINERS                                         |  2 +-
 drivers/gpu/drm/Kconfig                             |  2 --
 drivers/gpu/drm/Makefile                            |  1 -
 drivers/gpu/drm/arc/Kconfig                         | 10 ----------
 drivers/gpu/drm/arc/Makefile                        |  3 ---
 drivers/gpu/drm/tiny/Kconfig                        | 10 ++++++++++
 drivers/gpu/drm/tiny/Makefile                       |  1 +
 drivers/gpu/drm/{arc/arcpgu_drv.c => tiny/arcpgu.c} |  0
 8 files changed, 12 insertions(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/arc/Kconfig
 delete mode 100644 drivers/gpu/drm/arc/Makefile
 rename drivers/gpu/drm/{arc/arcpgu_drv.c => tiny/arcpgu.c} (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0a5cf105ee37..748244b1625b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1295,7 +1295,7 @@ ARC PGU DRM DRIVER
 M:	Alexey Brodkin <abrodkin@synopsys.com>
 S:	Supported
 F:	Documentation/devicetree/bindings/display/snps,arcpgu.txt
-F:	drivers/gpu/drm/arc/
+F:	drivers/gpu/drm/tiny/arcpgu.c
 
 ARCNET NETWORK LAYER
 M:	Michael Grzeschik <m.grzeschik@pengutronix.de>
diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 4f4e7fa001c1..a0a89025d6fa 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -354,8 +354,6 @@ source "drivers/gpu/drm/vc4/Kconfig"
 
 source "drivers/gpu/drm/etnaviv/Kconfig"
 
-source "drivers/gpu/drm/arc/Kconfig"
-
 source "drivers/gpu/drm/hisilicon/Kconfig"
 
 source "drivers/gpu/drm/mediatek/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 2c0e5a7e5953..e69eafbf9e39 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -109,7 +109,6 @@ obj-y			+= panel/
 obj-y			+= bridge/
 obj-$(CONFIG_DRM_FSL_DCU) += fsl-dcu/
 obj-$(CONFIG_DRM_ETNAVIV) += etnaviv/
-obj-$(CONFIG_DRM_ARCPGU)+= arc/
 obj-y			+= hisilicon/
 obj-$(CONFIG_DRM_ZTE)	+= zte/
 obj-$(CONFIG_DRM_MXSFB)	+= mxsfb/
diff --git a/drivers/gpu/drm/arc/Kconfig b/drivers/gpu/drm/arc/Kconfig
deleted file mode 100644
index e8f3d63e0b91..000000000000
--- a/drivers/gpu/drm/arc/Kconfig
+++ /dev/null
@@ -1,10 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-config DRM_ARCPGU
-	tristate "ARC PGU"
-	depends on DRM && OF
-	select DRM_KMS_CMA_HELPER
-	select DRM_KMS_HELPER
-	help
-	  Choose this option if you have an ARC PGU controller.
-
-	  If M is selected the module will be called arcpgu.
diff --git a/drivers/gpu/drm/arc/Makefile b/drivers/gpu/drm/arc/Makefile
deleted file mode 100644
index b26f2495c532..000000000000
--- a/drivers/gpu/drm/arc/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-arcpgu-y := arcpgu_drv.o
-obj-$(CONFIG_DRM_ARCPGU) += arcpgu.o
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 2b6414f0fa75..9bbaa1a69050 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -1,5 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+config DRM_ARCPGU
+	tristate "ARC PGU"
+	depends on DRM && OF
+	select DRM_KMS_CMA_HELPER
+	select DRM_KMS_HELPER
+	help
+	  Choose this option if you have an ARC PGU controller.
+
+	  If M is selected the module will be called arcpgu.
+
 config DRM_CIRRUS_QEMU
 	tristate "Cirrus driver for QEMU emulated device"
 	depends on DRM && PCI && MMU
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index 6ae4e9e5a35f..bef6780bdd6f 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-$(CONFIG_DRM_ARCPGU)		+= arcpgu.o
 obj-$(CONFIG_DRM_CIRRUS_QEMU)		+= cirrus.o
 obj-$(CONFIG_DRM_GM12U320)		+= gm12u320.o
 obj-$(CONFIG_TINYDRM_HX8357D)		+= hx8357d.o
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/tiny/arcpgu.c
similarity index 100%
rename from drivers/gpu/drm/arc/arcpgu_drv.c
rename to drivers/gpu/drm/tiny/arcpgu.c
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
