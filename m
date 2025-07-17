Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362CB092EA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE7A10E875;
	Thu, 17 Jul 2025 17:14:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lGvcMyZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09DAE10E86A;
 Thu, 17 Jul 2025 17:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772440; x=1784308440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oOQ8JrdIGSzbXnw7tnoq/zF7mBVYgYbYe2g8he+egvk=;
 b=lGvcMyZEkLuY6+DRDMBEKTXHla8nfQfwaMcXGyC+nzF9KI0tseOJPCEa
 OY+Q/FCNQOSZM4b54ybG8zlW6Kq4FV34iIBpNacpE4I+LizMvy3oMcm1+
 AyIi60obMFe1BUvBEeBo/9V9uFBZaeXkdTCtwxThvwWGE0Vk0CQp2AAiM
 nbzGTQYPdnZCBBmkZXUVbk8U6NiFtEH8yBAHJd7S2F5j3ZZ7+kqATv0ta
 Bqiu4AsnXyfb6M4TGUrOz6XApd1BPs3u5Ygs5rvN553KXNd1JkNzdhF6B
 fuGucvnYuZv6SBWZYa1sRE9xoENXAu2lqAkOeXkURgoc583WBEsz4JkBV Q==;
X-CSE-ConnectionGUID: UjFi3VBHSq+2cbpu9XTuYg==
X-CSE-MsgGUID: OaIjPewdT22rUPZggisJVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729018"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729018"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:00 -0700
X-CSE-ConnectionGUID: 3yL42GnZScu41cX5hHVOfw==
X-CSE-MsgGUID: kq89NX0oTmuKmuifbw1p6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488689"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:13:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:13:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 1/6] drm/i915: Precompute plane SURF address
Date: Thu, 17 Jul 2025 20:13:47 +0300
Message-ID: <20250717171353.23090-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
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

Currently we pre-compute the plane surface/base address
partially (only for cursor_needs_physical cases) in
intel_plane_pin_fb() and finish the calculation in the
plane->update_arm(). Let's just precompute the whole thing
instead.

One benefit is that we get rid of all the vma offset stuff
from the low level plane code. Another use I have in mind
is including the surface address in the plane tracepoints,
which should make it easier to analyze display faults.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 53 ++++++++++---------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   | 18 +++----
 .../drm/i915/display/intel_display_types.h    |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 27 ++++++----
 .../drm/i915/display/intel_plane_initial.c    |  2 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 36 ++++++-------
 .../drm/i915/display/skl_universal_plane.c    | 43 +++++++--------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 ++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  3 ++
 10 files changed, 99 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index f291ced989dc..d572e95c3c92 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -360,6 +360,19 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static u32 i8xx_plane_surf_offset(const struct intel_plane_state *plane_state)
+{
+	int x = plane_state->view.color_plane[0].x;
+	int y = plane_state->view.color_plane[0].y;
+
+	return intel_fb_xy_to_linear(x, y, plane_state, 0);
+}
+
+u32 i965_plane_surf_offset(const struct intel_plane_state *plane_state)
+{
+	return plane_state->view.color_plane[0].offset;
+}
+
 static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -463,7 +476,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	int x = plane_state->view.color_plane[0].x;
 	int y = plane_state->view.color_plane[0].y;
-	u32 dspcntr, dspaddr_offset, linear_offset;
+	u32 dspcntr;
 
 	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 
@@ -472,13 +485,6 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 	    crtc_state->async_flip_planes & BIT(plane->id))
 		dspcntr |= DISP_ASYNC_FLIP;
 
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
-	if (DISPLAY_VER(display) >= 4)
-		dspaddr_offset = plane_state->view.color_plane[0].offset;
-	else
-		dspaddr_offset = linear_offset;
-
 	if (display->platform.cherryview && i9xx_plane == PLANE_B) {
 		int crtc_x = plane_state->uapi.dst.x1;
 		int crtc_y = plane_state->uapi.dst.y1;
@@ -498,7 +504,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	} else if (DISPLAY_VER(display) >= 4) {
 		intel_de_write_fw(display, DSPLINOFF(display, i9xx_plane),
-				  linear_offset);
+				  intel_fb_xy_to_linear(x, y, plane_state, 0));
 		intel_de_write_fw(display, DSPTILEOFF(display, i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	}
@@ -511,11 +517,9 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
 
 	if (DISPLAY_VER(display) >= 4)
-		intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
-				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
+		intel_de_write_fw(display, DSPSURF(display, i9xx_plane), plane_state->surf);
 	else
-		intel_de_write_fw(display, DSPADDR(display, i9xx_plane),
-				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
+		intel_de_write_fw(display, DSPADDR(display, i9xx_plane), plane_state->surf);
 }
 
 static void i830_plane_update_arm(struct intel_dsb *dsb,
@@ -604,16 +608,13 @@ g4x_primary_async_flip(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(plane);
 	u32 dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
-	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
 
 	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
-
-	intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
-			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
+	intel_de_write_fw(display, DSPSURF(display, i9xx_plane), plane_state->surf);
 }
 
 static void
@@ -624,11 +625,9 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
 		       bool async_flip)
 {
 	struct intel_display *display = to_intel_display(plane);
-	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	intel_de_write_fw(display, DSPADDR_VLV(display, i9xx_plane),
-			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
+	intel_de_write_fw(display, DSPADDR_VLV(display, i9xx_plane), plane_state->surf);
 }
 
 static void
@@ -1037,6 +1036,11 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
 
+	if (DISPLAY_VER(display) >= 4)
+		plane->surf_offset = i965_plane_surf_offset;
+	else
+		plane->surf_offset = i8xx_plane_surf_offset;
+
 	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		plane->capture_error = g4x_primary_capture_error;
 	else if (DISPLAY_VER(display) >= 4)
@@ -1254,24 +1258,21 @@ bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
 	const struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	u32 base;
 
 	if (!plane_state->uapi.visible)
 		return false;
 
-	base = intel_plane_ggtt_offset(plane_state);
-
 	/*
 	 * We may have moved the surface to a different
 	 * part of ggtt, make the plane aware of that.
 	 */
-	if (plane_config->base == base)
+	if (plane_config->base == plane_state->surf)
 		return false;
 
 	if (DISPLAY_VER(display) >= 4)
-		intel_de_write(display, DSPSURF(display, i9xx_plane), base);
+		intel_de_write(display, DSPSURF(display, i9xx_plane), plane_state->surf);
 	else
-		intel_de_write(display, DSPADDR(display, i9xx_plane), base);
+		intel_de_write(display, DSPADDR(display, i9xx_plane), plane_state->surf);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index d90546d60855..565dab751301 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -24,6 +24,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 				     const struct drm_framebuffer *fb,
 				     int colot_plane);
 int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
+u32 i965_plane_surf_offset(const struct intel_plane_state *plane_state);
 
 struct intel_plane *
 intel_primary_plane_create(struct intel_display *display, enum pipe pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 198e69efe9ac..83718b627bb0 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -33,17 +33,9 @@ static const u32 intel_cursor_formats[] = {
 	DRM_FORMAT_ARGB8888,
 };
 
-static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
+static u32 intel_cursor_surf_offset(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state);
-	u32 base;
-
-	if (DISPLAY_INFO(display)->cursor_needs_physical)
-		base = plane_state->phys_dma_addr;
-	else
-		base = intel_plane_ggtt_offset(plane_state);
-
-	return base + plane_state->view.color_plane[0].offset;
+	return plane_state->view.color_plane[0].offset;
 }
 
 static u32 intel_cursor_position(const struct intel_crtc_state *crtc_state,
@@ -297,7 +289,7 @@ static void i845_cursor_update_arm(struct intel_dsb *dsb,
 
 		size = CURSOR_HEIGHT(height) | CURSOR_WIDTH(width);
 
-		base = intel_cursor_base(plane_state);
+		base = plane_state->surf;
 		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
 
@@ -675,7 +667,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 		if (width != height)
 			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
 
-		base = intel_cursor_base(plane_state);
+		base = plane_state->surf;
 		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
 
@@ -1051,6 +1043,8 @@ intel_cursor_plane_create(struct intel_display *display,
 		cursor->check_plane = i9xx_check_cursor;
 	}
 
+	cursor->surf_offset = intel_cursor_surf_offset;
+
 	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		cursor->capture_error = g4x_cursor_capture_error;
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ce45261c4a8f..8f8019d40d77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -642,7 +642,6 @@ struct intel_plane_state {
 #define PLANE_HAS_FENCE BIT(0)
 
 	struct intel_fb_view view;
-	u32 phys_dma_addr; /* for cursor_needs_physical */
 
 	/* for legacy cursor fb unpin */
 	struct drm_vblank_work unpin_work;
@@ -665,6 +664,9 @@ struct intel_plane_state {
 	/* chroma upsampler control register */
 	u32 cus_ctl;
 
+	/* surface address register */
+	u32 surf;
+
 	/*
 	 * scaler_id
 	 *    = -1 : not using a scaler
@@ -1534,6 +1536,7 @@ struct intel_plane {
 	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
 	int (*check_plane)(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state);
+	u32 (*surf_offset)(const struct intel_plane_state *plane_state);
 	int (*min_cdclk)(const struct intel_crtc_state *crtc_state,
 			 const struct intel_plane_state *plane_state);
 	void (*async_flip)(struct intel_dsb *dsb,
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 5a0151775a3a..5401d5b27e30 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -277,17 +277,6 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 
 		plane_state->ggtt_vma = vma;
 
-		/*
-		 * Pre-populate the dma address before we enter the vblank
-		 * evade critical section as i915_gem_object_get_dma_address()
-		 * will trigger might_sleep() even if it won't actually sleep,
-		 * which is the case when the fb has already been pinned.
-		 */
-		if (intel_plane_needs_physical(plane)) {
-			struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
-
-			plane_state->phys_dma_addr = i915_gem_object_get_dma_address(obj, 0);
-		}
 	} else {
 		unsigned int alignment = intel_plane_fb_min_alignment(plane_state);
 
@@ -311,6 +300,22 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		WARN_ON(plane_state->ggtt_vma == plane_state->dpt_vma);
 	}
 
+	/*
+	 * Pre-populate the dma address before we enter the vblank
+	 * evade critical section as i915_gem_object_get_dma_address()
+	 * will trigger might_sleep() even if it won't actually sleep,
+	 * which is the case when the fb has already been pinned.
+	 */
+	if (intel_plane_needs_physical(plane)) {
+		struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
+
+		plane_state->surf = i915_gem_object_get_dma_address(obj, 0) +
+			plane->surf_offset(plane_state);
+	} else {
+		plane_state->surf = intel_plane_ggtt_offset(plane_state) +
+			plane->surf_offset(plane_state);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 4246173ed311..786edbb43dbb 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -360,6 +360,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	    i915_vma_pin_fence(vma) == 0 && vma->fence)
 		plane_state->flags |= PLANE_HAS_FENCE;
 
+	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
 	plane_state->uapi.src_w = fb->width << 16;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index e6844df837af..230f90e79d2a 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -395,15 +395,12 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
-	u32 sprctl, linear_offset;
+	u32 sprctl;
 
 	sprctl = plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
 
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
 	if (display->platform.cherryview && pipe == PIPE_B)
 		chv_sprite_update_csc(plane_state);
 
@@ -418,7 +415,8 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
 
 	intel_de_write_fw(display, SPCONSTALPHA(pipe, plane_id), 0);
 
-	intel_de_write_fw(display, SPLINOFF(pipe, plane_id), linear_offset);
+	intel_de_write_fw(display, SPLINOFF(pipe, plane_id),
+			  intel_fb_xy_to_linear(x, y, plane_state, 0));
 	intel_de_write_fw(display, SPTILEOFF(pipe, plane_id),
 			  SP_OFFSET_Y(y) | SP_OFFSET_X(x));
 
@@ -428,8 +426,7 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(display, SPCNTR(pipe, plane_id), sprctl);
-	intel_de_write_fw(display, SPSURF(pipe, plane_id),
-			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
+	intel_de_write_fw(display, SPSURF(pipe, plane_id), plane_state->surf);
 
 	vlv_sprite_update_clrc(plane_state);
 	vlv_sprite_update_gamma(plane_state);
@@ -830,15 +827,12 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
-	u32 sprctl, linear_offset;
+	u32 sprctl;
 
 	sprctl = plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
 
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
 	if (key->flags) {
 		intel_de_write_fw(display, SPRKEYVAL(pipe), key->min_value);
 		intel_de_write_fw(display, SPRKEYMSK(pipe),
@@ -852,7 +846,8 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
 		intel_de_write_fw(display, SPROFFSET(pipe),
 				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	} else {
-		intel_de_write_fw(display, SPRLINOFF(pipe), linear_offset);
+		intel_de_write_fw(display, SPRLINOFF(pipe),
+				  intel_fb_xy_to_linear(x, y, plane_state, 0));
 		intel_de_write_fw(display, SPRTILEOFF(pipe),
 				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	}
@@ -863,8 +858,7 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(display, SPRCTL(pipe), sprctl);
-	intel_de_write_fw(display, SPRSURF(pipe),
-			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
+	intel_de_write_fw(display, SPRSURF(pipe), plane_state->surf);
 
 	ivb_sprite_update_gamma(plane_state);
 }
@@ -1181,15 +1175,12 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-	u32 dvssurf_offset = plane_state->view.color_plane[0].offset;
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
-	u32 dvscntr, linear_offset;
+	u32 dvscntr;
 
 	dvscntr = plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
 
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
 	if (key->flags) {
 		intel_de_write_fw(display, DVSKEYVAL(pipe), key->min_value);
 		intel_de_write_fw(display, DVSKEYMSK(pipe),
@@ -1197,7 +1188,8 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 		intel_de_write_fw(display, DVSKEYMAX(pipe), key->max_value);
 	}
 
-	intel_de_write_fw(display, DVSLINOFF(pipe), linear_offset);
+	intel_de_write_fw(display, DVSLINOFF(pipe),
+			  intel_fb_xy_to_linear(x, y, plane_state, 0));
 	intel_de_write_fw(display, DVSTILEOFF(pipe),
 			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
 
@@ -1207,8 +1199,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(display, DVSCNTR(pipe), dvscntr);
-	intel_de_write_fw(display, DVSSURF(pipe),
-			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
+	intel_de_write_fw(display, DVSSURF(pipe), plane_state->surf);
 
 	if (display->platform.g4x)
 		g4x_sprite_update_gamma(plane_state);
@@ -1624,6 +1615,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->capture_error = vlv_sprite_capture_error;
 		plane->get_hw_state = vlv_sprite_get_hw_state;
 		plane->check_plane = vlv_sprite_check;
+		plane->surf_offset = i965_plane_surf_offset;
 		plane->max_stride = i965_plane_max_stride;
 		plane->min_alignment = vlv_plane_min_alignment;
 		plane->min_cdclk = vlv_plane_min_cdclk;
@@ -1648,6 +1640,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->capture_error = ivb_sprite_capture_error;
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
+		plane->surf_offset = i965_plane_surf_offset;
 
 		if (display->platform.broadwell || display->platform.haswell) {
 			plane->max_stride = hsw_sprite_max_stride;
@@ -1673,6 +1666,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->capture_error = g4x_sprite_capture_error;
 		plane->get_hw_state = g4x_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
+		plane->surf_offset = i965_plane_surf_offset;
 		plane->max_stride = g4x_sprite_max_stride;
 		plane->min_alignment = g4x_sprite_min_alignment;
 		plane->min_cdclk = g4x_sprite_min_cdclk;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e20972ddfa09..a61dc9dea3fb 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1285,13 +1285,20 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 	}
 }
 
-static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
-			  int color_plane)
+static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
 {
+	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
+		return 1;
+	else
+		return 0;
+}
+
+static u32 skl_plane_surf_offset(const struct intel_plane_state *plane_state)
+{
+	int color_plane = icl_plane_color_plane(plane_state);
 	u32 plane_surf;
 
-	plane_surf = intel_plane_ggtt_offset(plane_state) +
-		skl_surf_address(plane_state, color_plane);
+	plane_surf = skl_surf_address(plane_state, color_plane);
 
 	if (plane_state->decrypt)
 		plane_surf |= PLANE_SURF_DECRYPT;
@@ -1373,14 +1380,6 @@ static void icl_plane_csc_load_black(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
 }
 
-static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
-{
-	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
-		return 1;
-	else
-		return 0;
-}
-
 static void
 skl_plane_update_noarm(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
@@ -1476,7 +1475,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
-			   skl_plane_surf(plane_state, 0));
+			   plane_state->surf);
 }
 
 static void icl_plane_update_sel_fetch_noarm(struct intel_dsb *dsb,
@@ -1632,7 +1631,6 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	int color_plane = icl_plane_color_plane(plane_state);
 	u32 plane_ctl;
 
 	plane_ctl = plane_state->ctl |
@@ -1658,7 +1656,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
-			   skl_plane_surf(plane_state, color_plane));
+			   plane_state->surf);
 }
 
 static void skl_plane_capture_error(struct intel_crtc *crtc,
@@ -1682,10 +1680,10 @@ skl_plane_async_flip(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	u32 plane_ctl = plane_state->ctl, plane_surf;
+	u32 plane_ctl = plane_state->ctl;
+	u32 plane_surf = plane_state->surf;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
-	plane_surf = skl_plane_surf(plane_state, 0);
 
 	if (async_flip) {
 		if (DISPLAY_VER(display) >= 30)
@@ -2814,7 +2812,7 @@ static void skl_disable_tiling(struct intel_plane *plane)
 	intel_de_write_fw(display, PLANE_CTL(plane->pipe, plane->id), plane_ctl);
 
 	intel_de_write_fw(display, PLANE_SURF(plane->pipe, plane->id),
-			  skl_plane_surf(state, 0));
+			  state->surf);
 }
 
 struct intel_plane *
@@ -2865,6 +2863,8 @@ skl_universal_plane_create(struct intel_display *display,
 	}
 	plane->disable_tiling = skl_disable_tiling;
 
+	plane->surf_offset = skl_plane_surf_offset;
+
 	if (DISPLAY_VER(display) >= 13)
 		plane->max_stride = adl_plane_max_stride;
 	else
@@ -3191,21 +3191,18 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 		to_intel_plane_state(plane->base.state);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = crtc->pipe;
-	u32 base;
 
 	if (!plane_state->uapi.visible)
 		return false;
 
-	base = intel_plane_ggtt_offset(plane_state);
-
 	/*
 	 * We may have moved the surface to a different
 	 * part of ggtt, make the plane aware of that.
 	 */
-	if (plane_config->base == base)
+	if (plane_config->base == plane_state->surf)
 		return false;
 
-	intel_de_write(display, PLANE_SURF(pipe, plane_id), base);
+	intel_de_write(display, PLANE_SURF(pipe, plane_id), plane_state->surf);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index f2cfba674899..9e5de208b6b4 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -12,6 +12,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
+#include "intel_plane.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_ggtt.h"
@@ -432,6 +433,10 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		return PTR_ERR(vma);
 
 	new_plane_state->ggtt_vma = vma;
+
+	new_plane_state->surf = intel_plane_ggtt_offset(new_plane_state) +
+		plane->surf_offset(new_plane_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index b2d27458def5..2aca28f129d3 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -235,6 +235,9 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 		goto nofb;
 
 	plane_state->ggtt_vma = vma;
+
+	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
 	plane_state->uapi.src_w = fb->width << 16;
-- 
2.49.0

