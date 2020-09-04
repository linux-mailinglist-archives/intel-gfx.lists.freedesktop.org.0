Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19AE25DC15
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED166EC19;
	Fri,  4 Sep 2020 14:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F7A6EC32
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:16 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z9so6334664wmk.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HkbO6RAlG2KMefF78tNGo81vvHiUlFF8htcX5tdovHk=;
 b=b16qzKpn5vrZpj8rcVYrKtzRVO6xXfvXxkYnWBnrwXXxtfUMnyyYdCs0arqB4czEQN
 6PbbsNop3t2iuVHzOp6sIbXWNBs7bVJ+Pyn/HMWyKZD5IJ8cevzcp3RVXN+RRes+AIwX
 AydH8a0g1lQowGHSmzsOgqsMdJhGM/m+xB8gE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HkbO6RAlG2KMefF78tNGo81vvHiUlFF8htcX5tdovHk=;
 b=qhSx2BLPP9OVW5+lSkUtoc6yK371yuprtzaBNEakFG0LEehariqJ0xkymYsRNVkwq0
 UarhY+ZOLXgRoq4/fDC1UJq/IfYrvtjgLy3xRbS1a6yQ7Pc7bMqsND3oTpnk1ZCvSdGS
 jiD5ks/O9dVMzOQ4P+f0UfI9Me0s7b8f61lFo3ogg531bpbs9Sh+WOKjTSkHnYqxAVlw
 Q6xUqK0WRjk8ehiNuue9Gpf77maLCYZGayyEslFSbcvGoTpKm7MvmwSgTQd0YYQ2xd7m
 Owm2Opt6vER939qLoPkvPeU5ISG7fSQWb1gXPHob4QtIQPbOFfH6AWZ5VxtyRunh7cAK
 37fg==
X-Gm-Message-State: AOAM530usag2L21iSetq9Jx6uxpvBSMklzTZsWVk2q781lgHZY6sEzAp
 z6Bdid7qw2d24tVYB08gjEMagg==
X-Google-Smtp-Source: ABdhPJxhOTkslMSJ+z6a4k2254iNc0nd7oUDwvT/cOpoZJq4LuzRQnI0WJrrDoqPXW8J2DY4la6PIQ==
X-Received: by 2002:a7b:cb0e:: with SMTP id u14mr7865840wmj.158.1599230415124; 
 Fri, 04 Sep 2020 07:40:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:14 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:40 +0200
Message-Id: <20200904143941.110665-24-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/24] drm/arc: Initialize sim connector before
 display pipe
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
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

That way we can get rid of this final piece of init code, and use the
simple pipe helpers as intended.

v2: Fix indent (Sam)

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu_drv.c | 53 ++++++++++----------------------
 1 file changed, 17 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index 0a0b54993773..8edfe6601151 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -95,32 +95,11 @@ static const struct drm_connector_funcs arcpgu_drm_connector_funcs = {
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };
 
-static int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
+static int arcpgu_drm_sim_init(struct drm_device *drm, struct drm_connector *connector)
 {
-	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
-	struct drm_encoder *encoder;
-	struct drm_connector *connector;
-	int ret;
-
-	encoder = &arcpgu->pipe.encoder;
-
-	connector = &arcpgu->sim_conn;
 	drm_connector_helper_add(connector, &arcpgu_drm_connector_helper_funcs);
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
+	return drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
+				  DRM_MODE_CONNECTOR_VIRTUAL);
 }
 
 #define ENCODE_PGU_XY(x, y)	((((x) - 1) << 16) | ((y) - 1))
@@ -267,6 +246,7 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 {
 	struct platform_device *pdev = to_platform_device(arcpgu->drm.dev);
 	struct device_node *encoder_node = NULL, *endpoint_node = NULL;
+	struct drm_connector *connector = NULL;
 	struct drm_device *drm = &arcpgu->drm;
 	struct resource *res;
 	int ret;
@@ -301,13 +281,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	if (dma_set_mask_and_coherent(drm->dev, DMA_BIT_MASK(32)))
 		return -ENODEV;
 
-	ret = drm_simple_display_pipe_init(drm, &arcpgu->pipe, &arc_pgu_pipe_funcs,
-					   arc_pgu_supported_formats,
-					   ARRAY_SIZE(arc_pgu_supported_formats),
-					   NULL, NULL);
-	if (ret)
-		return ret;
-
 	/*
 	 * There is only one output port inside each device. It is linked with
 	 * encoder endpoint.
@@ -316,8 +289,21 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	if (endpoint_node) {
 		encoder_node = of_graph_get_remote_port_parent(endpoint_node);
 		of_node_put(endpoint_node);
+	} else {
+		connector = &arcpgu->sim_conn;
+		dev_info(drm->dev, "no encoder found. Assumed virtual LCD on simulation platform\n");
+		ret = arcpgu_drm_sim_init(drm, connector);
+		if (ret < 0)
+			return ret;
 	}
 
+	ret = drm_simple_display_pipe_init(drm, &arcpgu->pipe, &arc_pgu_pipe_funcs,
+					   arc_pgu_supported_formats,
+					   ARRAY_SIZE(arc_pgu_supported_formats),
+					   NULL, connector);
+	if (ret)
+		return ret;
+
 	if (encoder_node) {
 		struct drm_bridge *bridge;
 
@@ -329,11 +315,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 		ret = drm_simple_display_pipe_attach_bridge(&arcpgu->pipe, bridge);
 		if (ret)
 			return ret;
-	} else {
-		dev_info(drm->dev, "no encoder found. Assumed virtual LCD on simulation platform\n");
-		ret = arcpgu_drm_sim_init(drm, NULL);
-		if (ret < 0)
-			return ret;
 	}
 
 	drm_mode_config_reset(drm);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
