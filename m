Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE2F1A94E1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D5C6E8DF;
	Wed, 15 Apr 2020 07:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A459D6E8DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:33 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id o81so10591502wmo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IjRKCvQnax8Hr9HMieuWtqdt4NWaHQuHMi1pqK/vEmI=;
 b=VtjZ8nihv1+6HvyC2c/wzktMg0GGxVgm/4jm05zbEUSQXqaiUr44JodvAAvmmytulL
 serDVcNtbplSUa/2Z2IvjHYGBWthkgCGniQi1LLwCI/WH/fjQQIgVo7jdOHNOXKnzrqy
 tiKt7mqmwXsH0f5ulkc0vfnCTrNs7qXDC3FKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IjRKCvQnax8Hr9HMieuWtqdt4NWaHQuHMi1pqK/vEmI=;
 b=VD+VyQ2yjyZ4EGTnTJMna8LVkteb48kMap7HD74YK3KyqqTZ2phhPPOELPUe/L2IK9
 nazVcc7kkzuYiS6H22l+62bH51pKZFoSUpJ9x57tp7NrwsjD5tuOWYUphRmsWuZDVcT0
 JY8eHohRHqXurfNHa8wt1mpL7K9FALAoj6cymldEHN5orEqJ9RpxjRvmFiDgGlOmcwvm
 GUYRbX8IIcLmgm5B5s4dBYpBqVx46l81gaQfu6J4LSUNqBJ+p+m/nPVajDHJp711usTf
 8bcPPmS4OQS76iv7KiZREguhuv+wZyywdK/0Tp+QYEcaPpgX7ozXzost8Z791Vr9KeJ7
 5YFQ==
X-Gm-Message-State: AGi0PubZTQ0gvNkv+7f8c8qLsCLkM5noUkoEYakTp75qNPxSPaSlw4NJ
 iPSpR4S51j7L1kXSGYomoiWnYIXbR3o=
X-Google-Smtp-Source: APiQypJzv9wEkX2E7bBSJdK2ny557CRsG1p/d/HhX+NSwgCmRxh3cj7L5u2tPYSg+9/ZBiYeP6iBJg==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr3862923wmg.143.1586936492031; 
 Wed, 15 Apr 2020 00:41:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:25 +0200
Message-Id: <20200415074034.175360-51-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 50/59] drm/arc: Inline arcpgu_drm_hdmi_init
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

Really not worth the function, much less the separate file now that
almost all the code is gone.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/arc/Makefile      |  2 +-
 drivers/gpu/drm/arc/arcpgu.h      |  1 -
 drivers/gpu/drm/arc/arcpgu_drv.c  | 12 +++++++++---
 drivers/gpu/drm/arc/arcpgu_hdmi.c | 27 ---------------------------
 4 files changed, 10 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/gpu/drm/arc/arcpgu_hdmi.c

diff --git a/drivers/gpu/drm/arc/Makefile b/drivers/gpu/drm/arc/Makefile
index c686e0287a71..379a1145bc2f 100644
--- a/drivers/gpu/drm/arc/Makefile
+++ b/drivers/gpu/drm/arc/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-arcpgu-y := arcpgu_hdmi.o arcpgu_sim.o arcpgu_drv.o
+arcpgu-y := arcpgu_sim.o arcpgu_drv.o
 obj-$(CONFIG_DRM_ARCPGU) += arcpgu.o
diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index cee2448a07d6..7dce0c2313ba 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -34,7 +34,6 @@ static inline u32 arc_pgu_read(struct arcpgu_drm_private *arcpgu,
 	return ioread32(arcpgu->regs + reg);
 }
 
-int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np);
 int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np);
 
 #endif
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index 2443e3c78a76..8fbfd956de0a 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -227,9 +227,15 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	}
 
 	if (encoder_node) {
-		ret = arcpgu_drm_hdmi_init(drm, encoder_node);
-		of_node_put(encoder_node);
-		if (ret < 0)
+		struct drm_bridge *bridge;
+
+		/* Locate drm bridge from the hdmi encoder DT node */
+		bridge = of_drm_find_bridge(encoder_node);
+		if (!bridge)
+			return -EPROBE_DEFER;
+
+		ret = drm_simple_display_pipe_attach_bridge(&arcpgu->pipe, bridge);
+		if (ret)
 			return ret;
 	} else {
 		dev_info(drm->dev, "no encoder found. Assumed virtual LCD on simulation platform\n");
diff --git a/drivers/gpu/drm/arc/arcpgu_hdmi.c b/drivers/gpu/drm/arc/arcpgu_hdmi.c
deleted file mode 100644
index d430af686cbc..000000000000
--- a/drivers/gpu/drm/arc/arcpgu_hdmi.c
+++ /dev/null
@@ -1,27 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * ARC PGU DRM driver.
- *
- * Copyright (C) 2016 Synopsys, Inc. (www.synopsys.com)
- */
-
-#include <drm/drm_bridge.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_encoder.h>
-#include <drm/drm_device.h>
-
-#include "arcpgu.h"
-
-int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
-{
-	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
-	struct drm_bridge *bridge;
-
-	/* Locate drm bridge from the hdmi encoder DT node */
-	bridge = of_drm_find_bridge(np);
-	if (!bridge)
-		return -EPROBE_DEFER;
-
-	/* Link drm_bridge to encoder */
-	return drm_simple_display_pipe_attach_bridge(&arcpgu->pipe, bridge);
-}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
