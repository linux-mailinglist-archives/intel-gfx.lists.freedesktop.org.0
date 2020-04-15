Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 705841A94DF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2F76E8B9;
	Wed, 15 Apr 2020 07:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EAA6E8B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:35 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id t14so4649814wrw.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hmPH/ytWqmP9cdJNpyRZDtCyFUdPTtkaGKqL/dBYPzs=;
 b=dve2ad5W+DGEXijl9UOhDaxHXE+AHEBsx95gvdwfbkfW+0Q3dsU9jjakJ6Bo/sb47U
 c/02DtxW0E3f+e0lOpMvspnYTWyCWk+EEPKsATUb/ijay4Ttkn1RKPRJJHE7b/fju50n
 dVlF8cA2WloJvXDmHG8Xc471SDDiTPUml2EO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hmPH/ytWqmP9cdJNpyRZDtCyFUdPTtkaGKqL/dBYPzs=;
 b=ee0+at1HSq26pHfHaNl/z3VM/a5zPpasz0WZHsXLbWmEQS3C8aqOBHZeXZ+HTssR48
 GY+E0KYJkGlg8LBZDqQnt8Hlzoo781NrqwjNAEELI2Nu6q7RaxqwNhBoEWyFYx1Erm/m
 uLpiqKh7oXGKcqINf7fWOEaTHCd6qsZ56Ygn+7OGj7GoFuhZD0htTyAyuhQMFPx5OtPv
 5co2I9tTiv+VIgFE71ChxhTgIJqV1mzK4Xegpgl7dRYbBveAOGwh44ZSa1REOBK4QZQ6
 RrK+VbWQgxhYAd9rQm6fPM0MOSJkPtd18h45yLe1ZGKjYy5mI7eu21Ol94WuD8YDe+rI
 E8xQ==
X-Gm-Message-State: AGi0PuaY2riyxKvZ5ocafmuQkkQUTh5Mu7QeKmIKFs6hrDtpcxAuYNZy
 qR89t3MQdLJu7oH+feLNgABWCoHBUUQ=
X-Google-Smtp-Source: APiQypK9YMXPUpJ5Hngf8LQ8smOl7lks9F4zD6LL7Wr9OZ7YH3bXzt2kDxEHfgHrvl4GoGFGodvBYw==
X-Received: by 2002:adf:9e49:: with SMTP id v9mr27667656wre.34.1586936493796; 
 Wed, 15 Apr 2020 00:41:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:33 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:27 +0200
Message-Id: <20200415074034.175360-53-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 52/59] drm/arc: Initialize sim connector before
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
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

That way we can get rid of this final piece of init code, and use the
simple pipe helpers as intended.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu_drv.c | 51 ++++++++++----------------------
 1 file changed, 16 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index b0c941d91545..857812f25bec 100644
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
+	return drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
 			DRM_MODE_CONNECTOR_VIRTUAL);
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
 }
 
 #define ENCODE_PGU_XY(x, y)	((((x) - 1) << 16) | ((y) - 1))
@@ -273,6 +252,7 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 {
 	struct platform_device *pdev = to_platform_device(arcpgu->drm.dev);
 	struct device_node *encoder_node = NULL, *endpoint_node = NULL;
+	struct drm_connector *connector = NULL;
 	struct drm_device *drm = &arcpgu->drm;
 	struct resource *res;
 	int ret;
@@ -307,13 +287,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
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
@@ -322,8 +295,21 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
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
 
@@ -335,11 +321,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
