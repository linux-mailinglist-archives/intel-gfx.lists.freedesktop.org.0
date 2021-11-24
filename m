Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BAC45B93E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5FA6E895;
	Wed, 24 Nov 2021 11:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C436E895
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="296064447"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="296064447"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="497645059"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2021 03:37:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:50 +0200
Message-Id: <20211124113652.22090-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/20] drm/i915/fbc: s/parms/fbc_state/
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

Rename the 'params' to just fbc state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 138 +++++++++++------------
 1 file changed, 68 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b6919ca87138..4d2c54acdc89 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -103,7 +103,7 @@ struct intel_fbc {
 	 * something different in the struct. The genx_fbc_activate functions
 	 * are supposed to read from it in order to program the registers.
 	 */
-	struct intel_fbc_state params;
+	struct intel_fbc_state state;
 	const char *no_fbc_reason;
 };
 
@@ -211,12 +211,12 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int cfb_stride;
 	u32 fbc_ctl;
 
-	cfb_stride = params->cfb_stride / fbc->limit;
+	cfb_stride = fbc_state->cfb_stride / fbc->limit;
 
 	/* FBC_CTL wants 32B or 64B units */
 	if (DISPLAY_VER(i915) == 2)
@@ -225,27 +225,27 @@ static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 		cfb_stride = (cfb_stride / 64) - 1;
 
 	fbc_ctl = FBC_CTL_PERIODIC |
-		FBC_CTL_INTERVAL(params->interval) |
+		FBC_CTL_INTERVAL(fbc_state->interval) |
 		FBC_CTL_STRIDE(cfb_stride);
 
 	if (IS_I945GM(i915))
 		fbc_ctl |= FBC_CTL_C3_IDLE; /* 945 needs special SR handling */
 
-	if (params->fence_id >= 0)
-		fbc_ctl |= FBC_CTL_FENCENO(params->fence_id);
+	if (fbc_state->fence_id >= 0)
+		fbc_ctl |= FBC_CTL_FENCENO(fbc_state->fence_id);
 
 	return fbc_ctl;
 }
 
 static u32 i965_fbc_ctl2(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 fbc_ctl2;
 
 	fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM |
-		FBC_CTL_PLANE(params->plane->i9xx_plane);
+		FBC_CTL_PLANE(fbc_state->plane->i9xx_plane);
 
-	if (params->fence_id >= 0)
+	if (fbc_state->fence_id >= 0)
 		fbc_ctl2 |= FBC_CTL_CPU_FENCE_EN;
 
 	return fbc_ctl2;
@@ -274,7 +274,7 @@ static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
 
 static void i8xx_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	int i;
 
@@ -286,7 +286,7 @@ static void i8xx_fbc_activate(struct intel_fbc *fbc)
 		intel_de_write(i915, FBC_CONTROL2,
 			       i965_fbc_ctl2(fbc));
 		intel_de_write(i915, FBC_FENCE_OFF,
-			       params->fence_y_offset);
+			       fbc_state->fence_y_offset);
 	}
 
 	intel_de_write(i915, FBC_CONTROL,
@@ -306,8 +306,8 @@ static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_state *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->plane->i9xx_plane;
+	struct intel_fbc_state *fbc_state = &fbc->state;
+	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -342,8 +342,8 @@ static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 
 static void i965_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_state *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->plane->i9xx_plane;
+	struct intel_fbc_state *fbc_state = &fbc->state;
+	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -378,21 +378,21 @@ static u32 g4x_dpfc_ctl_limit(struct intel_fbc *fbc)
 
 static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
-		DPFC_CTL_PLANE_G4X(params->plane->i9xx_plane);
+		DPFC_CTL_PLANE_G4X(fbc_state->plane->i9xx_plane);
 
 	if (IS_G4X(i915))
 		dpfc_ctl |= DPFC_CTL_SR_EN;
 
-	if (params->fence_id >= 0) {
+	if (fbc_state->fence_id >= 0) {
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_G4X;
 
 		if (DISPLAY_VER(i915) < 6)
-			dpfc_ctl |= DPFC_CTL_FENCENO(params->fence_id);
+			dpfc_ctl |= DPFC_CTL_FENCENO(fbc_state->fence_id);
 	}
 
 	return dpfc_ctl;
@@ -400,11 +400,11 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 
 static void g4x_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, DPFC_FENCE_YOFF,
-		       params->fence_y_offset);
+		       fbc_state->fence_y_offset);
 
 	intel_de_write(i915, DPFC_CONTROL,
 		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
@@ -451,11 +451,11 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 
 static void ilk_fbc_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc_state *params = &fbc->params;
+	struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
-		       params->fence_y_offset);
+		       fbc_state->fence_y_offset);
 
 	intel_de_write(i915, ILK_DPFC_CONTROL,
 		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
@@ -502,15 +502,15 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
 
 static void snb_fbc_program_fence(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 ctl = 0;
 
-	if (params->fence_id >= 0)
-		ctl = SNB_DPFC_FENCE_EN | SNB_DPFC_FENCENO(params->fence_id);
+	if (fbc_state->fence_id >= 0)
+		ctl = SNB_DPFC_FENCE_EN | SNB_DPFC_FENCENO(fbc_state->fence_id);
 
 	intel_de_write(i915, SNB_DPFC_CTL_SA, ctl);
-	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
+	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, fbc_state->fence_y_offset);
 }
 
 static void snb_fbc_activate(struct intel_fbc *fbc)
@@ -539,27 +539,27 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
 
 static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
-	if (params->override_cfb_stride)
+	if (fbc_state->override_cfb_stride)
 		val |= FBC_STRIDE_OVERRIDE |
-			FBC_STRIDE(params->override_cfb_stride / fbc->limit);
+			FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
 
 	intel_de_write(i915, GLK_FBC_STRIDE, val);
 }
 
 static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
 	/* Display WA #0529: skl, kbl, bxt. */
-	if (params->override_cfb_stride)
+	if (fbc_state->override_cfb_stride)
 		val |= CHICKEN_FBC_STRIDE_OVERRIDE |
-			CHICKEN_FBC_STRIDE(params->override_cfb_stride / fbc->limit);
+			CHICKEN_FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
 
 	intel_de_rmw(i915, CHICKEN_MISC_4,
 		     CHICKEN_FBC_STRIDE_OVERRIDE |
@@ -568,16 +568,16 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 
 static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *params = &fbc->params;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
 
 	if (IS_IVYBRIDGE(i915))
-		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->plane->i9xx_plane);
+		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
 
-	if (params->fence_id >= 0)
+	if (fbc_state->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
 
 	if (fbc->false_color)
@@ -631,7 +631,7 @@ static bool intel_fbc_hw_is_active(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_activate(fbc->params.plane);
+	trace_intel_fbc_activate(fbc->state.plane);
 
 	fbc->active = true;
 	fbc->activated = true;
@@ -641,7 +641,7 @@ static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_deactivate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_deactivate(fbc->params.plane);
+	trace_intel_fbc_deactivate(fbc->state.plane);
 
 	fbc->active = false;
 
@@ -655,7 +655,7 @@ static bool intel_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_nuke(fbc->params.plane);
+	trace_intel_fbc_nuke(fbc->state.plane);
 
 	fbc->funcs->nuke(fbc);
 }
@@ -943,9 +943,9 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
-static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
-					 struct intel_crtc *crtc,
-					 struct intel_plane *plane)
+static void intel_fbc_update_state(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc,
+				   struct intel_plane *plane)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *crtc_state =
@@ -953,30 +953,29 @@ static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state *cache = &fbc->params;
+	struct intel_fbc_state *fbc_state = &fbc->state;
 
-	if (plane_state->no_fbc_reason)
-		return;
+	WARN_ON(plane_state->no_fbc_reason);
 
-	cache->plane = plane;
+	fbc_state->plane = plane;
 
 	/* FBC1 compression interval: arbitrary choice of 1 second */
-	cache->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+	fbc_state->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
 
-	cache->fence_y_offset = intel_plane_fence_y_offset(plane_state);
+	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
 
 	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
 		    !plane_state->ggtt_vma->fence);
 
 	if (plane_state->flags & PLANE_HAS_FENCE &&
 	    plane_state->ggtt_vma->fence)
-		cache->fence_id = plane_state->ggtt_vma->fence->id;
+		fbc_state->fence_id = plane_state->ggtt_vma->fence->id;
 	else
-		cache->fence_id = -1;
+		fbc_state->fence_id = -1;
 
-	cache->cfb_stride = intel_fbc_cfb_stride(plane_state);
-	cache->cfb_size = intel_fbc_cfb_size(plane_state);
-	cache->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
+	fbc_state->cfb_stride = intel_fbc_cfb_stride(plane_state);
+	fbc_state->cfb_size = intel_fbc_cfb_size(plane_state);
+	fbc_state->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
 }
 
 static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
@@ -1232,7 +1231,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (fbc->params.plane == plane)
+		if (fbc->state.plane == plane)
 			need_vblank_wait |= __intel_fbc_pre_update(state, crtc, plane);
 
 		mutex_unlock(&fbc->lock);
@@ -1244,10 +1243,9 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 static void __intel_fbc_disable(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
-	struct intel_plane *plane = fbc->params.plane;
+	struct intel_plane *plane = fbc->state.plane;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
-	drm_WARN_ON(&i915->drm, !fbc->params.plane);
 	drm_WARN_ON(&i915->drm, fbc->active);
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC on [PLANE:%d:%s]\n",
@@ -1255,7 +1253,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
-	fbc->params.plane = NULL;
+	fbc->state.plane = NULL;
 }
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
@@ -1285,7 +1283,7 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (fbc->params.plane == plane) {
+		if (fbc->state.plane == plane) {
 			fbc->flip_pending = false;
 			__intel_fbc_post_update(fbc);
 		}
@@ -1296,8 +1294,8 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 static unsigned int intel_fbc_get_frontbuffer_bit(struct intel_fbc *fbc)
 {
-	if (fbc->params.plane)
-		return fbc->params.plane->frontbuffer_bit;
+	if (fbc->state.plane)
+		return fbc->state.plane->frontbuffer_bit;
 	else
 		return fbc->possible_framebuffer_bits;
 }
@@ -1318,7 +1316,7 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 
 	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
 
-	if (fbc->params.plane && fbc->busy_bits)
+	if (fbc->state.plane && fbc->busy_bits)
 		intel_fbc_deactivate(fbc, "frontbuffer write");
 
 	mutex_unlock(&fbc->lock);
@@ -1339,7 +1337,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
-	if (!fbc->busy_bits && fbc->params.plane &&
+	if (!fbc->busy_bits && fbc->state.plane &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
 			intel_fbc_nuke(fbc);
@@ -1377,8 +1375,8 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
 
-	if (fbc->params.plane) {
-		if (fbc->params.plane != plane)
+	if (fbc->state.plane) {
+		if (fbc->state.plane != plane)
 			return;
 
 		if (intel_fbc_is_ok(plane_state))
@@ -1413,7 +1411,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		    plane->base.base.id, plane->base.name);
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
-	intel_fbc_update_state_cache(state, crtc, plane);
+	intel_fbc_update_state(state, crtc, plane);
 
 	intel_fbc_program_cfb(fbc);
 }
@@ -1436,7 +1434,7 @@ void intel_fbc_disable(struct intel_crtc *crtc)
 			continue;
 
 		mutex_lock(&fbc->lock);
-		if (fbc->params.plane == plane)
+		if (fbc->state.plane == plane)
 			__intel_fbc_disable(fbc);
 		mutex_unlock(&fbc->lock);
 	}
@@ -1460,7 +1458,7 @@ void intel_fbc_update(struct intel_atomic_state *state,
 		mutex_lock(&fbc->lock);
 
 		if (crtc_state->update_pipe && plane_state->no_fbc_reason) {
-			if (fbc->params.plane == plane)
+			if (fbc->state.plane == plane)
 				__intel_fbc_disable(fbc);
 		} else {
 			__intel_fbc_enable(state, crtc, plane);
@@ -1484,7 +1482,7 @@ void intel_fbc_global_disable(struct drm_i915_private *i915)
 		return;
 
 	mutex_lock(&fbc->lock);
-	if (fbc->params.plane)
+	if (fbc->state.plane)
 		__intel_fbc_disable(fbc);
 	mutex_unlock(&fbc->lock);
 }
@@ -1497,7 +1495,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	mutex_lock(&fbc->lock);
 
 	/* Maybe we were scheduled twice. */
-	if (fbc->underrun_detected || !fbc->params.plane)
+	if (fbc->underrun_detected || !fbc->state.plane)
 		goto out;
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
@@ -1505,7 +1503,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 
 	intel_fbc_deactivate(fbc, "FIFO underrun");
 	if (!fbc->flip_pending)
-		intel_wait_for_vblank(i915, fbc->params.plane->pipe);
+		intel_wait_for_vblank(i915, fbc->state.plane->pipe);
 	__intel_fbc_disable(fbc);
 out:
 	mutex_unlock(&fbc->lock);
-- 
2.32.0

