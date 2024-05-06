Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29478BCE98
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F4910F028;
	Mon,  6 May 2024 12:57:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnNPQ+KQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2598F10F028;
 Mon,  6 May 2024 12:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000256; x=1746536256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FgAsmox3O6p3hMnyLYdSLaRC4EmbTEle4c5W2USXWSw=;
 b=OnNPQ+KQ+cejPmqdBnmk9rpZPcwhOIdbvbcbBFRxXRfRHxpL7ZzUazDT
 iEfP6fhq/QBsabJozBHQiT9q8gqtP5kwi48/XvPcTNEyHxGkPa4eH7xnE
 9ZrPwkeNNzuoqJgg5+gt1wrpVMfR0Swlp/t60Hm9YS/2+1qjPKrq+YbA3
 c9tXPv2Klo2tXwoJEf60C5P+teqAGlXX59sbX8sxzDpATXpIAh7MA+/Go
 B08efvTWew3Zhbz6uLocmJ4N4HNRuOvZWb2nyim3k9gFyJuYX97ftwo2Y
 Pq0Ng8zKl29ouf13RO9PIBGf5QEnCeaSDCm6JqL5h4DLBEm5x+qwqofyc g==;
X-CSE-ConnectionGUID: rGg83Ry9QcW3QVLzD9ytFw==
X-CSE-MsgGUID: iTdF3uUjQAmu0vqign/8Zw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865325"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865325"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:36 -0700
X-CSE-ConnectionGUID: MSzLHzuVSyGUAQ5Hvj2rMw==
X-CSE-MsgGUID: gtw1xRIbSYybG/PCHLpRzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164947"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915: Polish types in fb calculations
Date: Mon,  6 May 2024 15:57:14 +0300
Message-ID: <20240506125718.26001-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

Be a bit more consistent in our use of integer types in
the fb related calculatiosn. u32 we generally only use
for ggtt offsets and such, and everything else can be regular
(unsigned) ints.

There's also an overabundance of consts for local variables
in skl_check_main_surface() which is not something we generally
do. So get rid of those while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 27 +++++++++--------
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  2 +-
 .../drm/i915/display/skl_universal_plane.c    | 29 +++++++++----------
 4 files changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 21303fa4f08f..ea4d8ba55ad8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -266,7 +266,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 	 * despite them not using the linear offset anymore.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 4 && fb->modifier == I915_FORMAT_MOD_X_TILED) {
-		u32 alignment = intel_surf_alignment(fb, 0);
+		unsigned int alignment = intel_surf_alignment(fb, 0);
 		int cpp = fb->format->cpp[0];
 
 		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index bf24f48a1e76..b6638726949d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1045,7 +1045,7 @@ static u32 intel_compute_aligned_offset(struct drm_i915_private *i915,
 					int color_plane,
 					unsigned int pitch,
 					unsigned int rotation,
-					u32 alignment)
+					unsigned int alignment)
 {
 	unsigned int cpp = fb->format->cpp[color_plane];
 	u32 offset, offset_aligned;
@@ -1102,8 +1102,8 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 	struct drm_i915_private *i915 = to_i915(intel_plane->base.dev);
 	const struct drm_framebuffer *fb = state->hw.fb;
 	unsigned int rotation = state->hw.rotation;
-	int pitch = state->view.color_plane[color_plane].mapping_stride;
-	u32 alignment;
+	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
+	unsigned int alignment;
 
 	if (intel_plane->id == PLANE_CURSOR)
 		alignment = intel_cursor_alignment(i915);
@@ -1120,8 +1120,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 				 int color_plane)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
-	unsigned int height;
-	u32 alignment, unused;
+	unsigned int height, alignment, unused;
 
 	if (DISPLAY_VER(i915) >= 12 &&
 	    !intel_fb_needs_pot_stride_remap(to_intel_framebuffer(fb)) &&
@@ -1508,8 +1507,8 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		check_array_bounds(i915, view->gtt.remapped.plane, color_plane);
 
 		if (view->gtt.remapped.plane_alignment) {
-			unsigned int aligned_offset = ALIGN(gtt_offset,
-							    view->gtt.remapped.plane_alignment);
+			u32 aligned_offset = ALIGN(gtt_offset,
+						   view->gtt.remapped.plane_alignment);
 
 			size += aligned_offset - gtt_offset;
 			gtt_offset = aligned_offset;
@@ -1795,16 +1794,16 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 		return 128 * 1024;
 }
 
-static u32
+static unsigned int
 intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 {
 	struct drm_i915_private *dev_priv = to_i915(fb->dev);
-	u32 tile_width;
+	unsigned int tile_width;
 
 	if (is_surface_linear(fb, color_plane)) {
-		u32 max_stride = intel_plane_fb_max_stride(dev_priv,
-							   fb->format->format,
-							   fb->modifier);
+		unsigned int max_stride = intel_plane_fb_max_stride(dev_priv,
+								    fb->format->format,
+								    fb->modifier);
 
 		/*
 		 * To make remapping with linear generally feasible
@@ -2061,7 +2060,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
 
 	for (i = 0; i < fb->format->num_planes; i++) {
-		u32 stride_alignment;
+		unsigned int stride_alignment;
 
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
 			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
@@ -2078,7 +2077,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		}
 
 		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
-			int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
+			unsigned int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
 				drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 5b71d9488184..041f09f76628 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -113,9 +113,9 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	intel_wakeref_t wakeref;
 	struct i915_gem_ww_ctx ww;
+	unsigned int alignment;
 	struct i915_vma *vma;
 	unsigned int pinctl;
-	u32 alignment;
 	int ret;
 
 	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b8103d6ebc1f..24f90368d344 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1619,7 +1619,7 @@ skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
 	int aux_x = plane_state->view.color_plane[ccs_plane].x;
 	int aux_y = plane_state->view.color_plane[ccs_plane].y;
 	u32 aux_offset = plane_state->view.color_plane[ccs_plane].offset;
-	u32 alignment = intel_surf_alignment(fb, ccs_plane);
+	unsigned int alignment = intel_surf_alignment(fb, ccs_plane);
 	int hsub;
 	int vsub;
 
@@ -1639,8 +1639,7 @@ skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
 							       plane_state,
 							       ccs_plane,
 							       aux_offset,
-							       aux_offset -
-								alignment);
+							       aux_offset - alignment);
 		aux_x = x * hsub + aux_x % hsub;
 		aux_y = y * vsub + aux_y % vsub;
 	}
@@ -1662,10 +1661,10 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	const int aux_plane = skl_main_to_aux_plane(fb, 0);
-	const u32 aux_offset = plane_state->view.color_plane[aux_plane].offset;
-	const u32 alignment = intel_surf_alignment(fb, 0);
-	const int w = drm_rect_width(&plane_state->uapi.src) >> 16;
+	int aux_plane = skl_main_to_aux_plane(fb, 0);
+	u32 aux_offset = plane_state->view.color_plane[aux_plane].offset;
+	unsigned int alignment = intel_surf_alignment(fb, 0);
+	int w = drm_rect_width(&plane_state->uapi.src) >> 16;
 
 	intel_add_fb_offsets(x, y, plane_state, 0);
 	*offset = intel_plane_compute_aligned_offset(x, y, plane_state, 0);
@@ -1715,13 +1714,13 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	const unsigned int rotation = plane_state->hw.rotation;
 	int x = plane_state->uapi.src.x1 >> 16;
 	int y = plane_state->uapi.src.y1 >> 16;
-	const int w = drm_rect_width(&plane_state->uapi.src) >> 16;
-	const int h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	const int min_width = intel_plane_min_width(plane, fb, 0, rotation);
-	const int max_width = intel_plane_max_width(plane, fb, 0, rotation);
-	const int max_height = intel_plane_max_height(plane, fb, 0, rotation);
-	const int aux_plane = skl_main_to_aux_plane(fb, 0);
-	const u32 alignment = intel_surf_alignment(fb, 0);
+	int w = drm_rect_width(&plane_state->uapi.src) >> 16;
+	int h = drm_rect_height(&plane_state->uapi.src) >> 16;
+	int min_width = intel_plane_min_width(plane, fb, 0, rotation);
+	int max_width = intel_plane_max_width(plane, fb, 0, rotation);
+	int max_height = intel_plane_max_height(plane, fb, 0, rotation);
+	unsigned int alignment = intel_surf_alignment(fb, 0);
+	int aux_plane = skl_main_to_aux_plane(fb, 0);
 	u32 offset;
 	int ret;
 
@@ -1809,7 +1808,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 
 	if (ccs_plane) {
 		u32 aux_offset = plane_state->view.color_plane[ccs_plane].offset;
-		u32 alignment = intel_surf_alignment(fb, uv_plane);
+		unsigned int alignment = intel_surf_alignment(fb, uv_plane);
 
 		if (offset > aux_offset)
 			offset = intel_plane_adjust_aligned_offset(&x, &y,
-- 
2.43.2

