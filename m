Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8BD1A94F8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8ECD6E8F0;
	Wed, 15 Apr 2020 07:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4296E8AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:29 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id x18so13586007wrq.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qvm0d3YbwdGtjhdQY76EkPc/AXzCq2G4qsbcqkf1gQ4=;
 b=GeFHmkQhNodj5LOk3ikW7TUDhSCwD1Pjj7nlKoqkngiC1AlDI0hEXFPNZZcNJwwTOy
 +jCJi6O2ntLIk0D7MeY3IZSY7kygG0ZSN8j90EbgdCr5C1ncD1i08oEyp+SrSsSsVM3x
 TqmjSimXkGMoUZMWIv/BbJcf8UtRuZe7lW/vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qvm0d3YbwdGtjhdQY76EkPc/AXzCq2G4qsbcqkf1gQ4=;
 b=I7IfPDbHSLMFg5cgkIagmodsKVhoMYgQYYuEBQANAAtGpiTyBS4OKo3+Ogl7Hzt+ib
 HjibWKAPJ99lEMAZO1KM+Ko45/VAu50RH7C6TAR9p9uIiisKDgRQ2DHY89pcHjgQzgus
 suafHjsM5L82PCTfFX4vTOiqgxgFxlo+He1NJppsFwPToSH7xgiEHu3h8UgusUIOq2Dn
 uOKGSL7mYsR54hbs3ZgCOOCXgrvjm0LN8A/8nIG0x0Da45CnDTHrlZo0xjeD8FQSr41X
 5dXwjKN/qY1VPR5OA6C0otzOIM/dEy/mKT8MBGihgxmx6mxAwa3GqnVIbgm9MMTHaAQm
 Ux9Q==
X-Gm-Message-State: AGi0PuYSeaWYhst3g3KpgR+yLEq9rpf+OWBrQtLV8QplYPn7ACcudR17
 7t7JdFv/uQ8KUddQK2U9lSzn5GASWlo=
X-Google-Smtp-Source: APiQypICFoGHZ3TdVvD9qICeCXyuKiBB+rW00IOojl1I9SZ6wIUAttyqUQsFtcQOawLUlSTKz+d1CA==
X-Received: by 2002:a05:6000:108b:: with SMTP id
 y11mr25680706wrw.380.1586936487519; 
 Wed, 15 Apr 2020 00:41:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:20 +0200
Message-Id: <20200415074034.175360-46-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 45/59] drm/arc: Use drmm_mode_config_cleanup
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

With autocleanup through drm_device management we can delete all the
code. Possible now that there's no confusion against devm_kzalloc'ed
structures anymore.

I inlined arcpgu_setup_mode_config because it's tiny and the newly
needed return value handling would have been more ...

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu_crtc.c |  4 +---
 drivers/gpu/drm/arc/arcpgu_drv.c  | 21 +++++++++------------
 drivers/gpu/drm/arc/arcpgu_hdmi.c |  6 +-----
 drivers/gpu/drm/arc/arcpgu_sim.c  | 11 ++---------
 4 files changed, 13 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
index 88ba2e284fc0..72719556debb 100644
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
@@ -209,10 +209,8 @@ int arc_pgu_setup_crtc(struct drm_device *drm)
 
 	ret = drm_crtc_init_with_planes(drm, &arcpgu->pipe.crtc, primary, NULL,
 					&arc_pgu_crtc_funcs, NULL);
-	if (ret) {
-		arc_pgu_plane_destroy(primary);
+	if (ret)
 		return ret;
-	}
 
 	drm_crtc_helper_add(&arcpgu->pipe.crtc, &arc_pgu_crtc_helper_funcs);
 	return 0;
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index a419f279e129..40c9fc12d515 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -30,16 +30,6 @@ static const struct drm_mode_config_funcs arcpgu_drm_modecfg_funcs = {
 	.atomic_commit = drm_atomic_helper_commit,
 };
 
-static void arcpgu_setup_mode_config(struct drm_device *drm)
-{
-	drm_mode_config_init(drm);
-	drm->mode_config.min_width = 0;
-	drm->mode_config.min_height = 0;
-	drm->mode_config.max_width = 1920;
-	drm->mode_config.max_height = 1080;
-	drm->mode_config.funcs = &arcpgu_drm_modecfg_funcs;
-}
-
 DEFINE_DRM_GEM_CMA_FOPS(arcpgu_drm_ops);
 
 static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
@@ -54,7 +44,15 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	if (IS_ERR(arcpgu->clk))
 		return PTR_ERR(arcpgu->clk);
 
-	arcpgu_setup_mode_config(drm);
+	ret = drmm_mode_config_init(drm);
+	if (ret)
+		return ret;
+
+	drm->mode_config.min_width = 0;
+	drm->mode_config.min_height = 0;
+	drm->mode_config.max_width = 1920;
+	drm->mode_config.max_height = 1080;
+	drm->mode_config.funcs = &arcpgu_drm_modecfg_funcs;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	arcpgu->regs = devm_ioremap_resource(&pdev->dev, res);
@@ -108,7 +106,6 @@ static int arcpgu_unload(struct drm_device *drm)
 {
 	drm_kms_helper_poll_fini(drm);
 	drm_atomic_helper_shutdown(drm);
-	drm_mode_config_cleanup(drm);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/arc/arcpgu_hdmi.c b/drivers/gpu/drm/arc/arcpgu_hdmi.c
index dbad2c9237fe..925d6d31bb78 100644
--- a/drivers/gpu/drm/arc/arcpgu_hdmi.c
+++ b/drivers/gpu/drm/arc/arcpgu_hdmi.c
@@ -39,9 +39,5 @@ int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
 		return ret;
 
 	/* Link drm_bridge to encoder */
-	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
-	if (ret)
-		drm_encoder_cleanup(encoder);
-
-	return ret;
+	return drm_bridge_attach(encoder, bridge, NULL, 0);
 }
diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
index 3772df1647aa..afc34f8b4de0 100644
--- a/drivers/gpu/drm/arc/arcpgu_sim.c
+++ b/drivers/gpu/drm/arc/arcpgu_sim.c
@@ -73,21 +73,14 @@ int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
 			DRM_MODE_CONNECTOR_VIRTUAL);
 	if (ret < 0) {
 		dev_err(drm->dev, "failed to initialize drm connector\n");
-		goto error_encoder_cleanup;
+		return ret;
 	}
 
 	ret = drm_connector_attach_encoder(connector, encoder);
 	if (ret < 0) {
 		dev_err(drm->dev, "could not attach connector to encoder\n");
-		goto error_connector_cleanup;
+		return ret;
 	}
 
 	return 0;
-
-error_connector_cleanup:
-	drm_connector_cleanup(connector);
-
-error_encoder_cleanup:
-	drm_encoder_cleanup(encoder);
-	return ret;
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
