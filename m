Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E12495E69
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2444C10EA85;
	Fri, 21 Jan 2022 11:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B75810EA84
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764643; x=1674300643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LNrcBxV5SEV/mfc6Em4vrqqCHy+F7mG+zYmRxnRq02g=;
 b=O808aKbGmp6OLr9iCKcKt6DCz3Hp3TaybL79FXuRGIOGdYhFKT23QbTx
 kBxvDhDCjV7tXZLkBcKtIwK6m42EXaQqJBoeRrxgymehQ6sT7V8izue5X
 7srPMZ0wIUfB7h+CnUeA7LPUHV8XHKfkY4LAYDw/QIApi1eJ1iZNyLQAY
 gzcg8v+/NpNPWBRnTI9DmHKXWvekRA4eU9C7cDZBEj8TQtn21oHf/opKL
 BhalqDRypoQ3MfpNDPcmi0W4kvXdcOxq2g4N4cJpzTh/LSndNgfOcJtb4
 Uo/+8UkW53L4gkvGJnBYzap5YGVsfA9gTicLhLVf79MrlGXSwSqvxfvEm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245854855"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245854855"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:30:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519039798"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 21 Jan 2022 03:30:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:30:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:31 +0200
Message-Id: <20220121113036.23240-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Clean up pre-skl primary plane
 registers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. for the pre-skl primary plane registers.
Also give everything a consistent namespace.

v2: s/DSP/DISP/ to avoid confusion (José)
    Use DISP_WIDTH rather than DISP_POS_X for DSPSIZE (José)
    Deal with gvt

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c    |  99 +++++++++--------
 drivers/gpu/drm/i915/display/intel_display.c |  13 +--
 drivers/gpu/drm/i915/gvt/display.c           |   4 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c        |  18 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 108 +++++++++++--------
 drivers/gpu/drm/i915/intel_pm.c              |   2 +-
 6 files changed, 128 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index fc6f05146a9f..54f8776ca6b3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -155,51 +155,51 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 	unsigned int rotation = plane_state->hw.rotation;
 	u32 dspcntr;
 
-	dspcntr = DISPLAY_PLANE_ENABLE;
+	dspcntr = DISP_ENABLE;
 
 	if (IS_G4X(dev_priv) || IS_IRONLAKE(dev_priv) ||
 	    IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-		dspcntr |= DISPPLANE_TRICKLE_FEED_DISABLE;
+		dspcntr |= DISP_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
 	case DRM_FORMAT_C8:
-		dspcntr |= DISPPLANE_8BPP;
+		dspcntr |= DISP_FORMAT_8BPP;
 		break;
 	case DRM_FORMAT_XRGB1555:
-		dspcntr |= DISPPLANE_BGRX555;
+		dspcntr |= DISP_FORMAT_BGRX555;
 		break;
 	case DRM_FORMAT_ARGB1555:
-		dspcntr |= DISPPLANE_BGRA555;
+		dspcntr |= DISP_FORMAT_BGRA555;
 		break;
 	case DRM_FORMAT_RGB565:
-		dspcntr |= DISPPLANE_BGRX565;
+		dspcntr |= DISP_FORMAT_BGRX565;
 		break;
 	case DRM_FORMAT_XRGB8888:
-		dspcntr |= DISPPLANE_BGRX888;
+		dspcntr |= DISP_FORMAT_BGRX888;
 		break;
 	case DRM_FORMAT_XBGR8888:
-		dspcntr |= DISPPLANE_RGBX888;
+		dspcntr |= DISP_FORMAT_RGBX888;
 		break;
 	case DRM_FORMAT_ARGB8888:
-		dspcntr |= DISPPLANE_BGRA888;
+		dspcntr |= DISP_FORMAT_BGRA888;
 		break;
 	case DRM_FORMAT_ABGR8888:
-		dspcntr |= DISPPLANE_RGBA888;
+		dspcntr |= DISP_FORMAT_RGBA888;
 		break;
 	case DRM_FORMAT_XRGB2101010:
-		dspcntr |= DISPPLANE_BGRX101010;
+		dspcntr |= DISP_FORMAT_BGRX101010;
 		break;
 	case DRM_FORMAT_XBGR2101010:
-		dspcntr |= DISPPLANE_RGBX101010;
+		dspcntr |= DISP_FORMAT_RGBX101010;
 		break;
 	case DRM_FORMAT_ARGB2101010:
-		dspcntr |= DISPPLANE_BGRA101010;
+		dspcntr |= DISP_FORMAT_BGRA101010;
 		break;
 	case DRM_FORMAT_ABGR2101010:
-		dspcntr |= DISPPLANE_RGBA101010;
+		dspcntr |= DISP_FORMAT_RGBA101010;
 		break;
 	case DRM_FORMAT_XBGR16161616F:
-		dspcntr |= DISPPLANE_RGBX161616;
+		dspcntr |= DISP_FORMAT_RGBX161616;
 		break;
 	default:
 		MISSING_CASE(fb->format->format);
@@ -208,13 +208,13 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 	if (DISPLAY_VER(dev_priv) >= 4 &&
 	    fb->modifier == I915_FORMAT_MOD_X_TILED)
-		dspcntr |= DISPPLANE_TILED;
+		dspcntr |= DISP_TILED;
 
 	if (rotation & DRM_MODE_ROTATE_180)
-		dspcntr |= DISPPLANE_ROTATE_180;
+		dspcntr |= DISP_ROTATE_180;
 
 	if (rotation & DRM_MODE_REFLECT_X)
-		dspcntr |= DISPPLANE_MIRROR;
+		dspcntr |= DISP_MIRROR;
 
 	return dspcntr;
 }
@@ -354,13 +354,13 @@ static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	u32 dspcntr = 0;
 
 	if (crtc_state->gamma_enable)
-		dspcntr |= DISPPLANE_GAMMA_ENABLE;
+		dspcntr |= DISP_PIPE_GAMMA_ENABLE;
 
 	if (crtc_state->csc_enable)
-		dspcntr |= DISPPLANE_PIPE_CSC_ENABLE;
+		dspcntr |= DISP_PIPE_CSC_ENABLE;
 
 	if (DISPLAY_VER(dev_priv) < 5)
-		dspcntr |= DISPPLANE_SEL_PIPE(crtc->pipe);
+		dspcntr |= DISP_PIPE_SEL(crtc->pipe);
 
 	return dspcntr;
 }
@@ -437,9 +437,9 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 		 * program whatever is there.
 		 */
 		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
-				  (crtc_y << 16) | crtc_x);
+				  DISP_POS_Y(crtc_y) | DISP_POS_X(crtc_x));
 		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
-				  ((crtc_h - 1) << 16) | (crtc_w - 1));
+				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
 	}
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -474,20 +474,20 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
 
 		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
-				  (crtc_y << 16) | crtc_x);
+				  PRIM_POS_Y(crtc_y) | PRIM_POS_X(crtc_x));
 		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
-				  ((crtc_h - 1) << 16) | (crtc_w - 1));
+				  PRIM_HEIGHT(crtc_h - 1) | PRIM_WIDTH(crtc_w - 1));
 		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
-				  (y << 16) | x);
+				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
 				  linear_offset);
 		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
-				  (y << 16) | x);
+				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	}
 
 	/*
@@ -564,7 +564,7 @@ g4x_primary_async_flip(struct intel_plane *plane,
 	unsigned long irqflags;
 
 	if (async_flip)
-		dspcntr |= DISPPLANE_ASYNC_FLIP;
+		dspcntr |= DISP_ASYNC_FLIP;
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
@@ -696,13 +696,12 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 
 	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
-	ret = val & DISPLAY_PLANE_ENABLE;
+	ret = val & DISP_ENABLE;
 
 	if (DISPLAY_VER(dev_priv) >= 5)
 		*pipe = plane->pipe;
 	else
-		*pipe = (val & DISPPLANE_SEL_PIPE_MASK) >>
-			DISPPLANE_SEL_PIPE_SHIFT;
+		*pipe = REG_FIELD_GET(DISP_PIPE_SEL_MASK, val);
 
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 
@@ -958,32 +957,32 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 static int i9xx_format_to_fourcc(int format)
 {
 	switch (format) {
-	case DISPPLANE_8BPP:
+	case DISP_FORMAT_8BPP:
 		return DRM_FORMAT_C8;
-	case DISPPLANE_BGRA555:
+	case DISP_FORMAT_BGRA555:
 		return DRM_FORMAT_ARGB1555;
-	case DISPPLANE_BGRX555:
+	case DISP_FORMAT_BGRX555:
 		return DRM_FORMAT_XRGB1555;
-	case DISPPLANE_BGRX565:
+	case DISP_FORMAT_BGRX565:
 		return DRM_FORMAT_RGB565;
 	default:
-	case DISPPLANE_BGRX888:
+	case DISP_FORMAT_BGRX888:
 		return DRM_FORMAT_XRGB8888;
-	case DISPPLANE_RGBX888:
+	case DISP_FORMAT_RGBX888:
 		return DRM_FORMAT_XBGR8888;
-	case DISPPLANE_BGRA888:
+	case DISP_FORMAT_BGRA888:
 		return DRM_FORMAT_ARGB8888;
-	case DISPPLANE_RGBA888:
+	case DISP_FORMAT_RGBA888:
 		return DRM_FORMAT_ABGR8888;
-	case DISPPLANE_BGRX101010:
+	case DISP_FORMAT_BGRX101010:
 		return DRM_FORMAT_XRGB2101010;
-	case DISPPLANE_RGBX101010:
+	case DISP_FORMAT_RGBX101010:
 		return DRM_FORMAT_XBGR2101010;
-	case DISPPLANE_BGRA101010:
+	case DISP_FORMAT_BGRA101010:
 		return DRM_FORMAT_ARGB2101010;
-	case DISPPLANE_RGBA101010:
+	case DISP_FORMAT_RGBA101010:
 		return DRM_FORMAT_ABGR2101010;
-	case DISPPLANE_RGBX161616:
+	case DISP_FORMAT_RGBX161616:
 		return DRM_FORMAT_XBGR16161616F;
 	}
 }
@@ -1021,26 +1020,26 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		if (val & DISPPLANE_TILED) {
+		if (val & DISP_TILED) {
 			plane_config->tiling = I915_TILING_X;
 			fb->modifier = I915_FORMAT_MOD_X_TILED;
 		}
 
-		if (val & DISPPLANE_ROTATE_180)
+		if (val & DISP_ROTATE_180)
 			plane_config->rotation = DRM_MODE_ROTATE_180;
 	}
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
-	    val & DISPPLANE_MIRROR)
+	    val & DISP_MIRROR)
 		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
-	pixel_format = val & DISPPLANE_PIXFORMAT_MASK;
+	pixel_format = val & DISP_FORMAT_MASK;
 	fourcc = i9xx_format_to_fourcc(pixel_format);
 	fb->format = drm_format_info(fourcc);
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		if (plane_config->tiling)
 			offset = intel_de_read(dev_priv,
@@ -1048,7 +1047,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 		else
 			offset = intel_de_read(dev_priv,
 					       DSPLINOFF(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
 		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0964b2403e2d..750aa22ec0a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3543,11 +3543,11 @@ static void i9xx_get_pipe_color_config(struct intel_crtc_state *crtc_state)
 
 	tmp = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
-	if (tmp & DISPPLANE_GAMMA_ENABLE)
+	if (tmp & DISP_PIPE_GAMMA_ENABLE)
 		crtc_state->gamma_enable = true;
 
 	if (!HAS_GMCH(dev_priv) &&
-	    tmp & DISPPLANE_PIPE_CSC_ENABLE)
+	    tmp & DISP_PIPE_CSC_ENABLE)
 		crtc_state->csc_enable = true;
 }
 
@@ -9995,14 +9995,11 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		    pipe_name(pipe));
 
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_A)) &
-		    DISPLAY_PLANE_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(PLANE_A)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_B)) &
-		    DISPLAY_PLANE_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(PLANE_B)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_C)) &
-		    DISPLAY_PLANE_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(PLANE_C)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, CURCNTR(PIPE_A)) & MCURSOR_MODE_MASK);
 	drm_WARN_ON(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 8ce5d2b2e330..4d66fb5fb29f 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -185,7 +185,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		for_each_pipe(dev_priv, pipe) {
 			vgpu_vreg_t(vgpu, PIPECONF(pipe)) &=
 				~(PIPECONF_ENABLE | I965_PIPECONF_ACTIVE);
-			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
+			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
 			vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE_MASK;
 			vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
@@ -496,7 +496,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 
 	/* Disable Primary/Sprite/Cursor plane */
 	for_each_pipe(dev_priv, pipe) {
-		vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
+		vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
 		vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
 		vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE_MASK;
 		vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 40ace46bad46..f2a216347d77 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -83,22 +83,22 @@ static int bdw_format_to_drm(int format)
 	int bdw_pixel_formats_index = 6;
 
 	switch (format) {
-	case DISPPLANE_8BPP:
+	case DISP_FORMAT_8BPP:
 		bdw_pixel_formats_index = 0;
 		break;
-	case DISPPLANE_BGRX565:
+	case DISP_FORMAT_BGRX565:
 		bdw_pixel_formats_index = 1;
 		break;
-	case DISPPLANE_BGRX888:
+	case DISP_FORMAT_BGRX888:
 		bdw_pixel_formats_index = 2;
 		break;
-	case DISPPLANE_RGBX101010:
+	case DISP_FORMAT_RGBX101010:
 		bdw_pixel_formats_index = 3;
 		break;
-	case DISPPLANE_BGRX101010:
+	case DISP_FORMAT_BGRX101010:
 		bdw_pixel_formats_index = 4;
 		break;
-	case DISPPLANE_RGBX888:
+	case DISP_FORMAT_RGBX888:
 		bdw_pixel_formats_index = 5;
 		break;
 
@@ -211,7 +211,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 		return -ENODEV;
 
 	val = vgpu_vreg_t(vgpu, DSPCNTR(pipe));
-	plane->enabled = !!(val & DISPLAY_PLANE_ENABLE);
+	plane->enabled = !!(val & DISP_ENABLE);
 	if (!plane->enabled)
 		return -ENODEV;
 
@@ -231,8 +231,8 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 		plane->bpp = skl_pixel_formats[fmt].bpp;
 		plane->drm_format = skl_pixel_formats[fmt].drm_format;
 	} else {
-		plane->tiled = val & DISPPLANE_TILED;
-		fmt = bdw_format_to_drm(val & DISPPLANE_PIXFORMAT_MASK);
+		plane->tiled = val & DISP_TILED;
+		fmt = bdw_format_to_drm(val & DISP_FORMAT_MASK);
 		plane->bpp = bdw_pixel_formats[fmt].bpp;
 		plane->drm_format = bdw_pixel_formats[fmt].drm_format;
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 460bce5c544d..1328d00ddfe8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5900,49 +5900,54 @@ enum {
 /* Display A control */
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
 #define _DSPACNTR				0x70180
-#define   DISPLAY_PLANE_ENABLE			(1 << 31)
-#define   DISPLAY_PLANE_DISABLE			0
-#define   DISPPLANE_GAMMA_ENABLE		(1 << 30)
-#define   DISPPLANE_GAMMA_DISABLE		0
-#define   DISPPLANE_PIXFORMAT_MASK		(0xf << 26)
-#define   DISPPLANE_YUV422			(0x0 << 26)
-#define   DISPPLANE_8BPP			(0x2 << 26)
-#define   DISPPLANE_BGRA555			(0x3 << 26)
-#define   DISPPLANE_BGRX555			(0x4 << 26)
-#define   DISPPLANE_BGRX565			(0x5 << 26)
-#define   DISPPLANE_BGRX888			(0x6 << 26)
-#define   DISPPLANE_BGRA888			(0x7 << 26)
-#define   DISPPLANE_RGBX101010			(0x8 << 26)
-#define   DISPPLANE_RGBA101010			(0x9 << 26)
-#define   DISPPLANE_BGRX101010			(0xa << 26)
-#define   DISPPLANE_BGRA101010			(0xb << 26)
-#define   DISPPLANE_RGBX161616			(0xc << 26)
-#define   DISPPLANE_RGBX888			(0xe << 26)
-#define   DISPPLANE_RGBA888			(0xf << 26)
-#define   DISPPLANE_STEREO_ENABLE		(1 << 25)
-#define   DISPPLANE_STEREO_DISABLE		0
-#define   DISPPLANE_PIPE_CSC_ENABLE		(1 << 24) /* ilk+ */
-#define   DISPPLANE_SEL_PIPE_SHIFT		24
-#define   DISPPLANE_SEL_PIPE_MASK		(3 << DISPPLANE_SEL_PIPE_SHIFT)
-#define   DISPPLANE_SEL_PIPE(pipe)		((pipe) << DISPPLANE_SEL_PIPE_SHIFT)
-#define   DISPPLANE_SRC_KEY_ENABLE		(1 << 22)
-#define   DISPPLANE_SRC_KEY_DISABLE		0
-#define   DISPPLANE_LINE_DOUBLE			(1 << 20)
-#define   DISPPLANE_NO_LINE_DOUBLE		0
-#define   DISPPLANE_STEREO_POLARITY_FIRST	0
-#define   DISPPLANE_STEREO_POLARITY_SECOND	(1 << 18)
-#define   DISPPLANE_ALPHA_PREMULTIPLY		(1 << 16) /* CHV pipe B */
-#define   DISPPLANE_ROTATE_180			(1 << 15)
-#define   DISPPLANE_TRICKLE_FEED_DISABLE	(1 << 14) /* Ironlake */
-#define   DISPPLANE_TILED			(1 << 10)
-#define   DISPPLANE_ASYNC_FLIP			(1 << 9) /* g4x+ */
-#define   DISPPLANE_MIRROR			(1 << 8) /* CHV pipe B */
+#define   DISP_ENABLE			REG_BIT(31)
+#define   DISP_PIPE_GAMMA_ENABLE	REG_BIT(30)
+#define   DISP_FORMAT_MASK		REG_GENMASK(29, 26)
+#define   DISP_FORMAT_8BPP		REG_FIELD_PREP(DISP_FORMAT_MASK, 2)
+#define   DISP_FORMAT_BGRA555		REG_FIELD_PREP(DISP_FORMAT_MASK, 3)
+#define   DISP_FORMAT_BGRX555		REG_FIELD_PREP(DISP_FORMAT_MASK, 4)
+#define   DISP_FORMAT_BGRX565		REG_FIELD_PREP(DISP_FORMAT_MASK, 5)
+#define   DISP_FORMAT_BGRX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 6)
+#define   DISP_FORMAT_BGRA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 7)
+#define   DISP_FORMAT_RGBX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 8)
+#define   DISP_FORMAT_RGBA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 9)
+#define   DISP_FORMAT_BGRX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 10)
+#define   DISP_FORMAT_BGRA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 11)
+#define   DISP_FORMAT_RGBX161616	REG_FIELD_PREP(DISP_FORMAT_MASK, 12)
+#define   DISP_FORMAT_RGBX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 14)
+#define   DISP_FORMAT_RGBA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 15)
+#define   DISP_STEREO_ENABLE		REG_BIT(25)
+#define   DISP_PIPE_CSC_ENABLE		REG_BIT(24) /* ilk+ */
+#define   DISP_PIPE_SEL_MASK		REG_GENMASK(25, 24)
+#define   DISP_PIPE_SEL(pipe)		REG_FIELD_PREP(DISP_PIPE_SEL_MASK, (pipe))
+#define   DISP_SRC_KEY_ENABLE		REG_BIT(22)
+#define   DISP_LINE_DOUBLE		REG_BIT(20)
+#define   DISP_STEREO_POLARITY_SECOND	REG_BIT(18)
+#define   DISP_ALPHA_PREMULTIPLY	REG_BIT(16) /* CHV pipe B */
+#define   DISP_ROTATE_180		REG_BIT(15)
+#define   DISP_TRICKLE_FEED_DISABLE	REG_BIT(14) /* g4x+ */
+#define   DISP_TILED			REG_BIT(10)
+#define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
+#define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
 #define _DSPAADDR				0x70184
 #define _DSPASTRIDE				0x70188
 #define _DSPAPOS				0x7018C /* reserved */
+#define   DISP_POS_Y_MASK		REG_GENMASK(31, 0)
+#define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
+#define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
+#define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
 #define _DSPASIZE				0x70190
+#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 0)
+#define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
+#define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
+#define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
 #define _DSPASURF				0x7019C /* 965+ only */
+#define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
 #define _DSPATILEOFF				0x701A4 /* 965+ only */
+#define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
+#define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
 #define _DSPAOFFSET				0x701A4 /* HSW */
 #define _DSPASURFLIVE				0x701AC
 #define _DSPAGAMC				0x701E0
@@ -5962,15 +5967,28 @@ enum {
 
 /* CHV pipe B blender and primary plane */
 #define _CHV_BLEND_A		0x60a00
-#define   CHV_BLEND_LEGACY		(0 << 30)
-#define   CHV_BLEND_ANDROID		(1 << 30)
-#define   CHV_BLEND_MPO			(2 << 30)
-#define   CHV_BLEND_MASK		(3 << 30)
+#define   CHV_BLEND_MASK	REG_GENMASK(31, 30)
+#define   CHV_BLEND_LEGACY	REG_FIELD_PREP(CHV_BLEND_MASK, 0)
+#define   CHV_BLEND_ANDROID	REG_FIELD_PREP(CHV_BLEND_MASK, 1)
+#define   CHV_BLEND_MPO		REG_FIELD_PREP(CHV_BLEND_MASK, 2)
 #define _CHV_CANVAS_A		0x60a04
+#define   CHV_CANVAS_RED_MASK	REG_GENMASK(29, 20)
+#define   CHV_CANVAS_GREEN_MASK	REG_GENMASK(19, 10)
+#define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
 #define _PRIMPOS_A		0x60a08
+#define   PRIM_POS_Y_MASK	REG_GENMASK(31, 16)
+#define   PRIM_POS_Y(y)		REG_FIELD_PREP(PRIM_POS_Y_MASK, (y))
+#define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
+#define   PRIM_POS_X(x)		REG_FIELD_PREP(PRIM_POS_X_MASK, (x))
 #define _PRIMSIZE_A		0x60a0c
+#define   PRIM_HEIGHT_MASK	REG_GENMASK(31, 16)
+#define   PRIM_HEIGHT(h)	REG_FIELD_PREP(PRIM_HEIGHT_MASK, (h))
+#define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
+#define   PRIM_WIDTH(w)		REG_FIELD_PREP(PRIM_WIDTH_MASK, (w))
 #define _PRIMCNSTALPHA_A	0x60a10
-#define   PRIM_CONST_ALPHA_ENABLE	(1 << 31)
+#define   PRIM_CONST_ALPHA_ENABLE	REG_BIT(31)
+#define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
+#define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
 
 #define CHV_BLEND(pipe)		_MMIO_TRANS2(pipe, _CHV_BLEND_A)
 #define CHV_CANVAS(pipe)	_MMIO_TRANS2(pipe, _CHV_CANVAS_A)
@@ -6011,10 +6029,8 @@ enum {
 
 /* Display B control */
 #define _DSPBCNTR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
-#define   DISPPLANE_ALPHA_TRANS_ENABLE		(1 << 15)
-#define   DISPPLANE_ALPHA_TRANS_DISABLE		0
-#define   DISPPLANE_SPRITE_ABOVE_DISPLAY	0
-#define   DISPPLANE_SPRITE_ABOVE_OVERLAY	(1)
+#define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
+#define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
 #define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
 #define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
 #define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2ec8e48806b6..c2bb9945f7be 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7208,7 +7208,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe) {
 		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
 			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
-			   DISPPLANE_TRICKLE_FEED_DISABLE);
+			   DISP_TRICKLE_FEED_DISABLE);
 
 		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));
 		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
-- 
2.32.0

