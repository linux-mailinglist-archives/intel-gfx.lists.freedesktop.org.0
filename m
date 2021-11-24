Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D23045B93F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037376E89D;
	Wed, 24 Nov 2021 11:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79AB6E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="232755334"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="232755334"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509843864"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Nov 2021 03:37:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:49 +0200
Message-Id: <20211124113652.22090-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/fbc: Move plane pointer into
 intel_fbc_state
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

Currently we track the FBC plane as a pointer under intel_fbc
and also as a i9xx_plane_id under intel_fbc_state. Just store
the pointer once in the fbc state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 54 ++++++++++++------------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7d128a49e8e1..b6919ca87138 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -60,7 +60,7 @@ struct intel_fbc_funcs {
 };
 
 struct intel_fbc_state {
-	enum i9xx_plane_id i9xx_plane;
+	struct intel_plane *plane;
 	unsigned int cfb_stride;
 	unsigned int cfb_size;
 	unsigned int fence_y_offset;
@@ -81,7 +81,6 @@ struct intel_fbc {
 	struct mutex lock;
 	unsigned int possible_framebuffer_bits;
 	unsigned int busy_bits;
-	struct intel_plane *plane;
 
 	struct drm_mm_node compressed_fb;
 	struct drm_mm_node compressed_llb;
@@ -244,7 +243,7 @@ static u32 i965_fbc_ctl2(struct intel_fbc *fbc)
 	u32 fbc_ctl2;
 
 	fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM |
-		FBC_CTL_PLANE(params->i9xx_plane);
+		FBC_CTL_PLANE(params->plane->i9xx_plane);
 
 	if (params->fence_id >= 0)
 		fbc_ctl2 |= FBC_CTL_CPU_FENCE_EN;
@@ -308,7 +307,7 @@ static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
 static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 {
 	struct intel_fbc_state *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->i9xx_plane;
+	enum i9xx_plane_id i9xx_plane = params->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -344,7 +343,7 @@ static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 static void i965_fbc_nuke(struct intel_fbc *fbc)
 {
 	struct intel_fbc_state *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->i9xx_plane;
+	enum i9xx_plane_id i9xx_plane = params->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -384,7 +383,7 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
-		DPFC_CTL_PLANE_G4X(params->i9xx_plane);
+		DPFC_CTL_PLANE_G4X(params->plane->i9xx_plane);
 
 	if (IS_G4X(i915))
 		dpfc_ctl |= DPFC_CTL_SR_EN;
@@ -576,7 +575,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
 
 	if (IS_IVYBRIDGE(i915))
-		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->i9xx_plane);
+		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->plane->i9xx_plane);
 
 	if (params->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
@@ -632,7 +631,7 @@ static bool intel_fbc_hw_is_active(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_activate(fbc->plane);
+	trace_intel_fbc_activate(fbc->params.plane);
 
 	fbc->active = true;
 	fbc->activated = true;
@@ -642,7 +641,7 @@ static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_deactivate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_deactivate(fbc->plane);
+	trace_intel_fbc_deactivate(fbc->params.plane);
 
 	fbc->active = false;
 
@@ -656,7 +655,7 @@ static bool intel_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_nuke(fbc->plane);
+	trace_intel_fbc_nuke(fbc->params.plane);
 
 	fbc->funcs->nuke(fbc);
 }
@@ -959,7 +958,7 @@ static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
 	if (plane_state->no_fbc_reason)
 		return;
 
-	cache->i9xx_plane = plane->i9xx_plane;
+	cache->plane = plane;
 
 	/* FBC1 compression interval: arbitrary choice of 1 second */
 	cache->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
@@ -1233,7 +1232,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (fbc->plane == plane)
+		if (fbc->params.plane == plane)
 			need_vblank_wait |= __intel_fbc_pre_update(state, crtc, plane);
 
 		mutex_unlock(&fbc->lock);
@@ -1245,10 +1244,10 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 static void __intel_fbc_disable(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
-	struct intel_plane *plane = fbc->plane;
+	struct intel_plane *plane = fbc->params.plane;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
-	drm_WARN_ON(&i915->drm, !fbc->plane);
+	drm_WARN_ON(&i915->drm, !fbc->params.plane);
 	drm_WARN_ON(&i915->drm, fbc->active);
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC on [PLANE:%d:%s]\n",
@@ -1256,7 +1255,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
-	fbc->plane = NULL;
+	fbc->params.plane = NULL;
 }
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
@@ -1286,7 +1285,7 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (fbc->plane == plane) {
+		if (fbc->params.plane == plane) {
 			fbc->flip_pending = false;
 			__intel_fbc_post_update(fbc);
 		}
@@ -1297,8 +1296,8 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 static unsigned int intel_fbc_get_frontbuffer_bit(struct intel_fbc *fbc)
 {
-	if (fbc->plane)
-		return fbc->plane->frontbuffer_bit;
+	if (fbc->params.plane)
+		return fbc->params.plane->frontbuffer_bit;
 	else
 		return fbc->possible_framebuffer_bits;
 }
@@ -1319,7 +1318,7 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 
 	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
 
-	if (fbc->plane && fbc->busy_bits)
+	if (fbc->params.plane && fbc->busy_bits)
 		intel_fbc_deactivate(fbc, "frontbuffer write");
 
 	mutex_unlock(&fbc->lock);
@@ -1340,7 +1339,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
-	if (!fbc->busy_bits && fbc->plane &&
+	if (!fbc->busy_bits && fbc->params.plane &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
 			intel_fbc_nuke(fbc);
@@ -1378,8 +1377,8 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
 
-	if (fbc->plane) {
-		if (fbc->plane != plane)
+	if (fbc->params.plane) {
+		if (fbc->params.plane != plane)
 			return;
 
 		if (intel_fbc_is_ok(plane_state))
@@ -1415,7 +1414,6 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
 	intel_fbc_update_state_cache(state, crtc, plane);
-	fbc->plane = plane;
 
 	intel_fbc_program_cfb(fbc);
 }
@@ -1438,7 +1436,7 @@ void intel_fbc_disable(struct intel_crtc *crtc)
 			continue;
 
 		mutex_lock(&fbc->lock);
-		if (fbc->plane == plane)
+		if (fbc->params.plane == plane)
 			__intel_fbc_disable(fbc);
 		mutex_unlock(&fbc->lock);
 	}
@@ -1462,7 +1460,7 @@ void intel_fbc_update(struct intel_atomic_state *state,
 		mutex_lock(&fbc->lock);
 
 		if (crtc_state->update_pipe && plane_state->no_fbc_reason) {
-			if (fbc->plane == plane)
+			if (fbc->params.plane == plane)
 				__intel_fbc_disable(fbc);
 		} else {
 			__intel_fbc_enable(state, crtc, plane);
@@ -1486,7 +1484,7 @@ void intel_fbc_global_disable(struct drm_i915_private *i915)
 		return;
 
 	mutex_lock(&fbc->lock);
-	if (fbc->plane)
+	if (fbc->params.plane)
 		__intel_fbc_disable(fbc);
 	mutex_unlock(&fbc->lock);
 }
@@ -1499,7 +1497,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	mutex_lock(&fbc->lock);
 
 	/* Maybe we were scheduled twice. */
-	if (fbc->underrun_detected || !fbc->plane)
+	if (fbc->underrun_detected || !fbc->params.plane)
 		goto out;
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
@@ -1507,7 +1505,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 
 	intel_fbc_deactivate(fbc, "FIFO underrun");
 	if (!fbc->flip_pending)
-		intel_wait_for_vblank(i915, fbc->plane->pipe);
+		intel_wait_for_vblank(i915, fbc->params.plane->pipe);
 	__intel_fbc_disable(fbc);
 out:
 	mutex_unlock(&fbc->lock);
-- 
2.32.0

