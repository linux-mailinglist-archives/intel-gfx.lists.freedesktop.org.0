Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7113AA2B1C5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BFF10E91C;
	Thu,  6 Feb 2025 18:56:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNu+cMXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601F510E928;
 Thu,  6 Feb 2025 18:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868167; x=1770404167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=syQ+QdqmCxnXSnw9UOWguE9EN1Z1i7B33RCptNGFqLo=;
 b=HNu+cMXztNArOtbu4baISg3kHczp9o8wG9UqzhG0T/C4sEVwsHripfi1
 uyr6ewo1BpuzdPX3zQAWmBhOtn4jlPsODa25Dlm6EZ1h2MwXLi+ugZD3V
 EHr4ht+8upwuZ9NSyefjlTVjaXxRf6LWGb5ZhCeytAEch/Qaod5QeZ7u/
 xqLbLBW3hSu1EnSZKBCaYBsiP6bOMEsErYy0qPCWCmKsbtsYcLr/HNqSm
 ubARpGPZn45Di4bwXZ9UygremBd7xShDzIUAa2oPIIPiJ9FGlyW33k/6L
 hPwJbmkS96Jb47zjjo/vKibCaHoI11jAgJH6wFFYRnkv3SpAM6kqDxjWI A==;
X-CSE-ConnectionGUID: QEW/eDCkTiqwf9AnEextJQ==
X-CSE-MsgGUID: jVWFEyvWThaz4D9k7eIPdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395066"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395066"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:56:07 -0800
X-CSE-ConnectionGUID: AnHpFdxhSx64ZeuDMvchGQ==
X-CSE-MsgGUID: 1L+hd+AQR4mQHLvNi/12nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:56:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:56:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/12] drm/i915: Convert intel_cursor.c to struct
 intel_display
Date: Thu,  6 Feb 2025 20:55:30 +0200
Message-ID: <20250206185533.32306-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the cursor code to
use it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c | 136 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_cursor.h |   4 +-
 3 files changed, 66 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 7279e064a565..2dc495659563 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -344,7 +344,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 		crtc->plane_ids_mask |= BIT(plane->id);
 	}
 
-	cursor = intel_cursor_plane_create(dev_priv, pipe);
+	cursor = intel_cursor_plane_create(display, pipe);
 	if (IS_ERR(cursor)) {
 		ret = PTR_ERR(cursor);
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 6a0d563174cf..4cd48d54164d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -35,11 +35,10 @@ static const u32 intel_cursor_formats[] = {
 
 static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	u32 base;
 
-	if (DISPLAY_INFO(dev_priv)->cursor_needs_physical)
+	if (DISPLAY_INFO(display)->cursor_needs_physical)
 		base = plane_state->phys_dma_addr;
 	else
 		base = intel_plane_ggtt_offset(plane_state);
@@ -92,8 +91,7 @@ static bool intel_cursor_size_ok(const struct intel_plane_state *plane_state)
 
 static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int rotation = plane_state->hw.rotation;
 	int src_x, src_y;
 	u32 offset;
@@ -114,7 +112,7 @@ static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 						    plane_state, 0);
 
 	if (src_x != 0 || src_y != 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Arbitrary cursor panning not supported\n");
 		return -EINVAL;
 	}
@@ -127,7 +125,7 @@ static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 			      src_x << 16, src_y << 16);
 
 	/* ILK+ do this automagically in hardware */
-	if (HAS_GMCH(dev_priv) && rotation & DRM_MODE_ROTATE_180) {
+	if (HAS_GMCH(display) && rotation & DRM_MODE_ROTATE_180) {
 		const struct drm_framebuffer *fb = plane_state->hw.fb;
 		int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 		int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
@@ -145,14 +143,14 @@ static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_rect src = plane_state->uapi.src;
 	const struct drm_rect dst = plane_state->uapi.dst;
 	int ret;
 
 	if (fb && fb->modifier != DRM_FORMAT_MOD_LINEAR) {
-		drm_dbg_kms(&i915->drm, "cursor cannot be tiled\n");
+		drm_dbg_kms(display->drm, "cursor cannot be tiled\n");
 		return -EINVAL;
 	}
 
@@ -233,8 +231,8 @@ static bool i845_cursor_size_ok(const struct intel_plane_state *plane_state)
 static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 			     struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	int ret;
 
 	ret = intel_check_cursor(crtc_state, plane_state);
@@ -247,14 +245,14 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 
 	/* Check for which cursor types we support */
 	if (!i845_cursor_size_ok(plane_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Cursor dimension %dx%d not supported\n",
 			    drm_rect_width(&plane_state->uapi.dst),
 			    drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
-	drm_WARN_ON(&i915->drm, plane_state->uapi.visible &&
+	drm_WARN_ON(display->drm, plane_state->uapi.visible &&
 		    plane_state->view.color_plane[0].mapping_stride != fb->pitches[0]);
 
 	switch (fb->pitches[0]) {
@@ -264,7 +262,7 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	case 2048:
 		break;
 	default:
-		 drm_dbg_kms(&i915->drm, "Invalid cursor stride (%u)\n",
+		 drm_dbg_kms(display->drm, "Invalid cursor stride (%u)\n",
 			     fb->pitches[0]);
 		return -EINVAL;
 	}
@@ -280,7 +278,7 @@ static void i845_cursor_update_arm(struct intel_dsb *dsb,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	u32 cntl = 0, base = 0, pos = 0, size = 0;
 
 	if (plane_state && plane_state->uapi.visible) {
@@ -302,17 +300,17 @@ static void i845_cursor_update_arm(struct intel_dsb *dsb,
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != size ||
 	    plane->cursor.cntl != cntl) {
-		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), 0);
-		intel_de_write_fw(dev_priv, CURBASE(dev_priv, PIPE_A), base);
-		intel_de_write_fw(dev_priv, CURSIZE(dev_priv, PIPE_A), size);
-		intel_de_write_fw(dev_priv, CURPOS(dev_priv, PIPE_A), pos);
-		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), cntl);
+		intel_de_write_fw(display, CURCNTR(display, PIPE_A), 0);
+		intel_de_write_fw(display, CURBASE(display, PIPE_A), base);
+		intel_de_write_fw(display, CURSIZE(display, PIPE_A), size);
+		intel_de_write_fw(display, CURPOS(display, PIPE_A), pos);
+		intel_de_write_fw(display, CURCNTR(display, PIPE_A), cntl);
 
 		plane->cursor.base = base;
 		plane->cursor.size = size;
 		plane->cursor.cntl = cntl;
 	} else {
-		intel_de_write_fw(dev_priv, CURPOS(dev_priv, PIPE_A), pos);
+		intel_de_write_fw(display, CURPOS(display, PIPE_A), pos);
 	}
 }
 
@@ -327,7 +325,6 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 				     enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -337,7 +334,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & CURSOR_ENABLE;
+	ret = intel_de_read(display, CURCNTR(display, PIPE_A)) & CURSOR_ENABLE;
 
 	*pipe = PIPE_A;
 
@@ -383,11 +380,11 @@ static unsigned int i9xx_cursor_min_alignment(struct intel_plane *plane,
 
 static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 cntl = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		return cntl;
 
 	if (crtc_state->gamma_enable)
@@ -396,7 +393,7 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable)
 		cntl |= MCURSOR_PIPE_CSC_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
+	if (DISPLAY_VER(display) < 5 && !display->platform.g4x)
 		cntl |= MCURSOR_PIPE_SEL(crtc->pipe);
 
 	return cntl;
@@ -405,11 +402,10 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	u32 cntl = 0;
 
-	if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
+	if (display->platform.sandybridge || display->platform.ivybridge)
 		cntl |= MCURSOR_TRICKLE_FEED_DISABLE;
 
 	switch (drm_rect_width(&plane_state->uapi.dst)) {
@@ -431,7 +427,7 @@ static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
 		cntl |= MCURSOR_ROTATE_180;
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(dev_priv) == 13)
+	if (DISPLAY_VER(display) == 13)
 		cntl |= MCURSOR_ARB_SLOTS(1);
 
 	return cntl;
@@ -439,8 +435,7 @@ static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
 
 static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	int width = drm_rect_width(&plane_state->uapi.dst);
 	int height = drm_rect_height(&plane_state->uapi.dst);
 
@@ -463,7 +458,7 @@ static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_state)
 	 * cursor is not rotated. Everything else requires square
 	 * cursors.
 	 */
-	if (HAS_CUR_FBC(dev_priv) &&
+	if (HAS_CUR_FBC(display) &&
 	    plane_state->hw.rotation & DRM_MODE_ROTATE_0) {
 		if (height < 8 || height > width)
 			return false;
@@ -478,8 +473,8 @@ static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_state)
 static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 			     struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	int ret;
@@ -494,19 +489,19 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 
 	/* Check for which cursor types we support */
 	if (!i9xx_cursor_size_ok(plane_state)) {
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Cursor dimension %dx%d not supported\n",
 			drm_rect_width(&plane_state->uapi.dst),
 			drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, plane_state->uapi.visible &&
+	drm_WARN_ON(display->drm, plane_state->uapi.visible &&
 		    plane_state->view.color_plane[0].mapping_stride != fb->pitches[0]);
 
 	if (fb->pitches[0] !=
 	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Invalid cursor stride (%u) (cursor width %d)\n",
 			    fb->pitches[0],
 			    drm_rect_width(&plane_state->uapi.dst));
@@ -523,9 +518,9 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	 * display power well must be turned off and on again.
 	 * Refuse the put the cursor into that compromised position.
 	 */
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_C &&
+	if (display->platform.cherryview && pipe == PIPE_C &&
 	    plane_state->uapi.visible && plane_state->uapi.dst.x1 < 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "CHV cursor C not allowed to straddle the left screen edge\n");
 		return -EINVAL;
 	}
@@ -539,7 +534,7 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_dsb *dsb,
 					      struct intel_plane *plane,
 					      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -553,8 +548,7 @@ static void wa_16021440873(struct intel_dsb *dsb,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	u32 ctl = plane_state->ctl;
 	int et_y_position = drm_rect_height(&crtc_state->pipe_src) + 1;
 	enum pipe pipe = plane->pipe;
@@ -564,7 +558,7 @@ static void wa_16021440873(struct intel_dsb *dsb,
 
 	intel_de_write_dsb(display, dsb, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(dev_priv, pipe),
+	intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(display, pipe),
 			   CURSOR_POS_Y(et_y_position));
 }
 
@@ -573,8 +567,7 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_dsb *dsb,
 					     const struct intel_crtc_state *crtc_state,
 					     const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -585,7 +578,7 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_dsb *dsb,
 			u32 val = intel_cursor_position(crtc_state, plane_state,
 				true);
 
-			intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(dev_priv, pipe), val);
+			intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(display, pipe), val);
 		}
 
 		intel_de_write_dsb(display, dsb, SEL_FETCH_CUR_CTL(pipe), plane_state->ctl);
@@ -659,8 +652,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	u32 cntl = 0, base = 0, pos = 0, fbc_ctl = 0;
 
@@ -698,7 +690,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 	 * the CURCNTR write arms the update.
 	 */
 
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		skl_write_cursor_wm(dsb, plane, crtc_state);
 
 	if (plane_state)
@@ -709,18 +701,18 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != fbc_ctl ||
 	    plane->cursor.cntl != cntl) {
-		if (HAS_CUR_FBC(dev_priv))
-			intel_de_write_dsb(display, dsb, CUR_FBC_CTL(dev_priv, pipe), fbc_ctl);
-		intel_de_write_dsb(display, dsb, CURCNTR(dev_priv, pipe), cntl);
-		intel_de_write_dsb(display, dsb, CURPOS(dev_priv, pipe), pos);
-		intel_de_write_dsb(display, dsb, CURBASE(dev_priv, pipe), base);
+		if (HAS_CUR_FBC(display))
+			intel_de_write_dsb(display, dsb, CUR_FBC_CTL(display, pipe), fbc_ctl);
+		intel_de_write_dsb(display, dsb, CURCNTR(display, pipe), cntl);
+		intel_de_write_dsb(display, dsb, CURPOS(display, pipe), pos);
+		intel_de_write_dsb(display, dsb, CURBASE(display, pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
-		intel_de_write_dsb(display, dsb, CURPOS(dev_priv, pipe), pos);
-		intel_de_write_dsb(display, dsb, CURBASE(dev_priv, pipe), base);
+		intel_de_write_dsb(display, dsb, CURPOS(display, pipe), pos);
+		intel_de_write_dsb(display, dsb, CURBASE(display, pipe), base);
 	}
 }
 
@@ -735,7 +727,6 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 				     enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -751,11 +742,11 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, CURCNTR(dev_priv, plane->pipe));
+	val = intel_de_read(display, CURCNTR(display, plane->pipe));
 
 	ret = val & MCURSOR_MODE_MASK;
 
-	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		*pipe = plane->pipe;
 	else
 		*pipe = REG_FIELD_GET(MCURSOR_PIPE_SEL_MASK, val);
@@ -797,7 +788,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 {
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(plane->base.state);
 	struct intel_plane_state *new_plane_state;
@@ -901,7 +892,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_lock(crtc_state);
 
-	if (!drm_WARN_ON(&i915->drm, drm_crtc_vblank_get(&crtc->base))) {
+	if (!drm_WARN_ON(display->drm, drm_crtc_vblank_get(&crtc->base))) {
 		/*
 		 * TODO: maybe check if we're still in PSR
 		 * and skip the vblank evasion entirely?
@@ -967,8 +958,8 @@ static const struct drm_plane_funcs intel_cursor_plane_funcs = {
 
 static void intel_cursor_add_size_hints_property(struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	const struct drm_mode_config *config = &i915->drm.mode_config;
+	struct intel_display *display = to_intel_display(plane);
+	const struct drm_mode_config *config = &display->drm->mode_config;
 	struct drm_plane_size_hint hints[4];
 	int size, max_size, num_hints = 0;
 
@@ -976,7 +967,7 @@ static void intel_cursor_add_size_hints_property(struct intel_plane *plane)
 
 	/* for simplicity only enumerate the supported square+POT sizes */
 	for (size = 64; size <= max_size; size *= 2) {
-		if (drm_WARN_ON(&i915->drm, num_hints >= ARRAY_SIZE(hints)))
+		if (drm_WARN_ON(display->drm, num_hints >= ARRAY_SIZE(hints)))
 			break;
 
 		hints[num_hints].width = size;
@@ -988,10 +979,9 @@ static void intel_cursor_add_size_hints_property(struct intel_plane *plane)
 }
 
 struct intel_plane *
-intel_cursor_plane_create(struct drm_i915_private *dev_priv,
+intel_cursor_plane_create(struct intel_display *display,
 			  enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *cursor;
 	int ret, zpos;
 	u64 *modifiers;
@@ -1005,7 +995,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	cursor->id = PLANE_CURSOR;
 	cursor->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, cursor->id);
 
-	if (IS_I845G(dev_priv) || IS_I865G(dev_priv)) {
+	if (display->platform.i845g || display->platform.i865g) {
 		cursor->max_stride = i845_cursor_max_stride;
 		cursor->min_alignment = i845_cursor_min_alignment;
 		cursor->update_arm = i845_cursor_update_arm;
@@ -1015,9 +1005,9 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	} else {
 		cursor->max_stride = i9xx_cursor_max_stride;
 
-		if (IS_I830(dev_priv))
+		if (display->platform.i830)
 			cursor->min_alignment = i830_cursor_min_alignment;
-		else if (IS_I85X(dev_priv))
+		else if (display->platform.i85x)
 			cursor->min_alignment = i85x_cursor_min_alignment;
 		else
 			cursor->min_alignment = i9xx_cursor_min_alignment;
@@ -1034,12 +1024,12 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	cursor->cursor.base = ~0;
 	cursor->cursor.cntl = ~0;
 
-	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
+	if (display->platform.i845g || display->platform.i865g || HAS_CUR_FBC(display))
 		cursor->cursor.size = ~0;
 
 	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_NONE);
 
-	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
+	ret = drm_universal_plane_init(display->drm, &cursor->base,
 				       0, &intel_cursor_plane_funcs,
 				       intel_cursor_formats,
 				       ARRAY_SIZE(intel_cursor_formats),
@@ -1052,7 +1042,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	if (ret)
 		goto fail;
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		drm_plane_create_rotation_property(&cursor->base,
 						   DRM_MODE_ROTATE_0,
 						   DRM_MODE_ROTATE_0 |
@@ -1060,10 +1050,10 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 
 	intel_cursor_add_size_hints_property(cursor);
 
-	zpos = DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
+	zpos = DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		drm_plane_enable_fb_damage_clips(&cursor->base);
 
 	intel_plane_helper_add(cursor);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.h b/drivers/gpu/drm/i915/display/intel_cursor.h
index e2d9ec710a86..65a9e7eb88c2 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor.h
@@ -7,12 +7,12 @@
 #define _INTEL_CURSOR_H_
 
 enum pipe;
-struct drm_i915_private;
+struct intel_display;
 struct intel_plane;
 struct kthread_work;
 
 struct intel_plane *
-intel_cursor_plane_create(struct drm_i915_private *dev_priv,
+intel_cursor_plane_create(struct intel_display *display,
 			  enum pipe pipe);
 
 void intel_cursor_unpin_work(struct kthread_work *base);
-- 
2.45.3

