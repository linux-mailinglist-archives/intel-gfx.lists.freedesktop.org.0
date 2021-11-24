Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F81345B931
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE3B6E865;
	Wed, 24 Nov 2021 11:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5BF6E865
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215287709"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="215287709"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509436735"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Nov 2021 03:37:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:37 +0200
Message-Id: <20211124113652.22090-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/20] drm/i915/fbc: Nuke more FBC state
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

There isn't a good reason why we'd have to cache all this
plane state stuff in the FBC state. Instead we can just
pre-calculate what FBC will really need.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 132 +++++++++++------------
 drivers/gpu/drm/i915/i915_drv.h          |  20 +---
 2 files changed, 67 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6368dddf977c..1e8b75cdfad8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -73,25 +73,25 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 }
 
 /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int _intel_fbc_cfb_stride(const struct intel_fbc_state_cache *cache)
+static unsigned int _intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
 {
 	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
 
-	return cache->fb.stride * cpp;
+	return intel_fbc_plane_stride(plane_state) * cpp;
 }
 
 /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int skl_fbc_min_cfb_stride(struct intel_fbc *fbc,
-					   const struct intel_fbc_state_cache *cache)
+static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = fbc->i915;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
 	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
+	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
 	unsigned int height = 4; /* FBC segment is 4 lines */
 	unsigned int stride;
 
 	/* minimum segment stride we can use */
-	stride = cache->plane.src_w * cpp * height / limit;
+	stride = width * cpp * height / limit;
 
 	/*
 	 * Wa_16011863758: icl+
@@ -111,11 +111,10 @@ static unsigned int skl_fbc_min_cfb_stride(struct intel_fbc *fbc,
 }
 
 /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int intel_fbc_cfb_stride(struct intel_fbc *fbc,
-					 const struct intel_fbc_state_cache *cache)
+static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-	unsigned int stride = _intel_fbc_cfb_stride(cache);
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
 
 	/*
 	 * At least some of the platforms require each 4 line segment to
@@ -123,30 +122,30 @@ static unsigned int intel_fbc_cfb_stride(struct intel_fbc *fbc,
 	 * that regardless of the compression limit we choose later.
 	 */
 	if (DISPLAY_VER(i915) >= 9)
-		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(fbc, cache));
+		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(plane_state));
 	else
 		return stride;
 }
 
-static unsigned int intel_fbc_cfb_size(struct intel_fbc *fbc,
-				       const struct intel_fbc_state_cache *cache)
+static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-	int lines = cache->plane.src_h;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	int lines = drm_rect_height(&plane_state->uapi.src) >> 16;
 
 	if (DISPLAY_VER(i915) == 7)
 		lines = min(lines, 2048);
 	else if (DISPLAY_VER(i915) >= 8)
 		lines = min(lines, 2560);
 
-	return lines * intel_fbc_cfb_stride(fbc, cache);
+	return lines * intel_fbc_cfb_stride(plane_state);
 }
 
-static u16 intel_fbc_override_cfb_stride(struct intel_fbc *fbc,
-					 const struct intel_fbc_state_cache *cache)
+static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	unsigned int stride = _intel_fbc_cfb_stride(cache);
-	unsigned int stride_aligned = intel_fbc_cfb_stride(fbc, cache);
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
+	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	/*
 	 * Override stride in 64 byte units per 4 line segment.
@@ -156,8 +155,7 @@ static u16 intel_fbc_override_cfb_stride(struct intel_fbc *fbc,
 	 * we always need to use the override there.
 	 */
 	if (stride != stride_aligned ||
-	    (DISPLAY_VER(fbc->i915) == 9 &&
-	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
+	    (DISPLAY_VER(i915) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
 		return stride_aligned * 4 / 64;
 
 	return 0;
@@ -925,31 +923,22 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
-static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
-					 const struct intel_crtc_state *crtc_state,
-					 const struct intel_plane_state *plane_state)
+static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
+					 struct intel_crtc *crtc,
+					 struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_plane_state *plane_state =
+		intel_atomic_get_new_plane_state(state, plane);
+	struct intel_fbc *fbc = plane->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
-	struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	cache->no_fbc_reason = plane_state->no_fbc_reason;
 	if (cache->no_fbc_reason)
 		return;
 
-	/*
-	 * Src coordinates are already rotated by 270 degrees for
-	 * the 90/270 degree plane rotation cases (to match the
-	 * GTT mapping), hence no need to account for rotation here.
-	 */
-	cache->plane.src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
-	cache->plane.src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-
-	cache->fb.format = fb->format;
-	cache->fb.modifier = fb->modifier;
-	cache->fb.stride = intel_fbc_plane_stride(plane_state);
-
 	/* FBC1 compression interval: arbitrary choice of 1 second */
 	cache->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
 
@@ -963,12 +952,15 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 		cache->fence_id = plane_state->ggtt_vma->fence->id;
 	else
 		cache->fence_id = -1;
+
+	cache->cfb_stride = intel_fbc_cfb_stride(plane_state);
+	cache->cfb_size = intel_fbc_cfb_size(plane_state);
+	cache->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
 }
 
 static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
 {
-	return intel_fbc_cfb_size(fbc, &fbc->state_cache) >
-		fbc->compressed_fb.size * fbc->limit;
+	return fbc->state_cache.cfb_size > fbc->compressed_fb.size * fbc->limit;
 }
 
 static bool intel_fbc_can_enable(struct intel_fbc *fbc)
@@ -1178,45 +1170,53 @@ static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
 	params->interval = cache->interval;
 	params->crtc.i9xx_plane = to_intel_plane(crtc->base.primary)->i9xx_plane;
 
-	params->fb.format = cache->fb.format;
-	params->fb.modifier = cache->fb.modifier;
-	params->fb.stride = cache->fb.stride;
-
-	params->cfb_stride = intel_fbc_cfb_stride(fbc, cache);
-	params->cfb_size = intel_fbc_cfb_size(fbc, cache);
-	params->override_cfb_stride = intel_fbc_override_cfb_stride(fbc, cache);
+	params->cfb_stride = cache->cfb_stride;
+	params->cfb_size = cache->cfb_size;
+	params->override_cfb_stride = cache->override_cfb_stride;
 }
 
-static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
+static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
+				    struct intel_plane *plane)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = plane->fbc;
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_plane_state *old_plane_state =
+		intel_atomic_get_old_plane_state(state, plane);
+	const struct intel_plane_state *new_plane_state =
+		intel_atomic_get_new_plane_state(state, plane);
+	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
+	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
 	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	const struct intel_fbc_reg_params *params = &fbc->params;
 
-	if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
+	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
 		return false;
 
 	if (!intel_fbc_can_activate(crtc))
 		return false;
 
-	if (params->fb.format != cache->fb.format)
+	if (!old_fb || !new_fb)
 		return false;
 
-	if (params->fb.modifier != cache->fb.modifier)
+	if (old_fb->format->format != new_fb->format->format)
 		return false;
 
-	if (params->fb.stride != cache->fb.stride)
+	if (old_fb->modifier != new_fb->modifier)
 		return false;
 
-	if (params->cfb_stride != intel_fbc_cfb_stride(fbc, cache))
+	if (intel_fbc_plane_stride(old_plane_state) !=
+	    intel_fbc_plane_stride(new_plane_state))
 		return false;
 
-	if (params->cfb_size != intel_fbc_cfb_size(fbc, cache))
+	if (params->cfb_stride != cache->cfb_stride)
 		return false;
 
-	if (params->override_cfb_stride != intel_fbc_override_cfb_stride(fbc, cache))
+	if (params->cfb_size != cache->cfb_size)
+		return false;
+
+	if (params->override_cfb_stride != cache->override_cfb_stride)
 		return false;
 
 	return true;
@@ -1226,8 +1226,6 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1243,10 +1241,10 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 	if (fbc->crtc != crtc)
 		goto unlock;
 
-	intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
+	intel_fbc_update_state_cache(state, crtc, plane);
 	fbc->flip_pending = true;
 
-	if (!intel_fbc_can_flip_nuke(crtc_state)) {
+	if (!intel_fbc_can_flip_nuke(state, crtc, plane)) {
 		intel_fbc_deactivate(fbc, reason);
 
 		/*
@@ -1425,8 +1423,6 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
@@ -1455,12 +1451,12 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&i915->drm, fbc->active);
 
-	intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
+	intel_fbc_update_state_cache(state, crtc, plane);
 
 	if (cache->no_fbc_reason)
 		goto out;
 
-	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(fbc, cache), min_limit)) {
+	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(plane_state), min_limit)) {
 		fbc->no_fbc_reason = "not enough stolen memory";
 		goto out;
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d79aa827d937..66fa46d41fa5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -436,18 +436,10 @@ struct intel_fbc {
 	struct intel_fbc_state_cache {
 		const char *no_fbc_reason;
 
-		struct {
-			int src_w;
-			int src_h;
-		} plane;
-
-		struct {
-			const struct drm_format_info *format;
-			unsigned int stride;
-			u64 modifier;
-		} fb;
-
+		unsigned int cfb_stride;
+		unsigned int cfb_size;
 		unsigned int fence_y_offset;
+		u16 override_cfb_stride;
 		u16 interval;
 		s8 fence_id;
 	} state_cache;
@@ -464,12 +456,6 @@ struct intel_fbc {
 			enum i9xx_plane_id i9xx_plane;
 		} crtc;
 
-		struct {
-			const struct drm_format_info *format;
-			unsigned int stride;
-			u64 modifier;
-		} fb;
-
 		unsigned int cfb_stride;
 		unsigned int cfb_size;
 		unsigned int fence_y_offset;
-- 
2.32.0

