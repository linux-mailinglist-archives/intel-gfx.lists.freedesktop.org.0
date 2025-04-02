Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84528A7859D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2CA10E67A;
	Wed,  2 Apr 2025 00:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUib/13p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505D410E699;
 Wed,  2 Apr 2025 00:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553355; x=1775089355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=92MrwKG+PhLDZjbgsvP21oDLEgA9hFN7ZSWsbTbx01w=;
 b=ZUib/13px9A42NLvcdMWK4qUrGidgmOI+L8lMk34UyXPklngUmLfSo9O
 yswSSdyh9Us8Fp+f5OgfcrzcBSvwVjF763vEYSS+aObgMUA9qydXuj73z
 RCy8BKfcBHt41EO+3+P186MXsO8gY/atD22cmCnKLbWKdSBLjvoUv+z//
 y0U595Ki1QHQwHqMy+WOpoH3/7qZVwIFLON9FdLQrzhZxMS1raC3lm1k5
 Kd6iVahirPYjwPsOcpjyRj8Y5DbFEgvzNFB+WcAJsPzIs5xcbF/+F7IZF
 fyNXpR9JEi+MNPJ+vMDU4/hkvUNg+kOUFCT2fsLQeG/aLUpWRQyKQOMa+ Q==;
X-CSE-ConnectionGUID: 46RGKrU/RQG7PW3KzCPqZA==
X-CSE-MsgGUID: UYF4AiRcTTu7XBED6VHadg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021952"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021952"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:34 -0700
X-CSE-ConnectionGUID: EcJAqGk7S4CiyrPfqHUL0Q==
X-CSE-MsgGUID: Mhy6SLBrRmujh9Mhs4HQyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Include crtc contributed bits in
 plane_state->ctl
Date: Wed,  2 Apr 2025 03:22:07 +0300
Message-ID: <20250402002209.24987-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

Currently we precompute plane_state->ctl with just the plane_state
contributed bits, and the crtc contributed bits are added in ad-hoc
fashion in all the places that write the plane control register.
Clean this up by also including the crtc bits in the precomputed
value.

Technically the only place that needs the _ctl() vs. _ctl_crtc()
split after this is i9xx_plane_disable_arm() (since we have to
write the crtc bits even when disabling the plane), but I've opted
to stick to the split on all platforms anyway. I think having clear
areas of responsibility for each function is nice.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 45 +++++++++----------
 drivers/gpu/drm/i915/display/intel_cursor.c   | 14 +++---
 .../drm/i915/display/skl_universal_plane.c    | 31 ++++---------
 3 files changed, 36 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 6a2609402431..ef830644bc44 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -151,6 +151,24 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 			i9xx_plane == PLANE_C;
 }
 
+static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 dspcntr = 0;
+
+	if (crtc_state->gamma_enable)
+		dspcntr |= DISP_PIPE_GAMMA_ENABLE;
+
+	if (crtc_state->csc_enable)
+		dspcntr |= DISP_PIPE_CSC_ENABLE;
+
+	if (DISPLAY_VER(display) < 5)
+		dspcntr |= DISP_PIPE_SEL(crtc->pipe);
+
+	return dspcntr;
+}
+
 static u32 i9xx_plane_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
@@ -350,7 +368,8 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	plane_state->ctl = i9xx_plane_ctl(plane_state);
+	plane_state->ctl = i9xx_plane_ctl(plane_state) |
+		i9xx_plane_ctl_crtc(crtc_state);
 
 	return 0;
 }
@@ -368,24 +387,6 @@ u32 i965_plane_surf_offset(const struct intel_plane_state *plane_state)
 	return plane_state->view.color_plane[0].offset;
 }
 
-static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 dspcntr = 0;
-
-	if (crtc_state->gamma_enable)
-		dspcntr |= DISP_PIPE_GAMMA_ENABLE;
-
-	if (crtc_state->csc_enable)
-		dspcntr |= DISP_PIPE_CSC_ENABLE;
-
-	if (DISPLAY_VER(display) < 5)
-		dspcntr |= DISP_PIPE_SEL(crtc->pipe);
-
-	return dspcntr;
-}
-
 static void i9xx_plane_ratio(const struct intel_crtc_state *crtc_state,
 			     const struct intel_plane_state *plane_state,
 			     unsigned int *num, unsigned int *den)
@@ -471,9 +472,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	int x = plane_state->view.color_plane[0].x;
 	int y = plane_state->view.color_plane[0].y;
-	u32 dspcntr;
-
-	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
+	u32 dspcntr = plane_state->ctl;
 
 	/* see intel_plane_atomic_calc_changes() */
 	if (plane->need_async_flip_toggle_wa &&
@@ -602,8 +601,8 @@ g4x_primary_async_flip(struct intel_dsb *dsb,
 		       bool async_flip)
 {
 	struct intel_display *display = to_intel_display(plane);
-	u32 dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	u32 dspcntr = plane_state->ctl;
 
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 8f9c8f0f4b27..debf0f9b7ff6 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -265,7 +265,8 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	plane_state->ctl = i845_cursor_ctl(plane_state);
+	plane_state->ctl = i845_cursor_ctl(plane_state) |
+		i845_cursor_ctl_crtc(crtc_state);
 
 	return 0;
 }
@@ -283,11 +284,9 @@ static void i845_cursor_update_arm(struct intel_dsb *dsb,
 		unsigned int width = drm_rect_width(&plane_state->uapi.dst);
 		unsigned int height = drm_rect_height(&plane_state->uapi.dst);
 
-		cntl = plane_state->ctl |
-			i845_cursor_ctl_crtc(crtc_state);
-
 		size = CURSOR_HEIGHT(height) | CURSOR_WIDTH(width);
 
+		cntl = plane_state->ctl;
 		base = plane_state->surf;
 		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
@@ -524,7 +523,8 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	plane_state->ctl = i9xx_cursor_ctl(plane_state);
+	plane_state->ctl = i9xx_cursor_ctl(plane_state) |
+		i9xx_cursor_ctl_crtc(crtc_state);
 
 	return 0;
 }
@@ -659,12 +659,10 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 		int width = drm_rect_width(&plane_state->uapi.dst);
 		int height = drm_rect_height(&plane_state->uapi.dst);
 
-		cntl = plane_state->ctl |
-			i9xx_cursor_ctl_crtc(crtc_state);
-
 		if (width != height)
 			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
 
+		cntl = plane_state->ctl;
 		base = plane_state->surf;
 		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index cc64d9598c17..2fd7cd76f804 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1414,20 +1414,13 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 	enum pipe pipe = plane->pipe;
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
-	u32 plane_ctl, plane_color_ctl = 0;
-
-	plane_ctl = plane_state->ctl |
-		skl_plane_ctl_crtc(crtc_state);
+	u32 plane_ctl = plane_state->ctl;
 
 	/* see intel_plane_atomic_calc_changes() */
 	if (plane->need_async_flip_toggle_wa &&
 	    crtc_state->async_flip_planes & BIT(plane->id))
 		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
 
-	if (DISPLAY_VER(display) >= 10)
-		plane_color_ctl = plane_state->color_ctl |
-			glk_plane_color_ctl_crtc(crtc_state);
-
 	intel_de_write_dsb(display, dsb, PLANE_KEYVAL(pipe, plane_id),
 			   skl_plane_keyval(plane_state));
 	intel_de_write_dsb(display, dsb, PLANE_KEYMSK(pipe, plane_id),
@@ -1447,7 +1440,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 
 	if (DISPLAY_VER(display) >= 10)
 		intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
-				   plane_color_ctl);
+				   plane_state->color_ctl);
 
 	/*
 	 * Enable the scaler before the plane so that we don't
@@ -1534,10 +1527,6 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	int y = plane_state->view.color_plane[color_plane].y;
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	u32 plane_color_ctl;
-
-	plane_color_ctl = plane_state->color_ctl |
-		glk_plane_color_ctl_crtc(crtc_state);
 
 	/* The scaler will handle the output position */
 	if (plane_state->scaler_id >= 0) {
@@ -1579,7 +1568,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 				   plane_state->cus_ctl);
 
 	intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
-			   plane_color_ctl);
+			   plane_state->color_ctl);
 
 	if (fb->format->is_yuv && icl_is_hdr_plane(display, plane_id))
 		icl_program_input_csc(dsb, plane, plane_state);
@@ -1623,10 +1612,6 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	u32 plane_ctl;
-
-	plane_ctl = plane_state->ctl |
-		skl_plane_ctl_crtc(crtc_state);
 
 	/*
 	 * Enable the scaler before the plane so that we don't
@@ -1646,7 +1631,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
-			   plane_ctl);
+			   plane_state->ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
 			   plane_state->surf);
 }
@@ -1675,8 +1660,6 @@ skl_plane_async_flip(struct intel_dsb *dsb,
 	u32 plane_ctl = plane_state->ctl;
 	u32 plane_surf = plane_state->surf;
 
-	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
-
 	if (async_flip) {
 		if (DISPLAY_VER(display) >= 30)
 			plane_surf |= PLANE_SURF_ASYNC_UPDATE;
@@ -2353,10 +2336,12 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		plane_state->damage = DRM_RECT_INIT(0, 0, 0, 0);
 	}
 
-	plane_state->ctl = skl_plane_ctl(plane_state);
+	plane_state->ctl = skl_plane_ctl(plane_state) |
+		skl_plane_ctl_crtc(crtc_state);
 
 	if (DISPLAY_VER(display) >= 10)
-		plane_state->color_ctl = glk_plane_color_ctl(plane_state);
+		plane_state->color_ctl = glk_plane_color_ctl(plane_state) |
+			glk_plane_color_ctl_crtc(crtc_state);
 
 	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
 	    icl_is_hdr_plane(display, plane->id))
-- 
2.45.3

