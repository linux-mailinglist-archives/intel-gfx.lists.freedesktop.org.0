Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537525DC12
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0256EC28;
	Fri,  4 Sep 2020 14:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835166EC1A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:13 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id q9so6307920wmj.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SxR4myA6d94ECiu2qjnbjnaklp27q6QY41OVGEJak/k=;
 b=dYB+f7sxESUMWM3hBXjgjnlfMq6uZx7M/zElInzpW2an+mbE7uNEbK5MFUsV/FX0bJ
 LZ2Su5epW6M5CUCGHucaCmcjJp9ca4vNHnb4Yai0umpXKz97FiIYx9SqT62WOSAVF3ww
 RMcHN7WYp2CWeZ5nkbUjHEKhhCdgwFmRKicjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SxR4myA6d94ECiu2qjnbjnaklp27q6QY41OVGEJak/k=;
 b=Ro1RNgeBceBrEfpVssIq0I5BBePSyPClRSjdMROXh5pPOPZf7r2c9dIeQjJuPxuP/H
 jUHU39XEqq/b+mtq7QBMS2YdSF3Rh6gn3pIaCqbiELThHsGym4cq1MkgpTwpRNEWk4Vv
 8QacrveNTmREtl7ktVe2/bE/atLiSxCPSIVaRpcF051NwerIEcyorAnPRwYArsipbUhg
 dOVTzxNwwBVxl2iuifNe5HEpLXuJZldLC2QrI6ivTWILGkh8eNQqifJo/EdC2gMOgUTk
 R0IppAgg5jZfwMY7nUeBvOxGqOfKHnnUtSvBaTjYQzJ4K83h/ygnjXXflIvElE5pbsM3
 VcpQ==
X-Gm-Message-State: AOAM533US8w0jfhAlBDtjG+RwtbzEDScoCeCSc21sw212w6n6YFNVA0l
 Ge/30jeoQUQNjSmUylons3nv+Q==
X-Google-Smtp-Source: ABdhPJwx78t1tMJhqMKNavJKEdOEdI/xatvPRt2IxnQoy3Buz8HPK1u7xdVZSXPf12LX6ri2LrJC9A==
X-Received: by 2002:a1c:7c1a:: with SMTP id x26mr8268307wmc.112.1599230412042; 
 Fri, 04 Sep 2020 07:40:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:37 +0200
Message-Id: <20200904143941.110665-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/24] drm/arc: Inline arcpgu_crtc.c
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Really not big anymore.

Note that we no longer clamp all errors to ENODEV, highlighted by Sam.

v2: Fixup update function, bug reported by Eugeniy

v3: Delete now unused crtc funcs (0day)

v4: Move encoder removal to right patch (Sam).

Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/Makefile      |   2 +-
 drivers/gpu/drm/arc/arcpgu.h      |   1 -
 drivers/gpu/drm/arc/arcpgu_crtc.c | 160 ------------------------------
 drivers/gpu/drm/arc/arcpgu_drv.c  | 141 +++++++++++++++++++++++++-
 4 files changed, 140 insertions(+), 164 deletions(-)
 delete mode 100644 drivers/gpu/drm/arc/arcpgu_crtc.c

diff --git a/drivers/gpu/drm/arc/Makefile b/drivers/gpu/drm/arc/Makefile
index c7028b7427b3..c686e0287a71 100644
--- a/drivers/gpu/drm/arc/Makefile
+++ b/drivers/gpu/drm/arc/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-arcpgu-y := arcpgu_crtc.o arcpgu_hdmi.o arcpgu_sim.o arcpgu_drv.o
+arcpgu-y := arcpgu_hdmi.o arcpgu_sim.o arcpgu_drv.o
 obj-$(CONFIG_DRM_ARCPGU) += arcpgu.o
diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index b5c699d14f27..cee2448a07d6 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -34,7 +34,6 @@ static inline u32 arc_pgu_read(struct arcpgu_drm_private *arcpgu,
 	return ioread32(arcpgu->regs + reg);
 }
 
-int arc_pgu_setup_pipe(struct drm_device *dev);
 int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np);
 int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np);
 
diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
deleted file mode 100644
index 30fbb3052bc7..000000000000
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ /dev/null
@@ -1,160 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * ARC PGU DRM driver.
- *
- * Copyright (C) 2016 Synopsys, Inc. (www.synopsys.com)
- */
-
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_device.h>
-#include <drm/drm_fb_cma_helper.h>
-#include <drm/drm_gem_cma_helper.h>
-#include <drm/drm_plane_helper.h>
-#include <drm/drm_probe_helper.h>
-#include <linux/clk.h>
-#include <linux/platform_data/simplefb.h>
-
-#include "arcpgu.h"
-#include "arcpgu_regs.h"
-
-#define ENCODE_PGU_XY(x, y)	((((x) - 1) << 16) | ((y) - 1))
-
-static const u32 arc_pgu_supported_formats[] = {
-	DRM_FORMAT_RGB565,
-	DRM_FORMAT_XRGB8888,
-	DRM_FORMAT_ARGB8888,
-};
-
-static void arc_pgu_set_pxl_fmt(struct arcpgu_drm_private *arcpgu)
-{
-	const struct drm_framebuffer *fb = arcpgu->pipe.plane.state->fb;
-	uint32_t pixel_format = fb->format->format;
-	u32 format = DRM_FORMAT_INVALID;
-	int i;
-	u32 reg_ctrl;
-
-	for (i = 0; i < ARRAY_SIZE(arc_pgu_supported_formats); i++) {
-		if (arc_pgu_supported_formats[i] == pixel_format)
-			format = arc_pgu_supported_formats[i];
-	}
-
-	if (WARN_ON(format == DRM_FORMAT_INVALID))
-		return;
-
-	reg_ctrl = arc_pgu_read(arcpgu, ARCPGU_REG_CTRL);
-	if (format == DRM_FORMAT_RGB565)
-		reg_ctrl &= ~ARCPGU_MODE_XRGB8888;
-	else
-		reg_ctrl |= ARCPGU_MODE_XRGB8888;
-	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL, reg_ctrl);
-}
-
-static enum drm_mode_status arc_pgu_mode_valid(struct drm_simple_display_pipe *pipe,
-					       const struct drm_display_mode *mode)
-{
-	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
-	long rate, clk_rate = mode->clock * 1000;
-	long diff = clk_rate / 200; /* +-0.5% allowed by HDMI spec */
-
-	rate = clk_round_rate(arcpgu->clk, clk_rate);
-	if ((max(rate, clk_rate) - min(rate, clk_rate) < diff) && (rate > 0))
-		return MODE_OK;
-
-	return MODE_NOCLOCK;
-}
-
-static void arc_pgu_mode_set(struct arcpgu_drm_private *arcpgu)
-{
-	struct drm_display_mode *m = &arcpgu->pipe.crtc.state->adjusted_mode;
-	u32 val;
-
-	arc_pgu_write(arcpgu, ARCPGU_REG_FMT,
-		      ENCODE_PGU_XY(m->crtc_htotal, m->crtc_vtotal));
-
-	arc_pgu_write(arcpgu, ARCPGU_REG_HSYNC,
-		      ENCODE_PGU_XY(m->crtc_hsync_start - m->crtc_hdisplay,
-				    m->crtc_hsync_end - m->crtc_hdisplay));
-
-	arc_pgu_write(arcpgu, ARCPGU_REG_VSYNC,
-		      ENCODE_PGU_XY(m->crtc_vsync_start - m->crtc_vdisplay,
-				    m->crtc_vsync_end - m->crtc_vdisplay));
-
-	arc_pgu_write(arcpgu, ARCPGU_REG_ACTIVE,
-		      ENCODE_PGU_XY(m->crtc_hblank_end - m->crtc_hblank_start,
-				    m->crtc_vblank_end - m->crtc_vblank_start));
-
-	val = arc_pgu_read(arcpgu, ARCPGU_REG_CTRL);
-
-	if (m->flags & DRM_MODE_FLAG_PVSYNC)
-		val |= ARCPGU_CTRL_VS_POL_MASK << ARCPGU_CTRL_VS_POL_OFST;
-	else
-		val &= ~(ARCPGU_CTRL_VS_POL_MASK << ARCPGU_CTRL_VS_POL_OFST);
-
-	if (m->flags & DRM_MODE_FLAG_PHSYNC)
-		val |= ARCPGU_CTRL_HS_POL_MASK << ARCPGU_CTRL_HS_POL_OFST;
-	else
-		val &= ~(ARCPGU_CTRL_HS_POL_MASK << ARCPGU_CTRL_HS_POL_OFST);
-
-	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL, val);
-	arc_pgu_write(arcpgu, ARCPGU_REG_STRIDE, 0);
-	arc_pgu_write(arcpgu, ARCPGU_REG_START_SET, 1);
-
-	arc_pgu_set_pxl_fmt(arcpgu);
-
-	clk_set_rate(arcpgu->clk, m->crtc_clock * 1000);
-}
-
-static void arc_pgu_enable(struct drm_simple_display_pipe *pipe,
-			   struct drm_crtc_state *crtc_state,
-			   struct drm_plane_state *plane_state)
-{
-	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
-
-	arc_pgu_mode_set(arcpgu);
-
-	clk_prepare_enable(arcpgu->clk);
-	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
-		      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) |
-		      ARCPGU_CTRL_ENABLE_MASK);
-}
-
-static void arc_pgu_disable(struct drm_simple_display_pipe *pipe)
-{
-	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
-
-	clk_disable_unprepare(arcpgu->clk);
-	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
-			      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) &
-			      ~ARCPGU_CTRL_ENABLE_MASK);
-}
-
-static void arc_pgu_update(struct drm_simple_display_pipe *pipe,
-			   struct drm_plane_state *state)
-{
-	struct arcpgu_drm_private *arcpgu;
-	struct drm_gem_cma_object *gem;
-
-	if (!pipe->plane.state->fb)
-		return;
-
-	arcpgu = pipe_to_arcpgu_priv(pipe);
-	gem = drm_fb_cma_get_gem_obj(pipe->plane.state->fb, 0);
-	arc_pgu_write(arcpgu, ARCPGU_REG_BUF0_ADDR, gem->paddr);
-}
-
-static const struct drm_simple_display_pipe_funcs arc_pgu_pipe_funcs = {
-	.update = arc_pgu_update,
-	.mode_valid = arc_pgu_mode_valid,
-	.enable	= arc_pgu_enable,
-	.disable = arc_pgu_disable,
-};
-
-int arc_pgu_setup_pipe(struct drm_device *drm)
-{
-	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
-
-	return drm_simple_display_pipe_init(drm, &arcpgu->pipe, &arc_pgu_pipe_funcs,
-					    arc_pgu_supported_formats,
-					    ARRAY_SIZE(arc_pgu_supported_formats),
-					    NULL, NULL);
-}
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index 222ab28efbd0..e49e80b8b089 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -12,6 +12,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_of.h>
@@ -24,6 +25,138 @@
 #include "arcpgu.h"
 #include "arcpgu_regs.h"
 
+#define ENCODE_PGU_XY(x, y)	((((x) - 1) << 16) | ((y) - 1))
+
+static const u32 arc_pgu_supported_formats[] = {
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_ARGB8888,
+};
+
+static void arc_pgu_set_pxl_fmt(struct arcpgu_drm_private *arcpgu)
+{
+	const struct drm_framebuffer *fb = arcpgu->pipe.plane.state->fb;
+	uint32_t pixel_format = fb->format->format;
+	u32 format = DRM_FORMAT_INVALID;
+	int i;
+	u32 reg_ctrl;
+
+	for (i = 0; i < ARRAY_SIZE(arc_pgu_supported_formats); i++) {
+		if (arc_pgu_supported_formats[i] == pixel_format)
+			format = arc_pgu_supported_formats[i];
+	}
+
+	if (WARN_ON(format == DRM_FORMAT_INVALID))
+		return;
+
+	reg_ctrl = arc_pgu_read(arcpgu, ARCPGU_REG_CTRL);
+	if (format == DRM_FORMAT_RGB565)
+		reg_ctrl &= ~ARCPGU_MODE_XRGB8888;
+	else
+		reg_ctrl |= ARCPGU_MODE_XRGB8888;
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL, reg_ctrl);
+}
+
+static enum drm_mode_status arc_pgu_mode_valid(struct drm_simple_display_pipe *pipe,
+					       const struct drm_display_mode *mode)
+{
+	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
+	long rate, clk_rate = mode->clock * 1000;
+	long diff = clk_rate / 200; /* +-0.5% allowed by HDMI spec */
+
+	rate = clk_round_rate(arcpgu->clk, clk_rate);
+	if ((max(rate, clk_rate) - min(rate, clk_rate) < diff) && (rate > 0))
+		return MODE_OK;
+
+	return MODE_NOCLOCK;
+}
+
+static void arc_pgu_mode_set(struct arcpgu_drm_private *arcpgu)
+{
+	struct drm_display_mode *m = &arcpgu->pipe.crtc.state->adjusted_mode;
+	u32 val;
+
+	arc_pgu_write(arcpgu, ARCPGU_REG_FMT,
+		      ENCODE_PGU_XY(m->crtc_htotal, m->crtc_vtotal));
+
+	arc_pgu_write(arcpgu, ARCPGU_REG_HSYNC,
+		      ENCODE_PGU_XY(m->crtc_hsync_start - m->crtc_hdisplay,
+				    m->crtc_hsync_end - m->crtc_hdisplay));
+
+	arc_pgu_write(arcpgu, ARCPGU_REG_VSYNC,
+		      ENCODE_PGU_XY(m->crtc_vsync_start - m->crtc_vdisplay,
+				    m->crtc_vsync_end - m->crtc_vdisplay));
+
+	arc_pgu_write(arcpgu, ARCPGU_REG_ACTIVE,
+		      ENCODE_PGU_XY(m->crtc_hblank_end - m->crtc_hblank_start,
+				    m->crtc_vblank_end - m->crtc_vblank_start));
+
+	val = arc_pgu_read(arcpgu, ARCPGU_REG_CTRL);
+
+	if (m->flags & DRM_MODE_FLAG_PVSYNC)
+		val |= ARCPGU_CTRL_VS_POL_MASK << ARCPGU_CTRL_VS_POL_OFST;
+	else
+		val &= ~(ARCPGU_CTRL_VS_POL_MASK << ARCPGU_CTRL_VS_POL_OFST);
+
+	if (m->flags & DRM_MODE_FLAG_PHSYNC)
+		val |= ARCPGU_CTRL_HS_POL_MASK << ARCPGU_CTRL_HS_POL_OFST;
+	else
+		val &= ~(ARCPGU_CTRL_HS_POL_MASK << ARCPGU_CTRL_HS_POL_OFST);
+
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL, val);
+	arc_pgu_write(arcpgu, ARCPGU_REG_STRIDE, 0);
+	arc_pgu_write(arcpgu, ARCPGU_REG_START_SET, 1);
+
+	arc_pgu_set_pxl_fmt(arcpgu);
+
+	clk_set_rate(arcpgu->clk, m->crtc_clock * 1000);
+}
+
+static void arc_pgu_enable(struct drm_simple_display_pipe *pipe,
+			   struct drm_crtc_state *crtc_state,
+			   struct drm_plane_state *plane_state)
+{
+	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
+
+	arc_pgu_mode_set(arcpgu);
+
+	clk_prepare_enable(arcpgu->clk);
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
+		      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) |
+		      ARCPGU_CTRL_ENABLE_MASK);
+}
+
+static void arc_pgu_disable(struct drm_simple_display_pipe *pipe)
+{
+	struct arcpgu_drm_private *arcpgu = pipe_to_arcpgu_priv(pipe);
+
+	clk_disable_unprepare(arcpgu->clk);
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
+			      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) &
+			      ~ARCPGU_CTRL_ENABLE_MASK);
+}
+
+static void arc_pgu_update(struct drm_simple_display_pipe *pipe,
+			   struct drm_plane_state *state)
+{
+	struct arcpgu_drm_private *arcpgu;
+	struct drm_gem_cma_object *gem;
+
+	if (!pipe->plane.state->fb)
+		return;
+
+	arcpgu = pipe_to_arcpgu_priv(pipe);
+	gem = drm_fb_cma_get_gem_obj(pipe->plane.state->fb, 0);
+	arc_pgu_write(arcpgu, ARCPGU_REG_BUF0_ADDR, gem->paddr);
+}
+
+static const struct drm_simple_display_pipe_funcs arc_pgu_pipe_funcs = {
+	.update = arc_pgu_update,
+	.mode_valid = arc_pgu_mode_valid,
+	.enable	= arc_pgu_enable,
+	.disable = arc_pgu_disable,
+};
+
 static const struct drm_mode_config_funcs arcpgu_drm_modecfg_funcs = {
 	.fb_create  = drm_gem_fb_create,
 	.atomic_check = drm_atomic_helper_check,
@@ -70,8 +203,12 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	if (dma_set_mask_and_coherent(drm->dev, DMA_BIT_MASK(32)))
 		return -ENODEV;
 
-	if (arc_pgu_setup_pipe(drm) < 0)
-		return -ENODEV;
+	ret = drm_simple_display_pipe_init(drm, &arcpgu->pipe, &arc_pgu_pipe_funcs,
+					   arc_pgu_supported_formats,
+					   ARRAY_SIZE(arc_pgu_supported_formats),
+					   NULL, NULL);
+	if (ret)
+		return ret;
 
 	/*
 	 * There is only one output port inside each device. It is linked with
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
