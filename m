Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250E619D85E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 415D36EBDC;
	Fri,  3 Apr 2020 13:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A408D6EBDC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:13 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w15so2404202wrv.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HtyyKT/W7RLfakIgzPFga+l9yxNGNU2WHGozHFs2wZE=;
 b=W3AEzggtdEk1CFOXxyGkhZF6Qtclc0+womnYY6RQ+OYrDfymHtTM0NCWLEfksKNiFs
 hNe1GwWd3MGGjnOsky3GnqRel79ACXgUh4HDg5NyoXm/V5NnCyPFjjo/iTdEFG1azACk
 XFyL7RgjQjNfishFKsX9x20Dkjr/oJyCz23wM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HtyyKT/W7RLfakIgzPFga+l9yxNGNU2WHGozHFs2wZE=;
 b=meeWKlFg3RhjVnee5xejfGiQcMxzsm3dRlBVnxnfqgvawRzKLwzQb9BNDPENa12dmm
 5u8WVZyX6vPgqWXYVtL6ErvuU1Nqz5Bph4VTK0KDaRMQLiomI+hTLOATnjTKTPU0utys
 IWvuB+V0lD5sQG5Tsx8k5dpGvOhSP912MqVPy96GHAw9h6fJpRpTtr2Cima3UEcC8aPm
 66K02wCvHFMgh6ZAgzyBevPiVBnGHq3XjrhkWyGPBE/tX+mTsWiU4TyRExjHnsjpaxM+
 FoPL0BBYnHLXPnCMKABQLjPAmeULNxST/MBWISEgEMKQ6T+LjdxhzvYBuhIkz4aUN5Tm
 qprg==
X-Gm-Message-State: AGi0Puba6pjWJhhxaGuLkL7e78T3fnXs65fIXe1m54KvopCKkiqE6wtt
 olKglrFtomEMXmQbVv8O7vgGVw==
X-Google-Smtp-Source: APiQypISZRDU+58Twj1PFqFu7Bsp5C4SreEQ08TiiZwrTow1N+p4lbLZC/7x9ZBZNJy+HsqKzcc33Q==
X-Received: by 2002:adf:fa51:: with SMTP id y17mr2453215wrr.358.1585922352341; 
 Fri, 03 Apr 2020 06:59:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:17 +0200
Message-Id: <20200403135828.2542770-34-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/44] drm/mcde: Don't use
 drm_device->dev_private
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
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Upcasting using a container_of macro is more typesafe, faster and
easier for the compiler to optimize.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_display.c | 10 +++++-----
 drivers/gpu/drm/mcde/mcde_drm.h     |  2 ++
 drivers/gpu/drm/mcde/mcde_drv.c     |  5 ++---
 drivers/gpu/drm/mcde/mcde_dsi.c     |  2 +-
 4 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_display.c b/drivers/gpu/drm/mcde/mcde_display.c
index e59907e68854..04e1d38d41f7 100644
--- a/drivers/gpu/drm/mcde/mcde_display.c
+++ b/drivers/gpu/drm/mcde/mcde_display.c
@@ -948,7 +948,7 @@ static void mcde_display_disable(struct drm_simple_display_pipe *pipe)
 {
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_device *drm = crtc->dev;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	struct drm_pending_vblank_event *event;
 
 	drm_crtc_vblank_off(crtc);
@@ -1020,7 +1020,7 @@ static void mcde_display_update(struct drm_simple_display_pipe *pipe,
 {
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_device *drm = crtc->dev;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	struct drm_pending_vblank_event *event = crtc->state->event;
 	struct drm_plane *plane = &pipe->plane;
 	struct drm_plane_state *pstate = plane->state;
@@ -1078,7 +1078,7 @@ static int mcde_display_enable_vblank(struct drm_simple_display_pipe *pipe)
 {
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_device *drm = crtc->dev;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	u32 val;
 
 	/* Enable all VBLANK IRQs */
@@ -1097,7 +1097,7 @@ static void mcde_display_disable_vblank(struct drm_simple_display_pipe *pipe)
 {
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_device *drm = crtc->dev;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 
 	/* Disable all VBLANK IRQs */
 	writel(0, mcde->regs + MCDE_IMSCPP);
@@ -1117,7 +1117,7 @@ static struct drm_simple_display_pipe_funcs mcde_display_funcs = {
 
 int mcde_display_init(struct drm_device *drm)
 {
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	int ret;
 	static const u32 formats[] = {
 		DRM_FORMAT_ARGB8888,
diff --git a/drivers/gpu/drm/mcde/mcde_drm.h b/drivers/gpu/drm/mcde/mcde_drm.h
index 80edd6628979..679c2c4e6d9d 100644
--- a/drivers/gpu/drm/mcde/mcde_drm.h
+++ b/drivers/gpu/drm/mcde/mcde_drm.h
@@ -34,6 +34,8 @@ struct mcde {
 	struct regulator *vana;
 };
 
+#define to_mcde(dev) container_of(dev, struct mcde, drm)
+
 bool mcde_dsi_irq(struct mipi_dsi_device *mdsi);
 void mcde_dsi_te_request(struct mipi_dsi_device *mdsi);
 extern struct platform_driver mcde_dsi_driver;
diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index bdb525e3c5d7..84f3e2dbd77b 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -164,7 +164,7 @@ static irqreturn_t mcde_irq(int irq, void *data)
 static int mcde_modeset_init(struct drm_device *drm)
 {
 	struct drm_mode_config *mode_config;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	int ret;
 
 	if (!mcde->bridge) {
@@ -311,7 +311,6 @@ static int mcde_probe(struct platform_device *pdev)
 	if (IS_ERR(mcde))
 		return PTR_ERR(mcde);
 	drm = &mcde->drm;
-	drm->dev_private = mcde;
 	mcde->dev = dev;
 	platform_set_drvdata(pdev, drm);
 
@@ -486,7 +485,7 @@ static int mcde_probe(struct platform_device *pdev)
 static int mcde_remove(struct platform_device *pdev)
 {
 	struct drm_device *drm = platform_get_drvdata(pdev);
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 
 	component_master_del(&pdev->dev, &mcde_drm_comp_ops);
 	clk_disable_unprepare(mcde->mcde_clk);
diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 7af5ebb0c436..1baa2324cdb9 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -1020,7 +1020,7 @@ static int mcde_dsi_bind(struct device *dev, struct device *master,
 			 void *data)
 {
 	struct drm_device *drm = data;
-	struct mcde *mcde = drm->dev_private;
+	struct mcde *mcde = to_mcde(drm);
 	struct mcde_dsi *d = dev_get_drvdata(dev);
 	struct device_node *child;
 	struct drm_panel *panel = NULL;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
