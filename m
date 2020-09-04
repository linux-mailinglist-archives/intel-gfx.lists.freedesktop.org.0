Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36E25DC13
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656DC6EC31;
	Fri,  4 Sep 2020 14:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD5E6EC1D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id t10so7040839wrv.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z32RR2TzYZ4VYWa8KiiuNey4OOQsqSR6Tklt/V5g/TQ=;
 b=AQWzpb0ppttdLkN1nOjE0V42v+6mx+jA67aNjxK3Ph4unSXYLazNCt97LuJ0Rbw0Ks
 hoRPWSLJjWjvwUhyCNaj9UZlumn/k4HcLg+rxFbnLdRM84SW5YObe2HC69sqBnoYtRNU
 FGvISydqyKZj6vsSYQ6mF55qK7OjN2PP2yzMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z32RR2TzYZ4VYWa8KiiuNey4OOQsqSR6Tklt/V5g/TQ=;
 b=pHYlY6iY0hhv8jIdW9Cn1x1wjx4qCLju9uASPAxq6+DFSaIeDHhtQY9PSAU9E/z0JV
 Yat1HGHpL8eVRm2STH4lWAbHgXb9z6OG3+7xFrqsVOehUv6QJhqPQq2wNBVSxSYwIzTS
 BgHM9HzzqCUKtedQtVKPrqKfs29749OIrHqpYZ97RcPHrXBB9jcJj60hHYU0P1qxlbgU
 jPS/dEdlw9AT2REbgYXYMkGqe8WJ/840D/OFOhYHE7q6SLGKXI15ahBTmEmpos1R3tlp
 faDfAjrMXd/ALDLhTP49aaMKsi41s+X+jCGWm8oGkzA/wB4lLZDMlCIfzxykg3mAetxw
 m+0A==
X-Gm-Message-State: AOAM530DLjqf6uAimB6yf+flLgqtWa+vqL2zd8w64SJDa8EfqJZUl47E
 UzDlpeOYERAsHr9+0eZpErIpAw==
X-Google-Smtp-Source: ABdhPJwfQpbw9Mt28tDXVtJ3JIs73/B/2pBcgbTaUjiWSSu1Adl6nv3zxBRPxmOjfj3tZ6/HeYLlyQ==
X-Received: by 2002:adf:e6c8:: with SMTP id y8mr8618315wrm.229.1599230413168; 
 Fri, 04 Sep 2020 07:40:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:38 +0200
Message-Id: <20200904143941.110665-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/24] drm/arc: Inline arcpgu_drm_hdmi_init
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Really not worth the function, much less the separate file now that
almost all the code is gone.

Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
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
index e49e80b8b089..0e959e42893d 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -221,9 +221,15 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
