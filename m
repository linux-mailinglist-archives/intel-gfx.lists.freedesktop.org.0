Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1822F5F9D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 12:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0951C899E9;
	Thu, 14 Jan 2021 11:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6CA6E243
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 11:15:25 +0000 (UTC)
IronPort-SDR: f1FMKLluAsTBXB2b1oWwek3Civ41SG5SG8pFXBZhndEZoccj164Y4t/NZdj07oQZX8+ackkkeD
 acUNuiPpfM6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="242420451"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="242420451"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:15:25 -0800
IronPort-SDR: SUQMBXdSizLNL4UFRaN9+LpOpo7dSzJf0YGmtdWHJ8JMzMUov8YqvPs9v7rpLFVd/AkcY611QK
 dxGXlCIKSSzQ==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="349132945"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:15:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 13:13:55 +0200
Message-Id: <9fbc056cb9773de6945f07d9318094fb6f5cd10c.1610622609.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610622609.git.jani.nikula@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: migrate i9xx plane get config
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Migrate this code out like the skylake code.

!!! FIXME: Dave's s-o-b !!!

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c    | 119 +++++++++++++++++++
 drivers/gpu/drm/i915/display/i9xx_plane.h    |   4 +
 drivers/gpu/drm/i915/display/intel_display.c | 119 -------------------
 3 files changed, 123 insertions(+), 119 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 6c568079f492..a063a92f04dc 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -698,3 +698,122 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	return ERR_PTR(ret);
 }
 
+static int i9xx_format_to_fourcc(int format)
+{
+	switch (format) {
+	case DISPPLANE_8BPP:
+		return DRM_FORMAT_C8;
+	case DISPPLANE_BGRA555:
+		return DRM_FORMAT_ARGB1555;
+	case DISPPLANE_BGRX555:
+		return DRM_FORMAT_XRGB1555;
+	case DISPPLANE_BGRX565:
+		return DRM_FORMAT_RGB565;
+	default:
+	case DISPPLANE_BGRX888:
+		return DRM_FORMAT_XRGB8888;
+	case DISPPLANE_RGBX888:
+		return DRM_FORMAT_XBGR8888;
+	case DISPPLANE_BGRA888:
+		return DRM_FORMAT_ARGB8888;
+	case DISPPLANE_RGBA888:
+		return DRM_FORMAT_ABGR8888;
+	case DISPPLANE_BGRX101010:
+		return DRM_FORMAT_XRGB2101010;
+	case DISPPLANE_RGBX101010:
+		return DRM_FORMAT_XBGR2101010;
+	case DISPPLANE_BGRA101010:
+		return DRM_FORMAT_ARGB2101010;
+	case DISPPLANE_RGBA101010:
+		return DRM_FORMAT_ABGR2101010;
+	case DISPPLANE_RGBX161616:
+		return DRM_FORMAT_XBGR16161616F;
+	}
+}
+
+void
+i9xx_get_initial_plane_config(struct intel_crtc *crtc,
+			      struct intel_initial_plane_config *plane_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	enum pipe pipe;
+	u32 val, base, offset;
+	int fourcc, pixel_format;
+	unsigned int aligned_height;
+	struct drm_framebuffer *fb;
+	struct intel_framebuffer *intel_fb;
+
+	if (!plane->get_hw_state(plane, &pipe))
+		return;
+
+	drm_WARN_ON(dev, pipe != crtc->pipe);
+
+	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
+	if (!intel_fb) {
+		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
+		return;
+	}
+
+	fb = &intel_fb->base;
+
+	fb->dev = dev;
+
+	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+
+	if (INTEL_GEN(dev_priv) >= 4) {
+		if (val & DISPPLANE_TILED) {
+			plane_config->tiling = I915_TILING_X;
+			fb->modifier = I915_FORMAT_MOD_X_TILED;
+		}
+
+		if (val & DISPPLANE_ROTATE_180)
+			plane_config->rotation = DRM_MODE_ROTATE_180;
+	}
+
+	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
+	    val & DISPPLANE_MIRROR)
+		plane_config->rotation |= DRM_MODE_REFLECT_X;
+
+	pixel_format = val & DISPPLANE_PIXFORMAT_MASK;
+	fourcc = i9xx_format_to_fourcc(pixel_format);
+	fb->format = drm_format_info(fourcc);
+
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+	} else if (INTEL_GEN(dev_priv) >= 4) {
+		if (plane_config->tiling)
+			offset = intel_de_read(dev_priv,
+					       DSPTILEOFF(i9xx_plane));
+		else
+			offset = intel_de_read(dev_priv,
+					       DSPLINOFF(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
+	} else {
+		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
+	}
+	plane_config->base = base;
+
+	val = intel_de_read(dev_priv, PIPESRC(pipe));
+	fb->width = ((val >> 16) & 0xfff) + 1;
+	fb->height = ((val >> 0) & 0xfff) + 1;
+
+	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
+	fb->pitches[0] = val & 0xffffffc0;
+
+	aligned_height = intel_fb_align_height(fb, 0, fb->height);
+
+	plane_config->size = fb->pitches[0] * aligned_height;
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.name, plane->base.name, fb->width, fb->height,
+		    fb->format->cpp[0] * 8, base, fb->pitches[0],
+		    plane_config->size);
+
+	plane_config->fb = intel_fb;
+}
+
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index bc2834a62735..191c312a7e97 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -10,6 +10,8 @@
 
 enum pipe;
 struct drm_i915_private;
+struct intel_crtc;
+struct intel_initial_plane_config;
 struct intel_plane;
 struct intel_plane_state;
 
@@ -21,4 +23,6 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
 struct intel_plane *
 intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
 
+void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
+				   struct intel_initial_plane_config *plane_config);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8abd49cf9c2b..0539357e34b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2162,39 +2162,6 @@ intel_plane_compute_gtt(struct intel_plane_state *plane_state)
 	return intel_plane_check_stride(plane_state);
 }
 
-static int i9xx_format_to_fourcc(int format)
-{
-	switch (format) {
-	case DISPPLANE_8BPP:
-		return DRM_FORMAT_C8;
-	case DISPPLANE_BGRA555:
-		return DRM_FORMAT_ARGB1555;
-	case DISPPLANE_BGRX555:
-		return DRM_FORMAT_XRGB1555;
-	case DISPPLANE_BGRX565:
-		return DRM_FORMAT_RGB565;
-	default:
-	case DISPPLANE_BGRX888:
-		return DRM_FORMAT_XRGB8888;
-	case DISPPLANE_RGBX888:
-		return DRM_FORMAT_XBGR8888;
-	case DISPPLANE_BGRA888:
-		return DRM_FORMAT_ARGB8888;
-	case DISPPLANE_RGBA888:
-		return DRM_FORMAT_ABGR8888;
-	case DISPPLANE_BGRX101010:
-		return DRM_FORMAT_XRGB2101010;
-	case DISPPLANE_RGBX101010:
-		return DRM_FORMAT_XBGR2101010;
-	case DISPPLANE_BGRA101010:
-		return DRM_FORMAT_ARGB2101010;
-	case DISPPLANE_RGBA101010:
-		return DRM_FORMAT_ABGR2101010;
-	case DISPPLANE_RGBX161616:
-		return DRM_FORMAT_XBGR16161616F;
-	}
-}
-
 static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
@@ -5850,92 +5817,6 @@ static void vlv_crtc_clock_get(struct intel_crtc *crtc,
 	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
 
-static void
-i9xx_get_initial_plane_config(struct intel_crtc *crtc,
-			      struct intel_initial_plane_config *plane_config)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	enum pipe pipe;
-	u32 val, base, offset;
-	int fourcc, pixel_format;
-	unsigned int aligned_height;
-	struct drm_framebuffer *fb;
-	struct intel_framebuffer *intel_fb;
-
-	if (!plane->get_hw_state(plane, &pipe))
-		return;
-
-	drm_WARN_ON(dev, pipe != crtc->pipe);
-
-	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
-	if (!intel_fb) {
-		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
-		return;
-	}
-
-	fb = &intel_fb->base;
-
-	fb->dev = dev;
-
-	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
-
-	if (INTEL_GEN(dev_priv) >= 4) {
-		if (val & DISPPLANE_TILED) {
-			plane_config->tiling = I915_TILING_X;
-			fb->modifier = I915_FORMAT_MOD_X_TILED;
-		}
-
-		if (val & DISPPLANE_ROTATE_180)
-			plane_config->rotation = DRM_MODE_ROTATE_180;
-	}
-
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
-	    val & DISPPLANE_MIRROR)
-		plane_config->rotation |= DRM_MODE_REFLECT_X;
-
-	pixel_format = val & DISPPLANE_PIXFORMAT_MASK;
-	fourcc = i9xx_format_to_fourcc(pixel_format);
-	fb->format = drm_format_info(fourcc);
-
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
-	} else if (INTEL_GEN(dev_priv) >= 4) {
-		if (plane_config->tiling)
-			offset = intel_de_read(dev_priv,
-					       DSPTILEOFF(i9xx_plane));
-		else
-			offset = intel_de_read(dev_priv,
-					       DSPLINOFF(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
-	} else {
-		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
-	}
-	plane_config->base = base;
-
-	val = intel_de_read(dev_priv, PIPESRC(pipe));
-	fb->width = ((val >> 16) & 0xfff) + 1;
-	fb->height = ((val >> 0) & 0xfff) + 1;
-
-	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
-	fb->pitches[0] = val & 0xffffffc0;
-
-	aligned_height = intel_fb_align_height(fb, 0, fb->height);
-
-	plane_config->size = fb->pitches[0] * aligned_height;
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		    crtc->base.name, plane->base.name, fb->width, fb->height,
-		    fb->format->cpp[0] * 8, base, fb->pitches[0],
-		    plane_config->size);
-
-	plane_config->fb = intel_fb;
-}
-
 static void chv_crtc_clock_get(struct intel_crtc *crtc,
 			       struct intel_crtc_state *pipe_config)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
