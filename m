Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A47E125DC07
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB006EC0F;
	Fri,  4 Sep 2020 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF926EC22
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:09 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a65so6281707wme.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dC4u+vvxxprFEYu02P4guq4D5aE7SV5ZrR1A5FX1bBU=;
 b=GK3HgE/nAyZOpyUN0WbHuAv7WpiW8MJ4lr1D1ty/+f57mkPjfHDjtno9duKd+o8gRo
 vZhObJ38IwzDB4GHuxyANG6COeWPVamN1G6r3xMcIGnVPG0xj3CYNWBb3mdxMvkVhBEq
 f+Ym1TwS7K3HjHdnoIG78r7LFvrDGhzWyYIOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dC4u+vvxxprFEYu02P4guq4D5aE7SV5ZrR1A5FX1bBU=;
 b=t2AgMVjC7KQvn8xG9nolfLWUfbfvk+osmLEOCE8dwikpEfoSSRu0RtYdlu0S67sU/C
 oL5EHjzuNIgG2gj344rdF3a+VIGv6TebVWi707zUqeaWwOUKJgxnoVmuI27wAuWrDLdA
 SrW+cO6i6Owg1nG3jyEcDKx4hp/im++yyhulVeYUlu5Gvs0deYqm3bnORdEDW35PAy9V
 M/ldNZEFABPsXfGk5RO+54hNfoPOwGb5HuK6+WCr4Un5fSS/uwCHDwTk4mGhRurnMALy
 T/Gjg9qw2Zcw4/lWy3LeuWHPcD3s/7dSpjdeQxU1ndVh6V1zkWgLTKYHijMQtNXUE4fK
 T6uQ==
X-Gm-Message-State: AOAM532dooHEUMSFtB6kdYV0wd58jjX1CEm4gSjWFr0o8mBcAk0ITdAI
 rMwTjlWJqwxgekh09P8GXiQlkA==
X-Google-Smtp-Source: ABdhPJw56096d0GFeR5Wgd6mej7Y2PWyfIKgh6KNCz4K0p0MUEAzgBLI5NszrblE22yeUXkWugAdkQ==
X-Received: by 2002:a1c:ed16:: with SMTP id l22mr7523578wmh.80.1599230407909; 
 Fri, 04 Sep 2020 07:40:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:33 +0200
Message-Id: <20200904143941.110665-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/24] drm/arc: Use drmm_mode_config_cleanup
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

With autocleanup through drm_device management we can delete all the
code. Possible now that there's no confusion against devm_kzalloc'ed
structures anymore.

I inlined arcpgu_setup_mode_config because it's tiny and the newly
needed return value handling would have been more ...

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
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
index 9020352816fa..6349e9dc770e 100644
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
