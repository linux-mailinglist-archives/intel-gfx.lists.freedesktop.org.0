Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AEA3444F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D4710EB03;
	Thu, 13 Feb 2025 15:02:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="El+WkoA7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD5010EB02
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458974; x=1770994974;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SviIxuVVUqopm0dk0MoC56OjT0nRJjmXE/+4GqieRMw=;
 b=El+WkoA7/ZNK8kMi55JsJnGokKOThaHkKE/y4l0P5m/MzykuaXC25M4q
 5qy9cs9I1gMyclFUWJhB7b8zfzOAr5BCGxCtQ7Tl5paoiD8UKP6fHoNA6
 hkYa0MB38DGtHPkkDi9j/IWTx2ZN1/qb7j1XSbHp/F5D0tJ6tLCM/dkOv
 9x/+NkMSBs0xFyr95vItnyYF12TIBTWebWDGosZSaHY8Q8s0UxGt0nU2Z
 hrR+FN+IgKJVH0OrbaIAndPxGqHu5i4npdibGVtMdOvuvnqRYMghyhLas
 mOixGRsZBZWxdTZ3jREcCocn/mKBDyrSg73+0+CAoLBZCr2GkTJ3wMB9N w==;
X-CSE-ConnectionGUID: rtwLtUXXR8yQZRQ5xgftmQ==
X-CSE-MsgGUID: S6X1TXOnTb+hlPz9ZAyWCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567613"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567613"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:54 -0800
X-CSE-ConnectionGUID: KjTiM+31S5CniGplwJTebg==
X-CSE-MsgGUID: BlDduPzMRySGa5080MtDdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915: Relocate some other plane fb related stuff
 into intel_fb.c
Date: Thu, 13 Feb 2025 17:02:19 +0200
Message-ID: <20250213150220.13580-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

Move intel_fb_xy_to_linear() and intel_add_fb_offsets()
These are technially sitting somewhere between plane vs. fb code,
but we do have a bunch of code like that in intel_fb.c anyway.
Might need to think about splitting intel_fb.c into pure fb vs.
plane->fb related stuff somehow, but dunno if that's even feasible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 --------------------
 drivers/gpu/drm/i915/display/intel_display.h |  5 ----
 drivers/gpu/drm/i915/display/intel_fb.c      | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  6 ++++
 4 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c38c37afc154..c58b245ce935 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -601,37 +601,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
 
-/*
- * Convert the x/y offsets into a linear offset.
- * Only valid with 0/180 degree rotation, which is fine since linear
- * offset is only used with linear buffers on pre-hsw and tiled buffers
- * with gen2/3, and 90/270 degree rotations isn't supported on any of them.
- */
-u32 intel_fb_xy_to_linear(int x, int y,
-			  const struct intel_plane_state *state,
-			  int color_plane)
-{
-	const struct drm_framebuffer *fb = state->hw.fb;
-	unsigned int cpp = fb->format->cpp[color_plane];
-	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
-
-	return y * pitch + x * cpp;
-}
-
-/*
- * Add the x/y offsets derived from fb->offsets[] to the user
- * specified plane src x/y offsets. The resulting x/y offsets
- * specify the start of scanout from the beginning of the gtt mapping.
- */
-void intel_add_fb_offsets(int *x, int *y,
-			  const struct intel_plane_state *state,
-			  int color_plane)
-
-{
-	*x += state->view.color_plane[color_plane].x;
-	*y += state->view.color_plane[color_plane].y;
-}
-
 u32 intel_plane_fb_max_stride(struct drm_device *drm,
 			      u32 pixel_format, u64 modifier)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a7bd82662adf..ffbec2c4aabc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -460,11 +460,6 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 			   const char *name, u32 reg);
 void intel_init_display_hooks(struct drm_i915_private *dev_priv);
-unsigned int intel_fb_xy_to_linear(int x, int y,
-				   const struct intel_plane_state *state,
-				   int plane);
-void intel_add_fb_offsets(int *x, int *y,
-			  const struct intel_plane_state *state, int plane);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c1923b4c13d6..399babb57030 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1937,6 +1937,36 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
 	else
 		*view = fb->normal_view;
 }
+/*
+ * Convert the x/y offsets into a linear offset.
+ * Only valid with 0/180 degree rotation, which is fine since linear
+ * offset is only used with linear buffers on pre-hsw and tiled buffers
+ * with gen2/3, and 90/270 degree rotations isn't supported on any of them.
+ */
+u32 intel_fb_xy_to_linear(int x, int y,
+			  const struct intel_plane_state *state,
+			  int color_plane)
+{
+	const struct drm_framebuffer *fb = state->hw.fb;
+	unsigned int cpp = fb->format->cpp[color_plane];
+	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
+
+	return y * pitch + x * cpp;
+}
+
+/*
+ * Add the x/y offsets derived from fb->offsets[] to the user
+ * specified plane src x/y offsets. The resulting x/y offsets
+ * specify the start of scanout from the beginning of the gtt mapping.
+ */
+void intel_add_fb_offsets(int *x, int *y,
+			  const struct intel_plane_state *state,
+			  int color_plane)
+
+{
+	*x += state->view.color_plane[color_plane].x;
+	*y += state->view.color_plane[color_plane].y;
+}
 
 static
 u32 intel_fb_max_stride(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index d04d9274bb71..46286a40e10e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -93,6 +93,12 @@ unsigned int intel_fb_view_vtd_guard(const struct drm_framebuffer *fb,
 				     unsigned int rotation);
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
 
+unsigned int intel_fb_xy_to_linear(int x, int y,
+				   const struct intel_plane_state *state,
+				   int plane);
+void intel_add_fb_offsets(int *x, int *y,
+			  const struct intel_plane_state *state, int plane);
+
 int intel_framebuffer_init(struct intel_framebuffer *ifb,
 			   struct drm_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd);
-- 
2.45.3

