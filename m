Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239E445B93D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4048E6E856;
	Wed, 24 Nov 2021 11:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366716E8A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="233981769"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="233981769"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="650373239"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 24 Nov 2021 03:37:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:48 +0200
Message-Id: <20211124113652.22090-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/20] drm/i915/fbc: Nuke state_cache
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

fbc->state_cache has now become useless. We can simply update
the reg params directly from the plane/crtc states during
__intel_fbc_enable().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 169 +++++++++--------------
 1 file changed, 62 insertions(+), 107 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 74ba54d70e57..7d128a49e8e1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -60,7 +60,6 @@ struct intel_fbc_funcs {
 };
 
 struct intel_fbc_state {
-	const char *no_fbc_reason;
 	enum i9xx_plane_id i9xx_plane;
 	unsigned int cfb_stride;
 	unsigned int cfb_size;
@@ -98,13 +97,6 @@ struct intel_fbc {
 	bool underrun_detected;
 	struct work_struct underrun_work;
 
-	/*
-	 * Due to the atomic rules we can't access some structures without the
-	 * appropriate locking, so we cache information here in order to avoid
-	 * these problems.
-	 */
-	struct intel_fbc_state state_cache;
-
 	/*
 	 * This structure contains everything that's relevant to program the
 	 * hardware registers. When we want to figure out if we need to disable
@@ -673,6 +665,8 @@ static void intel_fbc_activate(struct intel_fbc *fbc)
 {
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
+
+	fbc->no_fbc_reason = NULL;
 }
 
 static void intel_fbc_deactivate(struct intel_fbc *fbc, const char *reason)
@@ -714,9 +708,7 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
 
 static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
 {
-	int fb_cpp = plane_state->hw.fb ? plane_state->hw.fb->format->cpp[0] : 0;
-
-	return fb_cpp == 2 ? 2 : 1;
+	return plane_state->hw.fb->format->cpp[0] == 2 ? 2 : 1;
 }
 
 static int intel_fbc_max_limit(struct drm_i915_private *i915)
@@ -962,10 +954,9 @@ static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state *cache = &fbc->state_cache;
+	struct intel_fbc_state *cache = &fbc->params;
 
-	cache->no_fbc_reason = plane_state->no_fbc_reason;
-	if (cache->no_fbc_reason)
+	if (plane_state->no_fbc_reason)
 		return;
 
 	cache->i9xx_plane = plane->i9xx_plane;
@@ -989,9 +980,46 @@ static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
 	cache->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
 }
 
-static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
+static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 {
-	return fbc->state_cache.cfb_size > fbc->compressed_fb.size * fbc->limit;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	/* The use of a CPU fence is one of two ways to detect writes by the
+	 * CPU to the scanout and trigger updates to the FBC.
+	 *
+	 * The other method is by software tracking (see
+	 * intel_fbc_invalidate/flush()), it will manually notify FBC and nuke
+	 * the current compressed buffer and recompress it.
+	 *
+	 * Note that is possible for a tiled surface to be unmappable (and
+	 * so have no fence associated with it) due to aperture constraints
+	 * at the time of pinning.
+	 *
+	 * FIXME with 90/270 degree rotation we should use the fence on
+	 * the normal GTT view (the rotated view doesn't even have a
+	 * fence). Would need changes to the FBC fence Y offset as well.
+	 * For now this will effectively disable FBC with 90/270 degree
+	 * rotation.
+	 */
+	return DISPLAY_VER(i915) >= 9 ||
+		(plane_state->flags & PLANE_HAS_FENCE &&
+		 plane_state->ggtt_vma->fence);
+}
+
+static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct intel_fbc *fbc = plane->fbc;
+
+	return intel_fbc_min_limit(plane_state) <= fbc->limit &&
+		intel_fbc_cfb_size(plane_state) <= fbc->compressed_fb.size * fbc->limit;
+}
+
+static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
+{
+	return !plane_state->no_fbc_reason &&
+		intel_fbc_is_fence_ok(plane_state) &&
+		intel_fbc_is_cfb_ok(plane_state);
 }
 
 static int intel_fbc_check_plane(struct intel_atomic_state *state,
@@ -1108,74 +1136,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	return 0;
 }
 
-static bool intel_fbc_can_activate(struct intel_fbc *fbc)
-{
-	struct drm_i915_private *i915 = fbc->i915;
-	struct intel_fbc_state *cache = &fbc->state_cache;
-
-	if (cache->no_fbc_reason) {
-		fbc->no_fbc_reason = cache->no_fbc_reason;
-		return false;
-	}
-
-	/* The use of a CPU fence is one of two ways to detect writes by the
-	 * CPU to the scanout and trigger updates to the FBC.
-	 *
-	 * The other method is by software tracking (see
-	 * intel_fbc_invalidate/flush()), it will manually notify FBC and nuke
-	 * the current compressed buffer and recompress it.
-	 *
-	 * Note that is possible for a tiled surface to be unmappable (and
-	 * so have no fence associated with it) due to aperture constraints
-	 * at the time of pinning.
-	 *
-	 * FIXME with 90/270 degree rotation we should use the fence on
-	 * the normal GTT view (the rotated view doesn't even have a
-	 * fence). Would need changes to the FBC fence Y offset as well.
-	 * For now this will effectively disable FBC with 90/270 degree
-	 * rotation.
-	 */
-	if (DISPLAY_VER(i915) < 9 && cache->fence_id < 0) {
-		fbc->no_fbc_reason = "framebuffer not tiled or fenced";
-		return false;
-	}
-
-	/*
-	 * It is possible for the required CFB size change without a
-	 * crtc->disable + crtc->enable since it is possible to change the
-	 * stride without triggering a full modeset. Since we try to
-	 * over-allocate the CFB, there's a chance we may keep FBC enabled even
-	 * if this happens, but if we exceed the current CFB size we'll have to
-	 * disable FBC. Notice that it would be possible to disable FBC, wait
-	 * for a frame, free the stolen node, then try to reenable FBC in case
-	 * we didn't get any invalidate/deactivate calls, but this would require
-	 * a lot of tracking just for a specific case. If we conclude it's an
-	 * important case, we can implement it later.
-	 */
-	if (intel_fbc_cfb_size_changed(fbc)) {
-		fbc->no_fbc_reason = "CFB requirements changed";
-		return false;
-	}
-
-	return true;
-}
-
-static void intel_fbc_get_reg_params(struct intel_fbc *fbc)
-{
-	const struct intel_fbc_state *cache = &fbc->state_cache;
-	struct intel_fbc_state *params = &fbc->params;
-
-	/* Since all our fields are integer types, use memset here so the
-	 * comparison function can rely on memcmp because the padding will be
-	 * zero. */
-	*params = *cache;
-}
 
 static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc,
 				    struct intel_plane *plane)
 {
-	struct intel_fbc *fbc = plane->fbc;
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *old_plane_state =
@@ -1184,16 +1149,12 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
 	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
-	const struct intel_fbc_state *cache = &fbc->state_cache;
-	const struct intel_fbc_state *params = &fbc->params;
 
 	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
 		return false;
 
-	if (!intel_fbc_can_activate(fbc))
-		return false;
-
-	if (!old_fb || !new_fb)
+	if (!intel_fbc_is_ok(old_plane_state) ||
+	    !intel_fbc_is_ok(new_plane_state))
 		return false;
 
 	if (old_fb->format->format != new_fb->format->format)
@@ -1206,13 +1167,16 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 	    intel_fbc_plane_stride(new_plane_state))
 		return false;
 
-	if (params->cfb_stride != cache->cfb_stride)
+	if (intel_fbc_cfb_stride(old_plane_state) !=
+	    intel_fbc_cfb_stride(new_plane_state))
 		return false;
 
-	if (params->cfb_size != cache->cfb_size)
+	if (intel_fbc_cfb_size(old_plane_state) !=
+	    intel_fbc_cfb_size(new_plane_state))
 		return false;
 
-	if (params->override_cfb_stride != cache->override_cfb_stride)
+	if (intel_fbc_override_cfb_stride(old_plane_state) !=
+	    intel_fbc_override_cfb_stride(new_plane_state))
 		return false;
 
 	return true;
@@ -1226,7 +1190,6 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 	struct intel_fbc *fbc = plane->fbc;
 	bool need_vblank_wait = false;
 
-	intel_fbc_update_state_cache(state, crtc, plane);
 	fbc->flip_pending = true;
 
 	if (intel_fbc_can_flip_nuke(state, crtc, plane))
@@ -1302,16 +1265,6 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
-	if (!i915->params.enable_fbc) {
-		intel_fbc_deactivate(fbc, "disabled at runtime per module param");
-		__intel_fbc_disable(fbc);
-
-		return;
-	}
-
-	if (!intel_fbc_can_activate(fbc))
-		return;
-
 	if (!fbc->busy_bits)
 		intel_fbc_activate(fbc);
 	else
@@ -1335,7 +1288,6 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 		if (fbc->plane == plane) {
 			fbc->flip_pending = false;
-			intel_fbc_get_reg_params(fbc);
 			__intel_fbc_post_update(fbc);
 		}
 
@@ -1425,15 +1377,12 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state *cache = &fbc->state_cache;
-	int min_limit = intel_fbc_min_limit(plane_state);
 
 	if (fbc->plane) {
 		if (fbc->plane != plane)
 			return;
 
-		if (fbc->limit >= min_limit &&
-		    !intel_fbc_cfb_size_changed(fbc))
+		if (intel_fbc_is_ok(plane_state))
 			return;
 
 		__intel_fbc_disable(fbc);
@@ -1441,17 +1390,22 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&i915->drm, fbc->active);
 
-	intel_fbc_update_state_cache(state, crtc, plane);
+	fbc->no_fbc_reason = plane_state->no_fbc_reason;
+	if (fbc->no_fbc_reason)
+		return;
 
-	if (cache->no_fbc_reason)
+	if (!intel_fbc_is_fence_ok(plane_state)) {
+		fbc->no_fbc_reason = "framebuffer not fenced";
 		return;
+	}
 
 	if (fbc->underrun_detected) {
 		fbc->no_fbc_reason = "FIFO underrun";
 		return;
 	}
 
-	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(plane_state), min_limit)) {
+	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(plane_state),
+				intel_fbc_min_limit(plane_state))) {
 		fbc->no_fbc_reason = "not enough stolen memory";
 		return;
 	}
@@ -1460,6 +1414,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		    plane->base.base.id, plane->base.name);
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
+	intel_fbc_update_state_cache(state, crtc, plane);
 	fbc->plane = plane;
 
 	intel_fbc_program_cfb(fbc);
-- 
2.32.0

