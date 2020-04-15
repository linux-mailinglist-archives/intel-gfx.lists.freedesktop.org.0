Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B92D1A94D1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D366E8D8;
	Wed, 15 Apr 2020 07:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F61F6E8B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:13 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id z6so17718992wml.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vd0kKcbNJN+Z0a3PfFzYtncebg2DKTzv5SbKCkuxcU=;
 b=FZSeV2QjUXm1SuGZu8jHT+WoZ3Olg6fPW1Q1usQpHVePHw5GyVKRDihwNUJJWNYYXX
 14jrvJZ1EbuEPrMKT4Zl163fALdHeftgXiRcW27s203ApqfDH50OpBXo7WitMcPszVYG
 Xmfu+qCztQF6efdJb17S3Q7CQ4zuK6PQpbjhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vd0kKcbNJN+Z0a3PfFzYtncebg2DKTzv5SbKCkuxcU=;
 b=GLefJhRajBgn5h6W7VnSG/ivzaMYMV1oiICK3+/gzwfnaSEBd5jBlXppQmLEFB7epX
 nEcd1WY7r72DRq692d8OPz9WQgGbsEFjvZC81hL+KJeuAz7VyIsvGSTfdT355myxEQF/
 aztadVgEHWV9FSvbHw+rEMqCcxrl7KrFA0UTWvLzIchgWO2NRXreZ/pYiS/gDffuLQR+
 Whh8M3BEYFwrGXvtfIz4Hwv+7BL0LE01ieSovaYjcnC6lWrWK2paFgVz7JxV0QX9Pkp5
 YoZMTzdVbg0GRnKrx2fjMAUYyEXBvlTf7TsgoU95fVKs8qgWZ1t0hzJ6xgrJ7MIkjMvE
 /43Q==
X-Gm-Message-State: AGi0Pub6YygbfNE4jSCrDOmFR/94r+nTbxSUfIRDK1F07o2kj45/d9YQ
 CI0UMVqA82OWvAKV2H2Fr+Ydii5WKh0=
X-Google-Smtp-Source: APiQypL+Zv7L2UFEE7NtZRANz0lASf+2xrhgNoDekGIA1AkhR3TLGCGG2ndupJAJMyQeJ1izbPXFYQ==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr4036153wml.105.1586936471331; 
 Wed, 15 Apr 2020 00:41:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:04 +0200
Message-Id: <20200415074034.175360-30-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/59] drm/mcde: Don't use
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
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Upcasting using a container_of macro is more typesafe, faster and
easier for the compiler to optimize.

v2: Move misplaced removal of double-assignment to this patch (Sam)

Reviewed-by: Linus Walleij <linus.walleij@linaro.org> (v1)
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_display.c | 10 +++++-----
 drivers/gpu/drm/mcde/mcde_drm.h     |  2 ++
 drivers/gpu/drm/mcde/mcde_drv.c     |  6 ++----
 drivers/gpu/drm/mcde/mcde_dsi.c     |  2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

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
index 22003478db2c..84f3e2dbd77b 100644
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
@@ -311,13 +311,11 @@ static int mcde_probe(struct platform_device *pdev)
 	if (IS_ERR(mcde))
 		return PTR_ERR(mcde);
 	drm = &mcde->drm;
-	drm->dev_private = mcde;
 	mcde->dev = dev;
 	platform_set_drvdata(pdev, drm);
 
 	/* Enable continuous updates: this is what Linux' framebuffer expects */
 	mcde->oneshot_mode = false;
-	drm->dev_private = mcde;
 
 	/* First obtain and turn on the main power */
 	mcde->epod = devm_regulator_get(dev, "epod");
@@ -487,7 +485,7 @@ static int mcde_probe(struct platform_device *pdev)
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
