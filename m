Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A51481A94F7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202416E8E6;
	Wed, 15 Apr 2020 07:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12666E8B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:34 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id a25so17886396wrd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kErLpjRYJBhy/Weq4KwxSuU0kVtPDRe4USp/mdkeAaI=;
 b=JbEncKQbtG6o3LJEdkJ3CjhnMtqbyjSuPNqeQhV/DHbeGn1ZTXUpgpPztVmZjCHCY5
 sHyWsF9X6vcmearS0w1SvwUUrAqMn7+KKIoR22swZwEWPMJJen1+AEH5XOyz3Wlaog8h
 X+ps6OL0kLwGf5DbwXNojNaUmimKKgU8zZ9Pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kErLpjRYJBhy/Weq4KwxSuU0kVtPDRe4USp/mdkeAaI=;
 b=J7Cyyqy1u92jwNCGbJkYYhdHR+bUhNc1aKkHAAP8mdUoGgU1IeU4PiSPnyBoFITb4H
 uEJg2dYES/zfvEaIOJS/4rz51BBBW/4czWCtK6rsNtB0eMMos0bN92paFKqmb1idiZ5N
 DV+DPDz58o+G4rU42j7QKMiUBoGlwqbuVv/aVPRpTmvkktITx50auadGIfsHLuiGEm9r
 k5TWYJ5Z4vPArHvW7LIow/YU0wLHe5fQY30Ao3oEeVcCuINqgBYqjKic8pEPYCd/CTLY
 PSG9XspREPbN0BPk0tLc66BvmRIyiscdRrW/E6t9fzNwfELQAgUvX6ESNfSKBufAQrmf
 GHmw==
X-Gm-Message-State: AGi0PubUwiU6tU7WVohhnmVJwLJa+ymjQCxTB15hf5ayED4ym72bzhXi
 rlpnWSpY355JZ6Puifhn83/SxnRANKI=
X-Google-Smtp-Source: APiQypJoyw1TfeqxauR/aAkU6Gneg3cI7FUi++Sagm8MQ+a2/w7+lNLDpyd4CAIKk/uXyfL+RsGdEw==
X-Received: by 2002:adf:800e:: with SMTP id 14mr26792286wrk.369.1586936492814; 
 Wed, 15 Apr 2020 00:41:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:32 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:26 +0200
Message-Id: <20200415074034.175360-52-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 51/59] drm/arc: Inline remaining files
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At less than 500 lines total feels like the right thing to do.

Also noticed that the simple wrapper around drm_connector_cleanup can
be dropped.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/arc/Makefile      |   2 +-
 drivers/gpu/drm/arc/arcpgu.h      |  39 ------------
 drivers/gpu/drm/arc/arcpgu_drv.c  | 102 +++++++++++++++++++++++++++++-
 drivers/gpu/drm/arc/arcpgu_regs.h |  31 ---------
 drivers/gpu/drm/arc/arcpgu_sim.c  |  74 ----------------------
 5 files changed, 101 insertions(+), 147 deletions(-)
 delete mode 100644 drivers/gpu/drm/arc/arcpgu.h
 delete mode 100644 drivers/gpu/drm/arc/arcpgu_regs.h
 delete mode 100644 drivers/gpu/drm/arc/arcpgu_sim.c

diff --git a/drivers/gpu/drm/arc/Makefile b/drivers/gpu/drm/arc/Makefile
index 379a1145bc2f..b26f2495c532 100644
--- a/drivers/gpu/drm/arc/Makefile
+++ b/drivers/gpu/drm/arc/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-arcpgu-y := arcpgu_sim.o arcpgu_drv.o
+arcpgu-y := arcpgu_drv.o
 obj-$(CONFIG_DRM_ARCPGU) += arcpgu.o
diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
deleted file mode 100644
index 7dce0c2313ba..000000000000
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * ARC PGU DRM driver.
- *
- * Copyright (C) 2016 Synopsys, Inc. (www.synopsys.com)
- */
-
-#ifndef _ARCPGU_H_
-#define _ARCPGU_H_
-
-#include <drm/drm_simple_kms_helper.h>
-
-struct arcpgu_drm_private {
-	struct drm_device	drm;
-	void __iomem		*regs;
-	struct clk		*clk;
-	struct drm_simple_display_pipe pipe;
-	struct drm_connector	sim_conn;
-};
-
-#define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
-
-#define pipe_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, pipe)
-
-static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
-				 unsigned int reg, u32 value)
-{
-	iowrite32(value, arcpgu->regs + reg);
-}
-
-static inline u32 arc_pgu_read(struct arcpgu_drm_private *arcpgu,
-			       unsigned int reg)
-{
-	return ioread32(arcpgu->regs + reg);
-}
-
-int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np);
-
-#endif
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index 8fbfd956de0a..b0c941d91545 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -17,13 +17,111 @@
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 #include <linux/dma-mapping.h>
 #include <linux/module.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/platform_device.h>
 
-#include "arcpgu.h"
-#include "arcpgu_regs.h"
+#define ARCPGU_REG_CTRL		0x00
+#define ARCPGU_REG_STAT		0x04
+#define ARCPGU_REG_FMT		0x10
+#define ARCPGU_REG_HSYNC	0x14
+#define ARCPGU_REG_VSYNC	0x18
+#define ARCPGU_REG_ACTIVE	0x1c
+#define ARCPGU_REG_BUF0_ADDR	0x40
+#define ARCPGU_REG_STRIDE	0x50
+#define ARCPGU_REG_START_SET	0x84
+
+#define ARCPGU_REG_ID		0x3FC
+
+#define ARCPGU_CTRL_ENABLE_MASK	0x02
+#define ARCPGU_CTRL_VS_POL_MASK	0x1
+#define ARCPGU_CTRL_VS_POL_OFST	0x3
+#define ARCPGU_CTRL_HS_POL_MASK	0x1
+#define ARCPGU_CTRL_HS_POL_OFST	0x4
+#define ARCPGU_MODE_XRGB8888	BIT(2)
+#define ARCPGU_STAT_BUSY_MASK	0x02
+
+struct arcpgu_drm_private {
+	struct drm_device	drm;
+	void __iomem		*regs;
+	struct clk		*clk;
+	struct drm_simple_display_pipe pipe;
+	struct drm_connector	sim_conn;
+};
+
+#define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
+
+#define pipe_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, pipe)
+
+static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
+				 unsigned int reg, u32 value)
+{
+	iowrite32(value, arcpgu->regs + reg);
+}
+
+static inline u32 arc_pgu_read(struct arcpgu_drm_private *arcpgu,
+			       unsigned int reg)
+{
+	return ioread32(arcpgu->regs + reg);
+}
+
+#define XRES_DEF	640
+#define YRES_DEF	480
+
+#define XRES_MAX	8192
+#define YRES_MAX	8192
+
+static int arcpgu_drm_connector_get_modes(struct drm_connector *connector)
+{
+	int count;
+
+	count = drm_add_modes_noedid(connector, XRES_MAX, YRES_MAX);
+	drm_set_preferred_mode(connector, XRES_DEF, YRES_DEF);
+	return count;
+}
+
+static const struct drm_connector_helper_funcs
+arcpgu_drm_connector_helper_funcs = {
+	.get_modes = arcpgu_drm_connector_get_modes,
+};
+
+static const struct drm_connector_funcs arcpgu_drm_connector_funcs = {
+	.reset = drm_atomic_helper_connector_reset,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
+{
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
+	struct drm_encoder *encoder;
+	struct drm_connector *connector;
+	int ret;
+
+	encoder = &arcpgu->pipe.encoder;
+
+	connector = &arcpgu->sim_conn;
+	drm_connector_helper_add(connector, &arcpgu_drm_connector_helper_funcs);
+
+	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
+			DRM_MODE_CONNECTOR_VIRTUAL);
+	if (ret < 0) {
+		dev_err(drm->dev, "failed to initialize drm connector\n");
+		return ret;
+	}
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret < 0) {
+		dev_err(drm->dev, "could not attach connector to encoder\n");
+		return ret;
+	}
+
+	return 0;
+}
 
 #define ENCODE_PGU_XY(x, y)	((((x) - 1) << 16) | ((y) - 1))
 
diff --git a/drivers/gpu/drm/arc/arcpgu_regs.h b/drivers/gpu/drm/arc/arcpgu_regs.h
deleted file mode 100644
index b689a382d556..000000000000
--- a/drivers/gpu/drm/arc/arcpgu_regs.h
+++ /dev/null
@@ -1,31 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * ARC PGU DRM driver.
- *
- * Copyright (C) 2016 Synopsys, Inc. (www.synopsys.com)
- */
-
-#ifndef _ARC_PGU_REGS_H_
-#define _ARC_PGU_REGS_H_
-
-#define ARCPGU_REG_CTRL		0x00
-#define ARCPGU_REG_STAT		0x04
-#define ARCPGU_REG_FMT		0x10
-#define ARCPGU_REG_HSYNC	0x14
-#define ARCPGU_REG_VSYNC	0x18
-#define ARCPGU_REG_ACTIVE	0x1c
-#define ARCPGU_REG_BUF0_ADDR	0x40
-#define ARCPGU_REG_STRIDE	0x50
-#define ARCPGU_REG_START_SET	0x84
-
-#define ARCPGU_REG_ID		0x3FC
-
-#define ARCPGU_CTRL_ENABLE_MASK	0x02
-#define ARCPGU_CTRL_VS_POL_MASK	0x1
-#define ARCPGU_CTRL_VS_POL_OFST	0x3
-#define ARCPGU_CTRL_HS_POL_MASK	0x1
-#define ARCPGU_CTRL_HS_POL_OFST	0x4
-#define ARCPGU_MODE_XRGB8888	BIT(2)
-#define ARCPGU_STAT_BUSY_MASK	0x02
-
-#endif
diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
deleted file mode 100644
index 1a63f0868504..000000000000
--- a/drivers/gpu/drm/arc/arcpgu_sim.c
+++ /dev/null
@@ -1,74 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * ARC PGU DRM driver.
- *
- * Copyright (C) 2016 Synopsys, Inc. (www.synopsys.com)
- */
-
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_device.h>
-#include <drm/drm_probe_helper.h>
-
-#include "arcpgu.h"
-
-#define XRES_DEF	640
-#define YRES_DEF	480
-
-#define XRES_MAX	8192
-#define YRES_MAX	8192
-
-
-static int arcpgu_drm_connector_get_modes(struct drm_connector *connector)
-{
-	int count;
-
-	count = drm_add_modes_noedid(connector, XRES_MAX, YRES_MAX);
-	drm_set_preferred_mode(connector, XRES_DEF, YRES_DEF);
-	return count;
-}
-
-static void arcpgu_drm_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_cleanup(connector);
-}
-
-static const struct drm_connector_helper_funcs
-arcpgu_drm_connector_helper_funcs = {
-	.get_modes = arcpgu_drm_connector_get_modes,
-};
-
-static const struct drm_connector_funcs arcpgu_drm_connector_funcs = {
-	.reset = drm_atomic_helper_connector_reset,
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = arcpgu_drm_connector_destroy,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
-{
-	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
-	struct drm_encoder *encoder;
-	struct drm_connector *connector;
-	int ret;
-
-	encoder = &arcpgu->pipe.encoder;
-
-	connector = &arcpgu->sim_conn;
-	drm_connector_helper_add(connector, &arcpgu_drm_connector_helper_funcs);
-
-	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
-			DRM_MODE_CONNECTOR_VIRTUAL);
-	if (ret < 0) {
-		dev_err(drm->dev, "failed to initialize drm connector\n");
-		return ret;
-	}
-
-	ret = drm_connector_attach_encoder(connector, encoder);
-	if (ret < 0) {
-		dev_err(drm->dev, "could not attach connector to encoder\n");
-		return ret;
-	}
-
-	return 0;
-}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
