Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DC145B933
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235D96E86F;
	Wed, 24 Nov 2021 11:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2963B6E883
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215287714"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="215287714"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="650373133"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 24 Nov 2021 03:37:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:38 +0200
Message-Id: <20211124113652.22090-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/20] drm/i915/fbc: Reuse the same struct for
 the cache and params
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

The FBC state cache and params are now nearly identical. Just
use the same structure for both.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 62 +++++++++++-------------
 drivers/gpu/drm/i915/i915_drv.h          | 36 +++++---------
 2 files changed, 40 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1e8b75cdfad8..8625825cbee8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -163,7 +163,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int cfb_stride;
 	u32 fbc_ctl;
@@ -191,11 +191,11 @@ static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 
 static u32 i965_fbc_ctl2(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	u32 fbc_ctl2;
 
 	fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM |
-		FBC_CTL_PLANE(params->crtc.i9xx_plane);
+		FBC_CTL_PLANE(params->i9xx_plane);
 
 	if (params->fence_id >= 0)
 		fbc_ctl2 |= FBC_CTL_CPU_FENCE_EN;
@@ -226,7 +226,7 @@ static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
 
 static void i8xx_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	int i;
 
@@ -258,8 +258,8 @@ static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+	struct intel_fbc_state *params = &fbc->params;
+	enum i9xx_plane_id i9xx_plane = params->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -294,8 +294,8 @@ static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 
 static void i965_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &fbc->params;
-	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+	struct intel_fbc_state *params = &fbc->params;
+	enum i9xx_plane_id i9xx_plane = params->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
@@ -330,12 +330,12 @@ static u32 g4x_dpfc_ctl_limit(struct intel_fbc *fbc)
 
 static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
-		DPFC_CTL_PLANE_G4X(params->crtc.i9xx_plane);
+		DPFC_CTL_PLANE_G4X(params->i9xx_plane);
 
 	if (IS_G4X(i915))
 		dpfc_ctl |= DPFC_CTL_SR_EN;
@@ -352,7 +352,7 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 
 static void g4x_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, DPFC_FENCE_YOFF,
@@ -403,7 +403,7 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 
 static void ilk_fbc_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &fbc->params;
+	struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
@@ -454,7 +454,7 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
 
 static void snb_fbc_program_fence(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 ctl = 0;
 
@@ -491,7 +491,7 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
 
 static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
@@ -504,7 +504,7 @@ static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 
 static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
@@ -520,14 +520,14 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 
 static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *params = &fbc->params;
 	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
 
 	if (IS_IVYBRIDGE(i915))
-		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->crtc.i9xx_plane);
+		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->i9xx_plane);
 
 	if (params->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
@@ -933,12 +933,14 @@ static void intel_fbc_update_state_cache(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state_cache *cache = &fbc->state_cache;
+	struct intel_fbc_state *cache = &fbc->state_cache;
 
 	cache->no_fbc_reason = plane_state->no_fbc_reason;
 	if (cache->no_fbc_reason)
 		return;
 
+	cache->i9xx_plane = plane->i9xx_plane;
+
 	/* FBC1 compression interval: arbitrary choice of 1 second */
 	cache->interval = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
 
@@ -1093,7 +1095,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_fbc *fbc = &i915->fbc;
-	struct intel_fbc_state_cache *cache = &fbc->state_cache;
+	struct intel_fbc_state *cache = &fbc->state_cache;
 
 	if (!intel_fbc_can_enable(fbc))
 		return false;
@@ -1156,23 +1158,13 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
 				     struct intel_crtc *crtc)
 {
-	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
-	struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *cache = &fbc->state_cache;
+	struct intel_fbc_state *params = &fbc->params;
 
 	/* Since all our fields are integer types, use memset here so the
 	 * comparison function can rely on memcmp because the padding will be
 	 * zero. */
-	memset(params, 0, sizeof(*params));
-
-	params->fence_id = cache->fence_id;
-	params->fence_y_offset = cache->fence_y_offset;
-
-	params->interval = cache->interval;
-	params->crtc.i9xx_plane = to_intel_plane(crtc->base.primary)->i9xx_plane;
-
-	params->cfb_stride = cache->cfb_stride;
-	params->cfb_size = cache->cfb_size;
-	params->override_cfb_stride = cache->override_cfb_stride;
+	*params = *cache;
 }
 
 static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
@@ -1188,8 +1180,8 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
 	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
-	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
-	const struct intel_fbc_reg_params *params = &fbc->params;
+	const struct intel_fbc_state *cache = &fbc->state_cache;
+	const struct intel_fbc_state *params = &fbc->params;
 
 	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
 		return false;
@@ -1426,7 +1418,7 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state_cache *cache;
+	struct intel_fbc_state *cache;
 	int min_limit;
 
 	if (!fbc || !plane_state)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 66fa46d41fa5..a737fa483cf3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -403,6 +403,17 @@ struct intel_fbc_funcs;
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
+struct intel_fbc_state {
+	const char *no_fbc_reason;
+	enum i9xx_plane_id i9xx_plane;
+	unsigned int cfb_stride;
+	unsigned int cfb_size;
+	unsigned int fence_y_offset;
+	u16 override_cfb_stride;
+	u16 interval;
+	s8 fence_id;
+};
+
 struct intel_fbc {
 	struct drm_i915_private *i915;
 	const struct intel_fbc_funcs *funcs;
@@ -433,16 +444,7 @@ struct intel_fbc {
 	 * appropriate locking, so we cache information here in order to avoid
 	 * these problems.
 	 */
-	struct intel_fbc_state_cache {
-		const char *no_fbc_reason;
-
-		unsigned int cfb_stride;
-		unsigned int cfb_size;
-		unsigned int fence_y_offset;
-		u16 override_cfb_stride;
-		u16 interval;
-		s8 fence_id;
-	} state_cache;
+	struct intel_fbc_state state_cache;
 
 	/*
 	 * This structure contains everything that's relevant to program the
@@ -451,19 +453,7 @@ struct intel_fbc {
 	 * something different in the struct. The genx_fbc_activate functions
 	 * are supposed to read from it in order to program the registers.
 	 */
-	struct intel_fbc_reg_params {
-		struct {
-			enum i9xx_plane_id i9xx_plane;
-		} crtc;
-
-		unsigned int cfb_stride;
-		unsigned int cfb_size;
-		unsigned int fence_y_offset;
-		u16 override_cfb_stride;
-		u16 interval;
-		s8 fence_id;
-	} params;
-
+	struct intel_fbc_state params;
 	const char *no_fbc_reason;
 };
 
-- 
2.32.0

