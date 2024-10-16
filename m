Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D839A0CAD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6CD10E727;
	Wed, 16 Oct 2024 14:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dnJLwo5J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB7F10E722
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089120; x=1760625120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3xUrPVgxZqGUg3wifGitG5AF+iF59OchKv0tIqour1g=;
 b=dnJLwo5JXz7mpNvyR0kp9eNVoaVwAVZz6Wwp7RrzhGNrk8j4u1G5mWX2
 WVZJtGkFmyOzqgy9DhJK/BA/YbLvZ36pNvfngq1xxvVEQb0Olnsb1qkA5
 esnQHKHLpFCmmTOnqIXko5htNAcu2AjOYCdloNNN2RFcvpQ4HN4EEtp8h
 O8rhGTVELolltHwjh1qLtuMElmSFoGrd+OrWDrP+MKZMW3tdn4z+4L9b/
 KXqxjt6EiaZJSrn+SSggf5IfsPU/s2TZV5PF4wa+ySVyN3MvV1NTIkwc5
 D+AgyEBT1hrB2oIEofF7rDGcwueKceWa/972uE+gdRQCaf9VuZO41SovE g==;
X-CSE-ConnectionGUID: NC9qA/ZNSvSYCCZ9duSK5Q==
X-CSE-MsgGUID: zUYu4pFKQguBvIpG5LtzYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630738"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630738"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:59 -0700
X-CSE-ConnectionGUID: 1QYIJgHyQrmXiEZH5MN/gA==
X-CSE-MsgGUID: rzRVZHKjQ++HvT3tqRUTEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288402"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/pfit: Extract intel_pfit.c
Date: Wed, 16 Oct 2024 17:31:33 +0300
Message-ID: <20241016143134.26903-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

The panel fitter code doesn't really have much to do with the
rest of intel_panel.c, so extract it all into its own file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/icl_dsi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c    |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c  |   1 +
 drivers/gpu/drm/i915/display/intel_lvds.c  |   1 +
 drivers/gpu/drm/i915/display/intel_panel.c | 546 +-------------------
 drivers/gpu/drm/i915/display/intel_panel.h |   2 -
 drivers/gpu/drm/i915/display/intel_pfit.c  | 554 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h  |  15 +
 drivers/gpu/drm/i915/display/vlv_dsi.c     |   1 +
 drivers/gpu/drm/xe/Makefile                |   1 +
 11 files changed, 578 insertions(+), 546 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e033bcaef4f3..31710d98cad5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -339,6 +339,7 @@ i915-y += \
 	display/intel_lspcon.o \
 	display/intel_lvds.o \
 	display/intel_panel.o \
+	display/intel_pfit.o \
 	display/intel_pps.o \
 	display/intel_qp_tables.o \
 	display/intel_sdvo.o \
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 87a27d91d15d..115d79c80b9a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -46,6 +46,7 @@
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
 #include "intel_panel.h"
+#include "intel_pfit.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6b27fabd61c3..7e02da8f84a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -83,6 +83,7 @@
 #include "intel_modeset_lock.h"
 #include "intel_panel.h"
 #include "intel_pch_display.h"
+#include "intel_pfit.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_runtime_pm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 72ac910bf6ec..6a16194b1105 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -62,6 +62,7 @@
 #include "intel_hdmi.h"
 #include "intel_lspcon.h"
 #include "intel_panel.h"
+#include "intel_pfit.h"
 #include "intel_snps_phy.h"
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 5f753ee743c6..5d022b4215ee 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -52,6 +52,7 @@
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
+#include "intel_pfit.h"
 #include "intel_pps_regs.h"
 
 /* Private structure for the integrated LVDS support */
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7fa0a54a3d3a..313bd3f35ace 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -33,14 +33,13 @@
 
 #include <drm/drm_edid.h>
 
-#include "i915_reg.h"
+#include "i915_drv.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
-#include "intel_de.h"
+#include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
-#include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_quirks.h"
 #include "intel_vrr.h"
@@ -381,547 +380,6 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 				   "current (BIOS)");
 }
 
-static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
-	int width = drm_rect_width(dst);
-	int height = drm_rect_height(dst);
-	int x = dst->x1;
-	int y = dst->y1;
-
-	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE &&
-	    (y & 1 || height & 1)) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") misaligned for interlaced output\n",
-			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
-		return -EINVAL;
-	}
-
-	/*
-	 * "Restriction : When pipe scaling is enabled, the scaled
-	 *  output must equal the pipe active area, so Pipe active
-	 *  size = (2 * PF window position) + PF window size."
-	 *
-	 * The vertical direction seems more forgiving than the
-	 * horizontal direction, but still has some issues so
-	 * let's follow the same hard rule for both.
-	 */
-	if (adjusted_mode->crtc_hdisplay != 2 * x + width ||
-	    adjusted_mode->crtc_vdisplay != 2 * y + height) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") not centered\n",
-			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
-		return -EINVAL;
-	}
-
-	/*
-	 * "Restriction : The X position must not be programmed
-	 *  to be 1 (28:16=0 0000 0000 0001b)."
-	 */
-	if (x == 1) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") badly positioned\n",
-			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	int max_src_w, max_src_h;
-
-	if (DISPLAY_VER(display) >= 8) {
-		max_src_w = 4096;
-		max_src_h = 4096;
-	} else if (DISPLAY_VER(display) >= 7) {
-		/*
-		 * PF0 7x5 capable
-		 * PF1 3x3 capable (could be switched to 7x5
-		 *                  mode on HSW when PF2 unused)
-		 * PF2 3x3 capable
-		 *
-		 * This assumes we use a 1:1 mapping between pipe and PF.
-		 */
-		max_src_w = crtc->pipe == PIPE_A ? 4096 : 2048;
-		max_src_h = 4096;
-	} else {
-		max_src_w = 4096;
-		max_src_h = 4096;
-	}
-
-	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] source size (%dx%d) exceeds pfit max (%dx%d)\n",
-			    crtc->base.base.id, crtc->base.name,
-			    pipe_src_w, pipe_src_h, max_src_w, max_src_h);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int intel_pch_pfit_check_scaling(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	int hscale, vscale, max_scale = 0x12000; /* 1.125 */
-	struct drm_rect src;
-
-	drm_rect_init(&src, 0, 0, pipe_src_w << 16, pipe_src_h << 16);
-
-	hscale = drm_rect_calc_hscale(&src, dst, 0, max_scale);
-	if (hscale < 0) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) exceeds max (0x%x)\n",
-			    crtc->base.base.id, crtc->base.name,
-			    pipe_src_w, drm_rect_width(dst),
-			    max_scale);
-		return hscale;
-	}
-
-	vscale = drm_rect_calc_vscale(&src, dst, 0, max_scale);
-	if (vscale < 0) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) exceeds max (0x%x)\n",
-			    crtc->base.base.id, crtc->base.name,
-			    pipe_src_h, drm_rect_height(dst),
-			    max_scale);
-		return vscale;
-	}
-
-	return 0;
-}
-
-static int intel_pch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-
-	if (adjusted_mode->crtc_vdisplay < 7) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
-			    crtc->base.base.id, crtc->base.name,
-			    adjusted_mode->crtc_vdisplay, 7);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int intel_pch_pfit_check_cloning(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	/*
-	 * The panel fitter is in the pipe and thus would affect every
-	 * cloned output. The relevant properties (scaling mode, TV
-	 * margins) are per-connector so we'd have to make sure each
-	 * output sets them up identically. Seems like a very niche use
-	 * case so let's just reject cloning entirely when pfit is used.
-	 */
-	if (crtc_state->uapi.encoder_mask &&
-	    !is_power_of_2(crtc_state->uapi.encoder_mask)) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] no pfit when cloning\n",
-			    crtc->base.base.id, crtc->base.name);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-/* adjusted_mode has been preset to be the panel's fixed mode */
-static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	int ret, x, y, width, height;
-
-	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
-	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
-		return 0;
-
-	switch (conn_state->scaling_mode) {
-	case DRM_MODE_SCALE_CENTER:
-		width = pipe_src_w;
-		height = pipe_src_h;
-		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
-		break;
-
-	case DRM_MODE_SCALE_ASPECT:
-		/* Scale but preserve the aspect ratio */
-		{
-			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
-			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
-			if (scaled_width > scaled_height) { /* pillar */
-				width = scaled_height / pipe_src_h;
-				if (width & 1)
-					width++;
-				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
-				y = 0;
-				height = adjusted_mode->crtc_vdisplay;
-			} else if (scaled_width < scaled_height) { /* letter */
-				height = scaled_width / pipe_src_w;
-				if (height & 1)
-				    height++;
-				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
-				x = 0;
-				width = adjusted_mode->crtc_hdisplay;
-			} else {
-				x = y = 0;
-				width = adjusted_mode->crtc_hdisplay;
-				height = adjusted_mode->crtc_vdisplay;
-			}
-		}
-		break;
-
-	case DRM_MODE_SCALE_NONE:
-		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
-		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
-		fallthrough;
-	case DRM_MODE_SCALE_FULLSCREEN:
-		x = y = 0;
-		width = adjusted_mode->crtc_hdisplay;
-		height = adjusted_mode->crtc_vdisplay;
-		break;
-
-	default:
-		MISSING_CASE(conn_state->scaling_mode);
-		return -EINVAL;
-	}
-
-	drm_rect_init(&crtc_state->pch_pfit.dst,
-		      x, y, width, height);
-	crtc_state->pch_pfit.enabled = true;
-
-	/*
-	 * SKL+ have unified scalers for pipes/planes so the
-	 * checks are done in a single place for all scalers.
-	 */
-	if (DISPLAY_VER(display) >= 9)
-		return 0;
-
-	ret = intel_pch_pfit_check_dst_window(crtc_state);
-	if (ret)
-		return ret;
-
-	ret = intel_pch_pfit_check_src_size(crtc_state);
-	if (ret)
-		return ret;
-
-	ret = intel_pch_pfit_check_scaling(crtc_state);
-	if (ret)
-		return ret;
-
-	ret = intel_pch_pfit_check_timings(crtc_state);
-	if (ret)
-		return ret;
-
-	ret = intel_pch_pfit_check_cloning(crtc_state);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static void
-centre_horizontally(struct drm_display_mode *adjusted_mode,
-		    int width)
-{
-	u32 border, sync_pos, blank_width, sync_width;
-
-	/* keep the hsync and hblank widths constant */
-	sync_width = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
-	blank_width = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
-	sync_pos = (blank_width - sync_width + 1) / 2;
-
-	border = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
-	border += border & 1; /* make the border even */
-
-	adjusted_mode->crtc_hdisplay = width;
-	adjusted_mode->crtc_hblank_start = width + border;
-	adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_hblank_start + blank_width;
-
-	adjusted_mode->crtc_hsync_start = adjusted_mode->crtc_hblank_start + sync_pos;
-	adjusted_mode->crtc_hsync_end = adjusted_mode->crtc_hsync_start + sync_width;
-}
-
-static void
-centre_vertically(struct drm_display_mode *adjusted_mode,
-		  int height)
-{
-	u32 border, sync_pos, blank_width, sync_width;
-
-	/* keep the vsync and vblank widths constant */
-	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
-	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
-	sync_pos = (blank_width - sync_width + 1) / 2;
-
-	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
-
-	adjusted_mode->crtc_vdisplay = height;
-	adjusted_mode->crtc_vblank_start = height + border;
-	adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vblank_start + blank_width;
-
-	adjusted_mode->crtc_vsync_start = adjusted_mode->crtc_vblank_start + sync_pos;
-	adjusted_mode->crtc_vsync_end = adjusted_mode->crtc_vsync_start + sync_width;
-}
-
-static u32 panel_fitter_scaling(u32 source, u32 target)
-{
-	/*
-	 * Floating point operation is not supported. So the FACTOR
-	 * is defined, which can avoid the floating point computation
-	 * when calculating the panel ratio.
-	 */
-#define ACCURACY 12
-#define FACTOR (1 << ACCURACY)
-	u32 ratio = source * FACTOR / target;
-	return (FACTOR * ratio + FACTOR/2) / FACTOR;
-}
-
-static void i965_scale_aspect(struct intel_crtc_state *crtc_state,
-			      u32 *pfit_control)
-{
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
-	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
-
-	/* 965+ is easy, it does everything in hw */
-	if (scaled_width > scaled_height)
-		*pfit_control |= PFIT_ENABLE |
-			PFIT_SCALING_PILLAR;
-	else if (scaled_width < scaled_height)
-		*pfit_control |= PFIT_ENABLE |
-			PFIT_SCALING_LETTER;
-	else if (adjusted_mode->crtc_hdisplay != pipe_src_w)
-		*pfit_control |= PFIT_ENABLE | PFIT_SCALING_AUTO;
-}
-
-static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
-			      u32 *pfit_control, u32 *pfit_pgm_ratios,
-			      u32 *border)
-{
-	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
-	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
-	u32 bits;
-
-	/*
-	 * For earlier chips we have to calculate the scaling
-	 * ratio by hand and program it into the
-	 * PFIT_PGM_RATIO register
-	 */
-	if (scaled_width > scaled_height) { /* pillar */
-		centre_horizontally(adjusted_mode,
-				    scaled_height / pipe_src_h);
-
-		*border = LVDS_BORDER_ENABLE;
-		if (pipe_src_h != adjusted_mode->crtc_vdisplay) {
-			bits = panel_fitter_scaling(pipe_src_h,
-						    adjusted_mode->crtc_vdisplay);
-
-			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
-					     PFIT_VERT_SCALE(bits));
-			*pfit_control |= (PFIT_ENABLE |
-					  PFIT_VERT_INTERP_BILINEAR |
-					  PFIT_HORIZ_INTERP_BILINEAR);
-		}
-	} else if (scaled_width < scaled_height) { /* letter */
-		centre_vertically(adjusted_mode,
-				  scaled_width / pipe_src_w);
-
-		*border = LVDS_BORDER_ENABLE;
-		if (pipe_src_w != adjusted_mode->crtc_hdisplay) {
-			bits = panel_fitter_scaling(pipe_src_w,
-						    adjusted_mode->crtc_hdisplay);
-
-			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
-					     PFIT_VERT_SCALE(bits));
-			*pfit_control |= (PFIT_ENABLE |
-					  PFIT_VERT_INTERP_BILINEAR |
-					  PFIT_HORIZ_INTERP_BILINEAR);
-		}
-	} else {
-		/* Aspects match, Let hw scale both directions */
-		*pfit_control |= (PFIT_ENABLE |
-				  PFIT_VERT_AUTO_SCALE |
-				  PFIT_HORIZ_AUTO_SCALE |
-				  PFIT_VERT_INTERP_BILINEAR |
-				  PFIT_HORIZ_INTERP_BILINEAR);
-	}
-}
-
-static int intel_gmch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	int min;
-
-	if (DISPLAY_VER(display) >= 4)
-		min = 3;
-	else
-		min = 2;
-
-	if (adjusted_mode->crtc_hdisplay < min) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] horizontal active (%d) below minimum (%d) for pfit\n",
-			    crtc->base.base.id, crtc->base.name,
-			    adjusted_mode->crtc_hdisplay, min);
-		return -EINVAL;
-	}
-
-	if (adjusted_mode->crtc_vdisplay < min) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
-			    crtc->base.base.id, crtc->base.name,
-			    adjusted_mode->crtc_vdisplay, min);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
-			      const struct drm_connector_state *conn_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 pfit_control = 0, pfit_pgm_ratios = 0, border = 0;
-	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
-	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-
-	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == pipe_src_h)
-		goto out;
-
-	/*
-	 * TODO: implement downscaling for i965+. Need to account
-	 * for downscaling in intel_crtc_compute_pixel_rate().
-	 */
-	if (adjusted_mode->crtc_hdisplay < pipe_src_w) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) not supported\n",
-			    crtc->base.base.id, crtc->base.name,
-			    pipe_src_w, adjusted_mode->crtc_hdisplay);
-		return -EINVAL;
-	}
-	if (adjusted_mode->crtc_vdisplay < pipe_src_h) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) not supported\n",
-			    crtc->base.base.id, crtc->base.name,
-			    pipe_src_h, adjusted_mode->crtc_vdisplay);
-		return -EINVAL;
-	}
-
-	switch (conn_state->scaling_mode) {
-	case DRM_MODE_SCALE_CENTER:
-		/*
-		 * For centered modes, we have to calculate border widths &
-		 * heights and modify the values programmed into the CRTC.
-		 */
-		centre_horizontally(adjusted_mode, pipe_src_w);
-		centre_vertically(adjusted_mode, pipe_src_h);
-		border = LVDS_BORDER_ENABLE;
-		break;
-	case DRM_MODE_SCALE_ASPECT:
-		/* Scale but preserve the aspect ratio */
-		if (DISPLAY_VER(display) >= 4)
-			i965_scale_aspect(crtc_state, &pfit_control);
-		else
-			i9xx_scale_aspect(crtc_state, &pfit_control,
-					  &pfit_pgm_ratios, &border);
-		break;
-	case DRM_MODE_SCALE_FULLSCREEN:
-		/*
-		 * Full scaling, even if it changes the aspect ratio.
-		 * Fortunately this is all done for us in hw.
-		 */
-		if (pipe_src_h != adjusted_mode->crtc_vdisplay ||
-		    pipe_src_w != adjusted_mode->crtc_hdisplay) {
-			pfit_control |= PFIT_ENABLE;
-			if (DISPLAY_VER(display) >= 4)
-				pfit_control |= PFIT_SCALING_AUTO;
-			else
-				pfit_control |= (PFIT_VERT_AUTO_SCALE |
-						 PFIT_VERT_INTERP_BILINEAR |
-						 PFIT_HORIZ_AUTO_SCALE |
-						 PFIT_HORIZ_INTERP_BILINEAR);
-		}
-		break;
-	default:
-		MISSING_CASE(conn_state->scaling_mode);
-		return -EINVAL;
-	}
-
-	/* 965+ wants fuzzy fitting */
-	/* FIXME: handle multiple panels by failing gracefully */
-	if (DISPLAY_VER(display) >= 4)
-		pfit_control |= PFIT_PIPE(crtc->pipe) | PFIT_FILTER_FUZZY;
-
-out:
-	if ((pfit_control & PFIT_ENABLE) == 0) {
-		pfit_control = 0;
-		pfit_pgm_ratios = 0;
-	}
-
-	/* Make sure pre-965 set dither correctly for 18bpp panels. */
-	if (DISPLAY_VER(display) < 4 && crtc_state->pipe_bpp == 18)
-		pfit_control |= PFIT_PANEL_8TO6_DITHER_ENABLE;
-
-	crtc_state->gmch_pfit.control = pfit_control;
-	crtc_state->gmch_pfit.pgm_ratios = pfit_pgm_ratios;
-	crtc_state->gmch_pfit.lvds_border_bits = border;
-
-	if ((pfit_control & PFIT_ENABLE) == 0)
-		return 0;
-
-	return intel_gmch_pfit_check_timings(crtc_state);
-}
-
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (HAS_GMCH(display))
-		return gmch_panel_fitting(crtc_state, conn_state);
-	else
-		return pch_panel_fitting(crtc_state, conn_state);
-}
-
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index d6dd88473555..b60d12322e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -42,8 +42,6 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state);
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
new file mode 100644
index 000000000000..50861aa78a89
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -0,0 +1,554 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_display_core.h"
+#include "intel_display_driver.h"
+#include "intel_display_types.h"
+#include "intel_lvds_regs.h"
+#include "intel_pfit.h"
+
+static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	int width = drm_rect_width(dst);
+	int height = drm_rect_height(dst);
+	int x = dst->x1;
+	int y = dst->y1;
+
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE &&
+	    (y & 1 || height & 1)) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") misaligned for interlaced output\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	/*
+	 * "Restriction : When pipe scaling is enabled, the scaled
+	 *  output must equal the pipe active area, so Pipe active
+	 *  size = (2 * PF window position) + PF window size."
+	 *
+	 * The vertical direction seems more forgiving than the
+	 * horizontal direction, but still has some issues so
+	 * let's follow the same hard rule for both.
+	 */
+	if (adjusted_mode->crtc_hdisplay != 2 * x + width ||
+	    adjusted_mode->crtc_vdisplay != 2 * y + height) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") not centered\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	/*
+	 * "Restriction : The X position must not be programmed
+	 *  to be 1 (28:16=0 0000 0000 0001b)."
+	 */
+	if (x == 1) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") badly positioned\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	int max_src_w, max_src_h;
+
+	if (DISPLAY_VER(display) >= 8) {
+		max_src_w = 4096;
+		max_src_h = 4096;
+	} else if (DISPLAY_VER(display) >= 7) {
+		/*
+		 * PF0 7x5 capable
+		 * PF1 3x3 capable (could be switched to 7x5
+		 *                  mode on HSW when PF2 unused)
+		 * PF2 3x3 capable
+		 *
+		 * This assumes we use a 1:1 mapping between pipe and PF.
+		 */
+		max_src_w = crtc->pipe == PIPE_A ? 4096 : 2048;
+		max_src_h = 4096;
+	} else {
+		max_src_w = 4096;
+		max_src_h = 4096;
+	}
+
+	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] source size (%dx%d) exceeds pfit max (%dx%d)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, pipe_src_h, max_src_w, max_src_h);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int intel_pch_pfit_check_scaling(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	int hscale, vscale, max_scale = 0x12000; /* 1.125 */
+	struct drm_rect src;
+
+	drm_rect_init(&src, 0, 0, pipe_src_w << 16, pipe_src_h << 16);
+
+	hscale = drm_rect_calc_hscale(&src, dst, 0, max_scale);
+	if (hscale < 0) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) exceeds max (0x%x)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, drm_rect_width(dst),
+			    max_scale);
+		return hscale;
+	}
+
+	vscale = drm_rect_calc_vscale(&src, dst, 0, max_scale);
+	if (vscale < 0) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) exceeds max (0x%x)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_h, drm_rect_height(dst),
+			    max_scale);
+		return vscale;
+	}
+
+	return 0;
+}
+
+static int intel_pch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (adjusted_mode->crtc_vdisplay < 7) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_vdisplay, 7);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int intel_pch_pfit_check_cloning(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	/*
+	 * The panel fitter is in the pipe and thus would affect every
+	 * cloned output. The relevant properties (scaling mode, TV
+	 * margins) are per-connector so we'd have to make sure each
+	 * output sets them up identically. Seems like a very niche use
+	 * case so let's just reject cloning entirely when pfit is used.
+	 */
+	if (crtc_state->uapi.encoder_mask &&
+	    !is_power_of_2(crtc_state->uapi.encoder_mask)) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] no pfit when cloning\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/* adjusted_mode has been preset to be the panel's fixed mode */
+static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	int ret, x, y, width, height;
+
+	/* Native modes don't need fitting */
+	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
+	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
+	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
+		return 0;
+
+	switch (conn_state->scaling_mode) {
+	case DRM_MODE_SCALE_CENTER:
+		width = pipe_src_w;
+		height = pipe_src_h;
+		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
+		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		break;
+
+	case DRM_MODE_SCALE_ASPECT:
+		/* Scale but preserve the aspect ratio */
+		{
+			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+
+			if (scaled_width > scaled_height) { /* pillar */
+				width = scaled_height / pipe_src_h;
+				if (width & 1)
+					width++;
+				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+				y = 0;
+				height = adjusted_mode->crtc_vdisplay;
+			} else if (scaled_width < scaled_height) { /* letter */
+				height = scaled_width / pipe_src_w;
+				if (height & 1)
+					height++;
+				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
+				x = 0;
+				width = adjusted_mode->crtc_hdisplay;
+			} else {
+				x = y = 0;
+				width = adjusted_mode->crtc_hdisplay;
+				height = adjusted_mode->crtc_vdisplay;
+			}
+		}
+		break;
+
+	case DRM_MODE_SCALE_NONE:
+		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
+		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		fallthrough;
+	case DRM_MODE_SCALE_FULLSCREEN:
+		x = y = 0;
+		width = adjusted_mode->crtc_hdisplay;
+		height = adjusted_mode->crtc_vdisplay;
+		break;
+
+	default:
+		MISSING_CASE(conn_state->scaling_mode);
+		return -EINVAL;
+	}
+
+	drm_rect_init(&crtc_state->pch_pfit.dst,
+		      x, y, width, height);
+	crtc_state->pch_pfit.enabled = true;
+
+	/*
+	 * SKL+ have unified scalers for pipes/planes so the
+	 * checks are done in a single place for all scalers.
+	 */
+	if (DISPLAY_VER(display) >= 9)
+		return 0;
+
+	ret = intel_pch_pfit_check_dst_window(crtc_state);
+	if (ret)
+		return ret;
+
+	ret = intel_pch_pfit_check_src_size(crtc_state);
+	if (ret)
+		return ret;
+
+	ret = intel_pch_pfit_check_scaling(crtc_state);
+	if (ret)
+		return ret;
+
+	ret = intel_pch_pfit_check_timings(crtc_state);
+	if (ret)
+		return ret;
+
+	ret = intel_pch_pfit_check_cloning(crtc_state);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void
+centre_horizontally(struct drm_display_mode *adjusted_mode,
+		    int width)
+{
+	u32 border, sync_pos, blank_width, sync_width;
+
+	/* keep the hsync and hblank widths constant */
+	sync_width = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
+	blank_width = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
+	sync_pos = (blank_width - sync_width + 1) / 2;
+
+	border = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+	border += border & 1; /* make the border even */
+
+	adjusted_mode->crtc_hdisplay = width;
+	adjusted_mode->crtc_hblank_start = width + border;
+	adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_hblank_start + blank_width;
+
+	adjusted_mode->crtc_hsync_start = adjusted_mode->crtc_hblank_start + sync_pos;
+	adjusted_mode->crtc_hsync_end = adjusted_mode->crtc_hsync_start + sync_width;
+}
+
+static void
+centre_vertically(struct drm_display_mode *adjusted_mode,
+		  int height)
+{
+	u32 border, sync_pos, blank_width, sync_width;
+
+	/* keep the vsync and vblank widths constant */
+	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
+	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
+	sync_pos = (blank_width - sync_width + 1) / 2;
+
+	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
+
+	adjusted_mode->crtc_vdisplay = height;
+	adjusted_mode->crtc_vblank_start = height + border;
+	adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vblank_start + blank_width;
+
+	adjusted_mode->crtc_vsync_start = adjusted_mode->crtc_vblank_start + sync_pos;
+	adjusted_mode->crtc_vsync_end = adjusted_mode->crtc_vsync_start + sync_width;
+}
+
+static u32 panel_fitter_scaling(u32 source, u32 target)
+{
+	/*
+	 * Floating point operation is not supported. So the FACTOR
+	 * is defined, which can avoid the floating point computation
+	 * when calculating the panel ratio.
+	 */
+#define ACCURACY 12
+#define FACTOR (1 << ACCURACY)
+	u32 ratio = source * FACTOR / target;
+	return (FACTOR * ratio + FACTOR/2) / FACTOR;
+}
+
+static void i965_scale_aspect(struct intel_crtc_state *crtc_state,
+			      u32 *pfit_control)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+
+	/* 965+ is easy, it does everything in hw */
+	if (scaled_width > scaled_height)
+		*pfit_control |= PFIT_ENABLE |
+			PFIT_SCALING_PILLAR;
+	else if (scaled_width < scaled_height)
+		*pfit_control |= PFIT_ENABLE |
+			PFIT_SCALING_LETTER;
+	else if (adjusted_mode->crtc_hdisplay != pipe_src_w)
+		*pfit_control |= PFIT_ENABLE | PFIT_SCALING_AUTO;
+}
+
+static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
+			      u32 *pfit_control, u32 *pfit_pgm_ratios,
+			      u32 *border)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+	u32 bits;
+
+	/*
+	 * For earlier chips we have to calculate the scaling
+	 * ratio by hand and program it into the
+	 * PFIT_PGM_RATIO register
+	 */
+	if (scaled_width > scaled_height) { /* pillar */
+		centre_horizontally(adjusted_mode,
+				    scaled_height / pipe_src_h);
+
+		*border = LVDS_BORDER_ENABLE;
+		if (pipe_src_h != adjusted_mode->crtc_vdisplay) {
+			bits = panel_fitter_scaling(pipe_src_h,
+						    adjusted_mode->crtc_vdisplay);
+
+			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
+					     PFIT_VERT_SCALE(bits));
+			*pfit_control |= (PFIT_ENABLE |
+					  PFIT_VERT_INTERP_BILINEAR |
+					  PFIT_HORIZ_INTERP_BILINEAR);
+		}
+	} else if (scaled_width < scaled_height) { /* letter */
+		centre_vertically(adjusted_mode,
+				  scaled_width / pipe_src_w);
+
+		*border = LVDS_BORDER_ENABLE;
+		if (pipe_src_w != adjusted_mode->crtc_hdisplay) {
+			bits = panel_fitter_scaling(pipe_src_w,
+						    adjusted_mode->crtc_hdisplay);
+
+			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
+					     PFIT_VERT_SCALE(bits));
+			*pfit_control |= (PFIT_ENABLE |
+					  PFIT_VERT_INTERP_BILINEAR |
+					  PFIT_HORIZ_INTERP_BILINEAR);
+		}
+	} else {
+		/* Aspects match, Let hw scale both directions */
+		*pfit_control |= (PFIT_ENABLE |
+				  PFIT_VERT_AUTO_SCALE |
+				  PFIT_HORIZ_AUTO_SCALE |
+				  PFIT_VERT_INTERP_BILINEAR |
+				  PFIT_HORIZ_INTERP_BILINEAR);
+	}
+}
+
+static int intel_gmch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int min;
+
+	if (DISPLAY_VER(display) >= 4)
+		min = 3;
+	else
+		min = 2;
+
+	if (adjusted_mode->crtc_hdisplay < min) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] horizontal active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_hdisplay, min);
+		return -EINVAL;
+	}
+
+	if (adjusted_mode->crtc_vdisplay < min) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_vdisplay, min);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 pfit_control = 0, pfit_pgm_ratios = 0, border = 0;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+
+	/* Native modes don't need fitting */
+	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
+	    adjusted_mode->crtc_vdisplay == pipe_src_h)
+		goto out;
+
+	/*
+	 * TODO: implement downscaling for i965+. Need to account
+	 * for downscaling in intel_crtc_compute_pixel_rate().
+	 */
+	if (adjusted_mode->crtc_hdisplay < pipe_src_w) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) not supported\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, adjusted_mode->crtc_hdisplay);
+		return -EINVAL;
+	}
+	if (adjusted_mode->crtc_vdisplay < pipe_src_h) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) not supported\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_h, adjusted_mode->crtc_vdisplay);
+		return -EINVAL;
+	}
+
+	switch (conn_state->scaling_mode) {
+	case DRM_MODE_SCALE_CENTER:
+		/*
+		 * For centered modes, we have to calculate border widths &
+		 * heights and modify the values programmed into the CRTC.
+		 */
+		centre_horizontally(adjusted_mode, pipe_src_w);
+		centre_vertically(adjusted_mode, pipe_src_h);
+		border = LVDS_BORDER_ENABLE;
+		break;
+	case DRM_MODE_SCALE_ASPECT:
+		/* Scale but preserve the aspect ratio */
+		if (DISPLAY_VER(display) >= 4)
+			i965_scale_aspect(crtc_state, &pfit_control);
+		else
+			i9xx_scale_aspect(crtc_state, &pfit_control,
+					  &pfit_pgm_ratios, &border);
+		break;
+	case DRM_MODE_SCALE_FULLSCREEN:
+		/*
+		 * Full scaling, even if it changes the aspect ratio.
+		 * Fortunately this is all done for us in hw.
+		 */
+		if (pipe_src_h != adjusted_mode->crtc_vdisplay ||
+		    pipe_src_w != adjusted_mode->crtc_hdisplay) {
+			pfit_control |= PFIT_ENABLE;
+			if (DISPLAY_VER(display) >= 4)
+				pfit_control |= PFIT_SCALING_AUTO;
+			else
+				pfit_control |= (PFIT_VERT_AUTO_SCALE |
+						 PFIT_VERT_INTERP_BILINEAR |
+						 PFIT_HORIZ_AUTO_SCALE |
+						 PFIT_HORIZ_INTERP_BILINEAR);
+		}
+		break;
+	default:
+		MISSING_CASE(conn_state->scaling_mode);
+		return -EINVAL;
+	}
+
+	/* 965+ wants fuzzy fitting */
+	/* FIXME: handle multiple panels by failing gracefully */
+	if (DISPLAY_VER(display) >= 4)
+		pfit_control |= PFIT_PIPE(crtc->pipe) | PFIT_FILTER_FUZZY;
+
+out:
+	if ((pfit_control & PFIT_ENABLE) == 0) {
+		pfit_control = 0;
+		pfit_pgm_ratios = 0;
+	}
+
+	/* Make sure pre-965 set dither correctly for 18bpp panels. */
+	if (DISPLAY_VER(display) < 4 && crtc_state->pipe_bpp == 18)
+		pfit_control |= PFIT_PANEL_8TO6_DITHER_ENABLE;
+
+	crtc_state->gmch_pfit.control = pfit_control;
+	crtc_state->gmch_pfit.pgm_ratios = pfit_pgm_ratios;
+	crtc_state->gmch_pfit.lvds_border_bits = border;
+
+	if ((pfit_control & PFIT_ENABLE) == 0)
+		return 0;
+
+	return intel_gmch_pfit_check_timings(crtc_state);
+}
+
+int intel_panel_fitting(struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (HAS_GMCH(display))
+		return gmch_panel_fitting(crtc_state, conn_state);
+	else
+		return pch_panel_fitting(crtc_state, conn_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
new file mode 100644
index 000000000000..add8d78de2c9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pfit.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_PFIT_H__
+#define __INTEL_PFIT_H__
+
+struct drm_connector_state;
+struct intel_crtc_state;
+
+int intel_panel_fitting(struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state);
+
+#endif /* __INTEL_PFIT_H__ */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 32d15bd9a358..9383eedee2d4 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -44,6 +44,7 @@
 #include "intel_dsi_vbt.h"
 #include "intel_fifo_underrun.h"
 #include "intel_panel.h"
+#include "intel_pfit.h"
 #include "skl_scaler.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index da80c29aa363..bc7a04ce69fd 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -252,6 +252,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_modeset_setup.o \
 	i915-display/intel_modeset_verify.o \
 	i915-display/intel_panel.o \
+	i915-display/intel_pfit.o \
 	i915-display/intel_pmdemand.o \
 	i915-display/intel_pps.o \
 	i915-display/intel_psr.o \
-- 
2.45.2

