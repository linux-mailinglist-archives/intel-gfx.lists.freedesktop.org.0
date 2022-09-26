Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 045B15EB108
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE58710E501;
	Mon, 26 Sep 2022 19:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1533B10E79D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664219637; x=1695755637;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fgie4nJZp8wvxetyQ2l+NBivv3VCp2qNaUpZ2plQyfo=;
 b=BUoXseeEhje4L3cg5UikR66gAbO5Wh+D+t3lWPyO7eaacocz+wrDL4nR
 8O6zQ85pee2kse1OmVDMJBoOz+gIWR6U4xag53xt/Dz5R8unNnxKUgFFY
 L69z0iHMZpNTf0ruU3/nnzJ8DPPnri1cQ4D2KAcCoPWHqwct3HMzdzqgc
 XP8grPm1fyDrmuvaDojwI7+WHPZfp3YMmXE1kW99nxLYH5wcE4uPMjF4j
 JaPP8cddYxPEPIOX9l3ygNDWeaifG+wTfQ3CsF45BYj3fhuHs63ZTTqK0
 sMeXB1l5CYxpLhsNQx0UV+u21PTsyYmBjf13JjEOYIRvH1T9uf3G676Kz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280841950"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280841950"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616525375"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616525375"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2022 12:13:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:13:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:13:41 +0300
Message-Id: <20220926191341.5495-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: s/dev_priv/i915/ in the
 shared_dpll code
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

Do a s/dev_priv/i915/ pass over the shared_dpll code to
get the variable names into sync with modern standards.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 914 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  14 +-
 2 files changed, 464 insertions(+), 464 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3dd414d663f0..77f9486796a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -102,19 +102,19 @@ struct intel_dpll_mgr {
 				   struct intel_crtc *crtc,
 				   struct intel_encoder *encoder);
 	void (*update_ref_clks)(struct drm_i915_private *i915);
-	void (*dump_hw_state)(struct drm_i915_private *dev_priv,
+	void (*dump_hw_state)(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state);
 };
 
 static void
-intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
+intel_atomic_duplicate_dpll_state(struct drm_i915_private *i915,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
 	struct intel_shared_dpll *pll;
 	int i;
 
 	/* Copy shared dpll state */
-	for_each_shared_dpll(dev_priv, pll, i)
+	for_each_shared_dpll(i915, pll, i)
 		shared_dpll[pll->index] = pll->state;
 }
 
@@ -137,20 +137,20 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 
 /**
  * intel_get_shared_dpll_by_id - get a DPLL given its id
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  * @id: pll id
  *
  * Returns:
  * A pointer to the DPLL with @id
  */
 struct intel_shared_dpll *
-intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
+intel_get_shared_dpll_by_id(struct drm_i915_private *i915,
 			    enum intel_dpll_id id)
 {
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(dev_priv, pll, i) {
+	for_each_shared_dpll(i915, pll, i) {
 		if (pll->info->id == id)
 			return pll;
 	}
@@ -160,18 +160,18 @@ intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 }
 
 /* For ILK+ */
-void assert_shared_dpll(struct drm_i915_private *dev_priv,
+void assert_shared_dpll(struct drm_i915_private *i915,
 			struct intel_shared_dpll *pll,
 			bool state)
 {
 	bool cur_state;
 	struct intel_dpll_hw_state hw_state;
 
-	if (drm_WARN(&dev_priv->drm, !pll,
+	if (drm_WARN(&i915->drm, !pll,
 		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
 		return;
 
-	cur_state = intel_dpll_get_hw_state(dev_priv, pll, &hw_state);
+	cur_state = intel_dpll_get_hw_state(i915, pll, &hw_state);
 	I915_STATE_WARN(cur_state != state,
 	     "%s assertion failure (expected %s, current %s)\n",
 			pll->info->name, str_on_off(state),
@@ -222,41 +222,41 @@ intel_tc_pll_enable_reg(struct drm_i915_private *i915,
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 	unsigned int old_mask;
 
-	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))
+	if (drm_WARN_ON(&i915->drm, pll == NULL))
 		return;
 
-	mutex_lock(&dev_priv->display.dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 	old_mask = pll->active_mask;
 
-	if (drm_WARN_ON(&dev_priv->drm, !(pll->state.pipe_mask & pipe_mask)) ||
-	    drm_WARN_ON(&dev_priv->drm, pll->active_mask & pipe_mask))
+	if (drm_WARN_ON(&i915->drm, !(pll->state.pipe_mask & pipe_mask)) ||
+	    drm_WARN_ON(&i915->drm, pll->active_mask & pipe_mask))
 		goto out;
 
 	pll->active_mask |= pipe_mask;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "enable %s (active 0x%x, on? %d) for [CRTC:%d:%s]\n",
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
 	if (old_mask) {
-		drm_WARN_ON(&dev_priv->drm, !pll->on);
-		assert_shared_dpll_enabled(dev_priv, pll);
+		drm_WARN_ON(&i915->drm, !pll->on);
+		assert_shared_dpll_enabled(i915, pll);
 		goto out;
 	}
-	drm_WARN_ON(&dev_priv->drm, pll->on);
+	drm_WARN_ON(&i915->drm, pll->on);
 
-	drm_dbg_kms(&dev_priv->drm, "enabling %s\n", pll->info->name);
-	pll->info->funcs->enable(dev_priv, pll);
+	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
+	pll->info->funcs->enable(i915, pll);
 	pll->on = true;
 
 out:
-	mutex_unlock(&dev_priv->display.dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 /**
@@ -268,41 +268,41 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 
 	/* PCH only available on ILK+ */
-	if (DISPLAY_VER(dev_priv) < 5)
+	if (DISPLAY_VER(i915) < 5)
 		return;
 
 	if (pll == NULL)
 		return;
 
-	mutex_lock(&dev_priv->display.dpll.lock);
-	if (drm_WARN(&dev_priv->drm, !(pll->active_mask & pipe_mask),
+	mutex_lock(&i915->display.dpll.lock);
+	if (drm_WARN(&i915->drm, !(pll->active_mask & pipe_mask),
 		     "%s not used by [CRTC:%d:%s]\n", pll->info->name,
 		     crtc->base.base.id, crtc->base.name))
 		goto out;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "disable %s (active 0x%x, on? %d) for [CRTC:%d:%s]\n",
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
-	assert_shared_dpll_enabled(dev_priv, pll);
-	drm_WARN_ON(&dev_priv->drm, !pll->on);
+	assert_shared_dpll_enabled(i915, pll);
+	drm_WARN_ON(&i915->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
 	if (pll->active_mask)
 		goto out;
 
-	drm_dbg_kms(&dev_priv->drm, "disabling %s\n", pll->info->name);
-	pll->info->funcs->disable(dev_priv, pll);
+	drm_dbg_kms(&i915->drm, "disabling %s\n", pll->info->name);
+	pll->info->funcs->disable(i915, pll);
 	pll->on = false;
 
 out:
-	mutex_unlock(&dev_priv->display.dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static unsigned long
@@ -327,20 +327,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_dpll_hw_state *pll_state,
 		       unsigned long dpll_mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	unsigned long dpll_mask_all = intel_dpll_mask_all(dev_priv);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	unsigned long dpll_mask_all = intel_dpll_mask_all(i915);
 	struct intel_shared_dpll_state *shared_dpll;
 	struct intel_shared_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~dpll_mask_all);
+	drm_WARN_ON(&i915->drm, dpll_mask & ~dpll_mask_all);
 
 	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
 		struct intel_shared_dpll *pll;
 
-		pll = intel_get_shared_dpll_by_id(dev_priv, id);
+		pll = intel_get_shared_dpll_by_id(i915, id);
 		if (!pll)
 			continue;
 
@@ -354,7 +354,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		if (memcmp(pll_state,
 			   &shared_dpll[pll->index].hw_state,
 			   sizeof(*pll_state)) == 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
 				    crtc->base.base.id, crtc->base.name,
 				    pll->info->name,
@@ -366,7 +366,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 
 	/* Ok no matching timings, maybe there's a free one? */
 	if (unused_pll) {
-		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] allocated %s\n",
+		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    unused_pll->info->name);
 		return unused_pll;
@@ -443,7 +443,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
  */
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
 	struct intel_shared_dpll *pll;
 	int i;
@@ -451,11 +451,11 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for_each_shared_dpll(dev_priv, pll, i)
+	for_each_shared_dpll(i915, pll, i)
 		swap(pll->state, shared_dpll[pll->index]);
 }
 
-static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *hw_state)
 {
@@ -463,49 +463,49 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, PCH_DPLL(id));
+	val = intel_de_read(i915, PCH_DPLL(id));
 	hw_state->dpll = val;
-	hw_state->fp0 = intel_de_read(dev_priv, PCH_FP0(id));
-	hw_state->fp1 = intel_de_read(dev_priv, PCH_FP1(id));
+	hw_state->fp0 = intel_de_read(i915, PCH_FP0(id));
+	hw_state->fp1 = intel_de_read(i915, PCH_FP1(id));
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & DPLL_VCO_ENABLE;
 }
 
-static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
+static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
 {
 	u32 val;
 	bool enabled;
 
-	I915_STATE_WARN_ON(!(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
+	I915_STATE_WARN_ON(!(HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915)));
 
-	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
+	val = intel_de_read(i915, PCH_DREF_CONTROL);
 	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
 			    DREF_SUPERSPREAD_SOURCE_MASK));
 	I915_STATE_WARN(!enabled, "PCH refclk assertion failure, should be active but is disabled\n");
 }
 
-static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
+static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
-	ibx_assert_pch_refclk_enabled(dev_priv);
+	ibx_assert_pch_refclk_enabled(i915);
 
-	intel_de_write(dev_priv, PCH_FP0(id), pll->state.hw_state.fp0);
-	intel_de_write(dev_priv, PCH_FP1(id), pll->state.hw_state.fp1);
+	intel_de_write(i915, PCH_FP0(id), pll->state.hw_state.fp0);
+	intel_de_write(i915, PCH_FP1(id), pll->state.hw_state.fp1);
 
-	intel_de_write(dev_priv, PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_write(i915, PCH_DPLL(id), pll->state.hw_state.dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, PCH_DPLL(id));
+	intel_de_posting_read(i915, PCH_DPLL(id));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -513,18 +513,18 @@ static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
 	 *
 	 * So write it again.
 	 */
-	intel_de_write(dev_priv, PCH_DPLL(id), pll->state.hw_state.dpll);
-	intel_de_posting_read(dev_priv, PCH_DPLL(id));
+	intel_de_write(i915, PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_posting_read(i915, PCH_DPLL(id));
 	udelay(200);
 }
 
-static void ibx_pch_dpll_disable(struct drm_i915_private *dev_priv,
+static void ibx_pch_dpll_disable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_write(dev_priv, PCH_DPLL(id), 0);
-	intel_de_posting_read(dev_priv, PCH_DPLL(id));
+	intel_de_write(i915, PCH_DPLL(id), 0);
+	intel_de_posting_read(i915, PCH_DPLL(id));
 	udelay(200);
 }
 
@@ -541,16 +541,16 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
 
-	if (HAS_PCH_IBX(dev_priv)) {
+	if (HAS_PCH_IBX(i915)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 		id = (enum intel_dpll_id) crtc->pipe;
-		pll = intel_get_shared_dpll_by_id(dev_priv, id);
+		pll = intel_get_shared_dpll_by_id(i915, id);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pll->info->name);
@@ -573,10 +573,10 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void ibx_dump_hw_state(struct drm_i915_private *dev_priv,
+static void ibx_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
 		    "fp0: 0x%x, fp1: 0x%x\n",
 		    hw_state->dpll,
@@ -605,61 +605,61 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 	.dump_hw_state = ibx_dump_hw_state,
 };
 
-static void hsw_ddi_wrpll_enable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_write(dev_priv, WRPLL_CTL(id), pll->state.hw_state.wrpll);
-	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
+	intel_de_write(i915, WRPLL_CTL(id), pll->state.hw_state.wrpll);
+	intel_de_posting_read(i915, WRPLL_CTL(id));
 	udelay(20);
 }
 
-static void hsw_ddi_spll_enable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_spll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
-	intel_de_write(dev_priv, SPLL_CTL, pll->state.hw_state.spll);
-	intel_de_posting_read(dev_priv, SPLL_CTL);
+	intel_de_write(i915, SPLL_CTL, pll->state.hw_state.spll);
+	intel_de_posting_read(i915, SPLL_CTL);
 	udelay(20);
 }
 
-static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_wrpll_disable(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = intel_de_read(dev_priv, WRPLL_CTL(id));
-	intel_de_write(dev_priv, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
-	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
+	val = intel_de_read(i915, WRPLL_CTL(id));
+	intel_de_write(i915, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
+	intel_de_posting_read(i915, WRPLL_CTL(id));
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (dev_priv->pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(dev_priv);
+	if (i915->pch_ssc_use & BIT(id))
+		intel_init_pch_refclk(i915);
 }
 
-static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_spll_disable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
 	enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = intel_de_read(dev_priv, SPLL_CTL);
-	intel_de_write(dev_priv, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
-	intel_de_posting_read(dev_priv, SPLL_CTL);
+	val = intel_de_read(i915, SPLL_CTL);
+	intel_de_write(i915, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
+	intel_de_posting_read(i915, SPLL_CTL);
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (dev_priv->pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(dev_priv);
+	if (i915->pch_ssc_use & BIT(id))
+		intel_init_pch_refclk(i915);
 }
 
-static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *hw_state)
 {
@@ -667,35 +667,35 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *dev_priv,
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, WRPLL_CTL(id));
+	val = intel_de_read(i915, WRPLL_CTL(id));
 	hw_state->wrpll = val;
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & WRPLL_PLL_ENABLE;
 }
 
-static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *hw_state)
 {
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, SPLL_CTL);
+	val = intel_de_read(i915, SPLL_CTL);
 	hw_state->spll = val;
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & SPLL_PLL_ENABLE;
 }
@@ -906,7 +906,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
-static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *pll_state)
 {
@@ -917,8 +917,8 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
 		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
-		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-			refclk = dev_priv->display.dpll.ref_clks.nssc;
+		if (IS_HASWELL(i915) && !IS_HSW_ULT(i915)) {
+			refclk = i915->display.dpll.ref_clks.nssc;
 			break;
 		}
 		fallthrough;
@@ -928,7 +928,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 		 * code only cares about 5% accuracy, and spread is a max of
 		 * 0.5% downspread.
 		 */
-		refclk = dev_priv->display.dpll.ref_clks.ssc;
+		refclk = i915->display.dpll.ref_clks.ssc;
 		break;
 	case WRPLL_REF_LCPLL:
 		refclk = 2700000;
@@ -984,7 +984,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 static int
 hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int clock = crtc_state->port_clock;
 
 	switch (clock / 2) {
@@ -993,7 +993,7 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 	case 270000:
 		return 0;
 	default:
-		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
+		drm_dbg_kms(&i915->drm, "Invalid clock for DP: %d\n",
 			    clock);
 		return -EINVAL;
 	}
@@ -1002,7 +1002,7 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 static struct intel_shared_dpll *
 hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id pll_id;
 	int clock = crtc_state->port_clock;
@@ -1022,7 +1022,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 		return NULL;
 	}
 
-	pll = intel_get_shared_dpll_by_id(dev_priv, pll_id);
+	pll = intel_get_shared_dpll_by_id(i915, pll_id);
 
 	if (!pll)
 		return NULL;
@@ -1158,10 +1158,10 @@ static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
 		i915->display.dpll.ref_clks.nssc = 135000;
 }
 
-static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
+static void hsw_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
+	drm_dbg_kms(&i915->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
 		    hw_state->wrpll, hw_state->spll);
 }
 
@@ -1179,17 +1179,17 @@ static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
 	.get_freq = hsw_ddi_spll_get_freq,
 };
 
-static void hsw_ddi_lcpll_enable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_lcpll_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
 }
 
-static void hsw_ddi_lcpll_disable(struct drm_i915_private *dev_priv,
+static void hsw_ddi_lcpll_disable(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
 }
 
-static bool hsw_ddi_lcpll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool hsw_ddi_lcpll_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *hw_state)
 {
@@ -1253,68 +1253,68 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 	},
 };
 
-static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *dev_priv,
+static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
 				    struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = intel_de_read(dev_priv, DPLL_CTRL1);
+	val = intel_de_read(i915, DPLL_CTRL1);
 
 	val &= ~(DPLL_CTRL1_HDMI_MODE(id) |
 		 DPLL_CTRL1_SSC(id) |
 		 DPLL_CTRL1_LINK_RATE_MASK(id));
 	val |= pll->state.hw_state.ctrl1 << (id * 6);
 
-	intel_de_write(dev_priv, DPLL_CTRL1, val);
-	intel_de_posting_read(dev_priv, DPLL_CTRL1);
+	intel_de_write(i915, DPLL_CTRL1, val);
+	intel_de_posting_read(i915, DPLL_CTRL1);
 }
 
-static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
+static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll)
 {
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
-	skl_ddi_pll_write_ctrl1(dev_priv, pll);
+	skl_ddi_pll_write_ctrl1(i915, pll);
 
-	intel_de_write(dev_priv, regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
-	intel_de_write(dev_priv, regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
-	intel_de_posting_read(dev_priv, regs[id].cfgcr1);
-	intel_de_posting_read(dev_priv, regs[id].cfgcr2);
+	intel_de_write(i915, regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
+	intel_de_write(i915, regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
+	intel_de_posting_read(i915, regs[id].cfgcr1);
+	intel_de_posting_read(i915, regs[id].cfgcr2);
 
 	/* the enable bit is always bit 31 */
-	intel_de_write(dev_priv, regs[id].ctl,
-		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
+	intel_de_write(i915, regs[id].ctl,
+		       intel_de_read(i915, regs[id].ctl) | LCPLL_PLL_ENABLE);
 
-	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
-		drm_err(&dev_priv->drm, "DPLL %d not locked\n", id);
+	if (intel_de_wait_for_set(i915, DPLL_STATUS, DPLL_LOCK(id), 5))
+		drm_err(&i915->drm, "DPLL %d not locked\n", id);
 }
 
-static void skl_ddi_dpll0_enable(struct drm_i915_private *dev_priv,
+static void skl_ddi_dpll0_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
-	skl_ddi_pll_write_ctrl1(dev_priv, pll);
+	skl_ddi_pll_write_ctrl1(i915, pll);
 }
 
-static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
+static void skl_ddi_pll_disable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* the enable bit is always bit 31 */
-	intel_de_write(dev_priv, regs[id].ctl,
-		       intel_de_read(dev_priv, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
-	intel_de_posting_read(dev_priv, regs[id].ctl);
+	intel_de_write(i915, regs[id].ctl,
+		       intel_de_read(i915, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
+	intel_de_posting_read(i915, regs[id].ctl);
 }
 
-static void skl_ddi_dpll0_disable(struct drm_i915_private *dev_priv,
+static void skl_ddi_dpll0_disable(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
 }
 
-static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 				     struct intel_shared_dpll *pll,
 				     struct intel_dpll_hw_state *hw_state)
 {
@@ -1324,34 +1324,34 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
 	ret = false;
 
-	val = intel_de_read(dev_priv, regs[id].ctl);
+	val = intel_de_read(i915, regs[id].ctl);
 	if (!(val & LCPLL_PLL_ENABLE))
 		goto out;
 
-	val = intel_de_read(dev_priv, DPLL_CTRL1);
+	val = intel_de_read(i915, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	/* avoid reading back stale values if HDMI mode is not enabled */
 	if (val & DPLL_CTRL1_HDMI_MODE(id)) {
-		hw_state->cfgcr1 = intel_de_read(dev_priv, regs[id].cfgcr1);
-		hw_state->cfgcr2 = intel_de_read(dev_priv, regs[id].cfgcr2);
+		hw_state->cfgcr1 = intel_de_read(i915, regs[id].cfgcr1);
+		hw_state->cfgcr2 = intel_de_read(i915, regs[id].cfgcr2);
 	}
 	ret = true;
 
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
 
-static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *dev_priv,
+static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *hw_state)
 {
@@ -1361,7 +1361,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -1369,17 +1369,17 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *dev_priv,
 	ret = false;
 
 	/* DPLL0 is always enabled since it drives CDCLK */
-	val = intel_de_read(dev_priv, regs[id].ctl);
-	if (drm_WARN_ON(&dev_priv->drm, !(val & LCPLL_PLL_ENABLE)))
+	val = intel_de_read(i915, regs[id].ctl);
+	if (drm_WARN_ON(&i915->drm, !(val & LCPLL_PLL_ENABLE)))
 		goto out;
 
-	val = intel_de_read(dev_priv, DPLL_CTRL1);
+	val = intel_de_read(i915, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	ret = true;
 
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
@@ -1869,10 +1869,10 @@ static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
-static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
+static void skl_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: "
+	drm_dbg_kms(&i915->drm, "dpll_hw_state: "
 		      "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
 		      hw_state->ctrl1,
 		      hw_state->cfgcr1,
@@ -1910,153 +1910,153 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 	.dump_hw_state = skl_dump_hw_state,
 };
 
-static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
-				struct intel_shared_dpll *pll)
+static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
+			       struct intel_shared_dpll *pll)
 {
 	u32 temp;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy;
 	enum dpio_channel ch;
 
-	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
+	bxt_port_to_phy_channel(i915, port, &phy, &ch);
 
 	/* Non-SSC reference */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 	temp |= PORT_PLL_REF_SEL;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_write(i915, BXT_PORT_PLL_ENABLE(port), temp);
 
-	if (IS_GEMINILAKE(dev_priv)) {
-		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	if (IS_GEMINILAKE(i915)) {
+		temp = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 		temp |= PORT_PLL_POWER_ENABLE;
-		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_write(i915, BXT_PORT_PLL_ENABLE(port), temp);
 
-		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
+		if (wait_for_us((intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) &
 				 PORT_PLL_POWER_STATE), 200))
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Power state not set for PLL:%d\n", port);
 	}
 
 	/* Disable 10 bit clock */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
+	temp = intel_de_read(i915, BXT_PORT_PLL_EBB_4(phy, ch));
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Write P1 & P2 */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
+	temp = intel_de_read(i915, BXT_PORT_PLL_EBB_0(phy, ch));
 	temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
 	temp |= pll->state.hw_state.ebb0;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch), temp);
+	intel_de_write(i915, BXT_PORT_PLL_EBB_0(phy, ch), temp);
 
 	/* Write M2 integer */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 0));
 	temp &= ~PORT_PLL_M2_INT_MASK;
 	temp |= pll->state.hw_state.pll0;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 0), temp);
 
 	/* Write N */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 1));
 	temp &= ~PORT_PLL_N_MASK;
 	temp |= pll->state.hw_state.pll1;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 1), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 1), temp);
 
 	/* Write M2 fraction */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 2));
 	temp &= ~PORT_PLL_M2_FRAC_MASK;
 	temp |= pll->state.hw_state.pll2;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 2), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 2), temp);
 
 	/* Write M2 fraction enable */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 3));
 	temp &= ~PORT_PLL_M2_FRAC_ENABLE;
 	temp |= pll->state.hw_state.pll3;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 3), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 3), temp);
 
 	/* Write coeff */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 6));
 	temp &= ~PORT_PLL_PROP_COEFF_MASK;
 	temp &= ~PORT_PLL_INT_COEFF_MASK;
 	temp &= ~PORT_PLL_GAIN_CTL_MASK;
 	temp |= pll->state.hw_state.pll6;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 6), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 6), temp);
 
 	/* Write calibration val */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 8));
 	temp &= ~PORT_PLL_TARGET_CNT_MASK;
 	temp |= pll->state.hw_state.pll8;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 8), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 8), temp);
 
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 9));
 	temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
 	temp |= pll->state.hw_state.pll9;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 9), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 9), temp);
 
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
+	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 10));
 	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
 	temp &= ~PORT_PLL_DCO_AMP_MASK;
 	temp |= pll->state.hw_state.pll10;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 10), temp);
+	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 10), temp);
 
 	/* Recalibrate with new settings */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
+	temp = intel_de_read(i915, BXT_PORT_PLL_EBB_4(phy, ch));
 	temp |= PORT_PLL_RECALIBRATE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
 	temp |= pll->state.hw_state.ebb4;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Enable PLL */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 	temp |= PORT_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
-	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	intel_de_write(i915, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_posting_read(i915, BXT_PORT_PLL_ENABLE(port));
 
-	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
+	if (wait_for_us((intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
 			200))
-		drm_err(&dev_priv->drm, "PLL %d not locked\n", port);
+		drm_err(&i915->drm, "PLL %d not locked\n", port);
 
-	if (IS_GEMINILAKE(dev_priv)) {
-		temp = intel_de_read(dev_priv, BXT_PORT_TX_DW5_LN0(phy, ch));
+	if (IS_GEMINILAKE(i915)) {
+		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN0(phy, ch));
 		temp |= DCC_DELAY_RANGE_2;
-		intel_de_write(dev_priv, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
+		intel_de_write(i915, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 	}
 
 	/*
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	temp = intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN01(phy, ch));
+	temp = intel_de_read(i915, BXT_PORT_PCS_DW12_LN01(phy, ch));
 	temp &= ~LANE_STAGGER_MASK;
 	temp &= ~LANESTAGGER_STRAP_OVRD;
 	temp |= pll->state.hw_state.pcsdw12;
-	intel_de_write(dev_priv, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
+	intel_de_write(i915, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
 }
 
-static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
-					struct intel_shared_dpll *pll)
+static void bxt_ddi_pll_disable(struct drm_i915_private *i915,
+				struct intel_shared_dpll *pll)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 	temp &= ~PORT_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
-	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	intel_de_write(i915, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_posting_read(i915, BXT_PORT_PLL_ENABLE(port));
 
-	if (IS_GEMINILAKE(dev_priv)) {
-		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	if (IS_GEMINILAKE(i915)) {
+		temp = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 		temp &= ~PORT_PLL_POWER_ENABLE;
-		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_write(i915, BXT_PORT_PLL_ENABLE(port), temp);
 
-		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
+		if (wait_for_us(!(intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) &
 				  PORT_PLL_POWER_STATE), 200))
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Power state not reset for PLL:%d\n", port);
 	}
 }
 
-static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
-					struct intel_shared_dpll *pll,
-					struct intel_dpll_hw_state *hw_state)
+static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
+				     struct intel_shared_dpll *pll,
+				     struct intel_dpll_hw_state *hw_state)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	intel_wakeref_t wakeref;
@@ -2065,49 +2065,49 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool ret;
 
-	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
+	bxt_port_to_phy_channel(i915, port, &phy, &ch);
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
 	ret = false;
 
-	val = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
+	val = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
 	if (!(val & PORT_PLL_ENABLE))
 		goto out;
 
-	hw_state->ebb0 = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
+	hw_state->ebb0 = intel_de_read(i915, BXT_PORT_PLL_EBB_0(phy, ch));
 	hw_state->ebb0 &= PORT_PLL_P1_MASK | PORT_PLL_P2_MASK;
 
-	hw_state->ebb4 = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
+	hw_state->ebb4 = intel_de_read(i915, BXT_PORT_PLL_EBB_4(phy, ch));
 	hw_state->ebb4 &= PORT_PLL_10BIT_CLK_ENABLE;
 
-	hw_state->pll0 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
+	hw_state->pll0 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 0));
 	hw_state->pll0 &= PORT_PLL_M2_INT_MASK;
 
-	hw_state->pll1 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
+	hw_state->pll1 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 1));
 	hw_state->pll1 &= PORT_PLL_N_MASK;
 
-	hw_state->pll2 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
+	hw_state->pll2 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 2));
 	hw_state->pll2 &= PORT_PLL_M2_FRAC_MASK;
 
-	hw_state->pll3 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
+	hw_state->pll3 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 3));
 	hw_state->pll3 &= PORT_PLL_M2_FRAC_ENABLE;
 
-	hw_state->pll6 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
+	hw_state->pll6 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 6));
 	hw_state->pll6 &= PORT_PLL_PROP_COEFF_MASK |
 			  PORT_PLL_INT_COEFF_MASK |
 			  PORT_PLL_GAIN_CTL_MASK;
 
-	hw_state->pll8 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
+	hw_state->pll8 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 8));
 	hw_state->pll8 &= PORT_PLL_TARGET_CNT_MASK;
 
-	hw_state->pll9 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
+	hw_state->pll9 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 9));
 	hw_state->pll9 &= PORT_PLL_LOCK_THRESHOLD_MASK;
 
-	hw_state->pll10 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
+	hw_state->pll10 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 10));
 	hw_state->pll10 &= PORT_PLL_DCO_AMP_OVR_EN_H |
 			   PORT_PLL_DCO_AMP_MASK;
 
@@ -2116,20 +2116,20 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * can read only lane registers. We configure all lanes the same way, so
 	 * here just read out lanes 0/1 and output a note if lanes 2/3 differ.
 	 */
-	hw_state->pcsdw12 = intel_de_read(dev_priv,
+	hw_state->pcsdw12 = intel_de_read(i915,
 					  BXT_PORT_PCS_DW12_LN01(phy, ch));
-	if (intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
-		drm_dbg(&dev_priv->drm,
+	if (intel_de_read(i915, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
+		drm_dbg(&i915->drm,
 			"lane stagger config different for lane 01 (%08x) and 23 (%08x)\n",
 			hw_state->pcsdw12,
-			intel_de_read(dev_priv,
+			intel_de_read(i915,
 				      BXT_PORT_PCS_DW12_LN23(phy, ch)));
 	hw_state->pcsdw12 &= LANE_STAGGER_MASK | LANESTAGGER_STRAP_OVRD;
 
 	ret = true;
 
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
@@ -2320,15 +2320,15 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+	pll = intel_get_shared_dpll_by_id(i915, id);
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 
 	intel_reference_shared_dpll(state, crtc,
@@ -2346,10 +2346,10 @@ static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
 	/* DSI non-SSC ref 19.2MHz */
 }
 
-static void bxt_dump_hw_state(struct drm_i915_private *dev_priv,
+static void bxt_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
+	drm_dbg_kms(&i915->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
 		    "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
 		    "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
 		    hw_state->ebb0,
@@ -2577,9 +2577,9 @@ static const struct skl_wrpll_params tgl_tbt_pll_24MHz_values = {
 static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 				 struct skl_wrpll_params *pll_params)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct icl_combo_pll_params *params =
-		dev_priv->display.dpll.ref_clks.nssc == 24000 ?
+		i915->display.dpll.ref_clks.nssc == 24000 ?
 		icl_dp_combo_pll_24MHz_values :
 		icl_dp_combo_pll_19_2MHz_values;
 	int clock = crtc_state->port_clock;
@@ -2599,12 +2599,12 @@ static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			    struct skl_wrpll_params *pll_params)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		switch (dev_priv->display.dpll.ref_clks.nssc) {
+	if (DISPLAY_VER(i915) >= 12) {
+		switch (i915->display.dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->display.dpll.ref_clks.nssc);
+			MISSING_CASE(i915->display.dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2615,9 +2615,9 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			break;
 		}
 	} else {
-		switch (dev_priv->display.dpll.ref_clks.nssc) {
+		switch (i915->display.dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->display.dpll.ref_clks.nssc);
+			MISSING_CASE(i915->display.dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2873,8 +2873,8 @@ static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 				 struct intel_dpll_hw_state *pll_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int refclk_khz = dev_priv->display.dpll.ref_clks.nssc;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	int refclk_khz = i915->display.dpll.ref_clks.nssc;
 	int clock = crtc_state->port_clock;
 	u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
 	u32 iref_ndiv, iref_trim, iref_pulse_w;
@@ -2884,7 +2884,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	u64 tmp;
 	bool use_ssc = false;
 	bool is_dp = !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
-	bool is_dkl = DISPLAY_VER(dev_priv) >= 12;
+	bool is_dkl = DISPLAY_VER(i915) >= 12;
 	int ret;
 
 	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
@@ -2982,8 +2982,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
-		if (dev_priv->display.vbt.override_afc_startup) {
-			u8 val = dev_priv->display.vbt.override_afc_startup_val;
+		if (i915->display.vbt.override_afc_startup) {
+			u8 val = i915->display.vbt.override_afc_startup_val;
 
 			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
 		}
@@ -3073,16 +3073,16 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
+static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 				   const struct intel_shared_dpll *pll,
 				   const struct intel_dpll_hw_state *pll_state)
 {
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
-	ref_clock = dev_priv->display.dpll.ref_clks.nssc;
+	ref_clock = i915->display.dpll.ref_clks.nssc;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(i915) >= 12) {
 		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
 		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
 		m2_int = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
@@ -3195,7 +3195,7 @@ static u32 intel_get_hti_plls(struct drm_i915_private *i915)
 static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3212,12 +3212,12 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
+	icl_calc_dpll_state(i915, &pll_params, &port_dpll->hw_state);
 
 	/* this is mainly for the fastset check */
 	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
 
-	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
+	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(i915, NULL,
 							    &port_dpll->hw_state);
 
 	return 0;
@@ -3227,7 +3227,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc,
 				  struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3235,13 +3235,13 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	enum port port = encoder->port;
 	unsigned long dpll_mask;
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
+	if (IS_ALDERLAKE_S(i915)) {
 		dpll_mask =
 			BIT(DPLL_ID_DG1_DPLL3) |
 			BIT(DPLL_ID_DG1_DPLL2) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	} else if (IS_DG1(dev_priv)) {
+	} else if (IS_DG1(i915)) {
 		if (port == PORT_D || port == PORT_E) {
 			dpll_mask =
 				BIT(DPLL_ID_DG1_DPLL2) |
@@ -3251,12 +3251,12 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 				BIT(DPLL_ID_DG1_DPLL0) |
 				BIT(DPLL_ID_DG1_DPLL1);
 		}
-	} else if (IS_ROCKETLAKE(dev_priv)) {
+	} else if (IS_ROCKETLAKE(i915)) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	} else if (IS_JSL_EHL(dev_priv) && port != PORT_A) {
+	} else if (IS_JSL_EHL(i915) && port != PORT_A) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
@@ -3266,7 +3266,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	}
 
 	/* Eliminate DPLLs from consideration if reserved by HTI */
-	dpll_mask &= ~intel_get_hti_plls(dev_priv);
+	dpll_mask &= ~intel_get_hti_plls(i915);
 
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
@@ -3285,7 +3285,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3298,7 +3298,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
+	icl_calc_dpll_state(i915, &pll_params, &port_dpll->hw_state);
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
@@ -3308,7 +3308,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	/* this is mainly for the fastset check */
 	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
 
-	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
+	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(i915, NULL,
 							 &port_dpll->hw_state);
 
 	return 0;
@@ -3318,7 +3318,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc,
 				struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3337,7 +3337,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
-	dpll_id = icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
+	dpll_id = icl_tc_port_to_pll_id(intel_port_to_tc(i915,
 							 encoder->port));
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
@@ -3364,12 +3364,12 @@ static int icl_compute_dplls(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc,
 			     struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (intel_phy_is_combo(dev_priv, phy))
+	if (intel_phy_is_combo(i915, phy))
 		return icl_compute_combo_phy_dpll(state, crtc);
-	else if (intel_phy_is_tc(dev_priv, phy))
+	else if (intel_phy_is_tc(i915, phy))
 		return icl_compute_tc_phy_dplls(state, crtc);
 
 	MISSING_CASE(phy);
@@ -3381,12 +3381,12 @@ static int icl_get_dplls(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (intel_phy_is_combo(dev_priv, phy))
+	if (intel_phy_is_combo(i915, phy))
 		return icl_get_combo_phy_dpll(state, crtc, encoder);
-	else if (intel_phy_is_tc(dev_priv, phy))
+	else if (intel_phy_is_tc(i915, phy))
 		return icl_get_tc_phy_dplls(state, crtc, encoder);
 
 	MISSING_CASE(phy);
@@ -3420,7 +3420,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 	}
 }
 
-static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll,
 				struct intel_dpll_hw_state *hw_state)
 {
@@ -3430,46 +3430,46 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	bool ret = false;
 	u32 val;
 
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	hw_state->mg_refclkin_ctl = intel_de_read(dev_priv,
+	hw_state->mg_refclkin_ctl = intel_de_read(i915,
 						  MG_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_de_read(i915, MG_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
+		intel_de_read(i915, MG_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_de_read(dev_priv, MG_PLL_DIV0(tc_port));
-	hw_state->mg_pll_div1 = intel_de_read(dev_priv, MG_PLL_DIV1(tc_port));
-	hw_state->mg_pll_lf = intel_de_read(dev_priv, MG_PLL_LF(tc_port));
-	hw_state->mg_pll_frac_lock = intel_de_read(dev_priv,
+	hw_state->mg_pll_div0 = intel_de_read(i915, MG_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div1 = intel_de_read(i915, MG_PLL_DIV1(tc_port));
+	hw_state->mg_pll_lf = intel_de_read(i915, MG_PLL_LF(tc_port));
+	hw_state->mg_pll_frac_lock = intel_de_read(i915,
 						   MG_PLL_FRAC_LOCK(tc_port));
-	hw_state->mg_pll_ssc = intel_de_read(dev_priv, MG_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_de_read(i915, MG_PLL_SSC(tc_port));
 
-	hw_state->mg_pll_bias = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_de_read(i915, MG_PLL_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_de_read(i915, MG_PLL_TDC_COLDST_BIAS(tc_port));
 
-	if (dev_priv->display.dpll.ref_clks.nssc == 38400) {
+	if (i915->display.dpll.ref_clks.nssc == 38400) {
 		hw_state->mg_pll_tdc_coldst_bias_mask = MG_PLL_TDC_COLDST_COLDSTART;
 		hw_state->mg_pll_bias_mask = 0;
 	} else {
@@ -3482,11 +3482,11 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 	ret = true;
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
-static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *hw_state)
 {
@@ -3496,12 +3496,12 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	bool ret = false;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, intel_tc_pll_enable_reg(dev_priv, pll));
+	val = intel_de_read(i915, intel_tc_pll_enable_reg(i915, pll));
 	if (!(val & PLL_ENABLE))
 		goto out;
 
@@ -3509,15 +3509,15 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * All registers read here have the same HIP_INDEX_REG even though
 	 * they are on different building blocks
 	 */
-	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+	intel_de_write(i915, HIP_INDEX_REG(tc_port),
 		       HIP_INDEX_VAL(tc_port, 0x2));
 
-	hw_state->mg_refclkin_ctl = intel_de_read(dev_priv,
+	hw_state->mg_refclkin_ctl = intel_de_read(i915,
 						  DKL_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
+		intel_de_read(i915, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
@@ -3525,42 +3525,42 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_de_read(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div0 = intel_de_read(i915, DKL_PLL_DIV0(tc_port));
 	val = DKL_PLL_DIV0_MASK;
-	if (dev_priv->display.vbt.override_afc_startup)
+	if (i915->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
-	hw_state->mg_pll_div1 = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
+	hw_state->mg_pll_div1 = intel_de_read(i915, DKL_PLL_DIV1(tc_port));
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
 				  DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 
-	hw_state->mg_pll_ssc = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_de_read(i915, DKL_PLL_SSC(tc_port));
 	hw_state->mg_pll_ssc &= (DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 				 DKL_PLL_SSC_STEP_LEN_MASK |
 				 DKL_PLL_SSC_STEP_NUM_MASK |
 				 DKL_PLL_SSC_EN);
 
-	hw_state->mg_pll_bias = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_de_read(i915, DKL_PLL_BIAS(tc_port));
 	hw_state->mg_pll_bias &= (DKL_PLL_BIAS_FRAC_EN_H |
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_de_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias &= (DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 					     DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 
 	ret = true;
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
-static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *hw_state,
 				 i915_reg_t enable_reg)
@@ -3570,93 +3570,93 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	bool ret = false;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR1(id));
-	} else if (IS_DG1(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
-	} else if (IS_ROCKETLAKE(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv,
+	if (IS_ALDERLAKE_S(i915)) {
+		hw_state->cfgcr0 = intel_de_read(i915, ADLS_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(i915, ADLS_DPLL_CFGCR1(id));
+	} else if (IS_DG1(i915)) {
+		hw_state->cfgcr0 = intel_de_read(i915, DG1_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(i915, DG1_DPLL_CFGCR1(id));
+	} else if (IS_ROCKETLAKE(i915)) {
+		hw_state->cfgcr0 = intel_de_read(i915,
 						 RKL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv,
+		hw_state->cfgcr1 = intel_de_read(i915,
 						 RKL_DPLL_CFGCR1(id));
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv,
+	} else if (DISPLAY_VER(i915) >= 12) {
+		hw_state->cfgcr0 = intel_de_read(i915,
 						 TGL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv,
+		hw_state->cfgcr1 = intel_de_read(i915,
 						 TGL_DPLL_CFGCR1(id));
-		if (dev_priv->display.vbt.override_afc_startup) {
-			hw_state->div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
+		if (i915->display.vbt.override_afc_startup) {
+			hw_state->div0 = intel_de_read(i915, TGL_DPLL0_DIV0(id));
 			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
 	} else {
-		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
-			hw_state->cfgcr0 = intel_de_read(dev_priv,
+		if (IS_JSL_EHL(i915) && id == DPLL_ID_EHL_DPLL4) {
+			hw_state->cfgcr0 = intel_de_read(i915,
 							 ICL_DPLL_CFGCR0(4));
-			hw_state->cfgcr1 = intel_de_read(dev_priv,
+			hw_state->cfgcr1 = intel_de_read(i915,
 							 ICL_DPLL_CFGCR1(4));
 		} else {
-			hw_state->cfgcr0 = intel_de_read(dev_priv,
+			hw_state->cfgcr0 = intel_de_read(i915,
 							 ICL_DPLL_CFGCR0(id));
-			hw_state->cfgcr1 = intel_de_read(dev_priv,
+			hw_state->cfgcr1 = intel_de_read(i915,
 							 ICL_DPLL_CFGCR1(id));
 		}
 	}
 
 	ret = true;
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
-static bool combo_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool combo_pll_get_hw_state(struct drm_i915_private *i915,
 				   struct intel_shared_dpll *pll,
 				   struct intel_dpll_hw_state *hw_state)
 {
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);
+	return icl_pll_get_hw_state(i915, pll, hw_state, enable_reg);
 }
 
-static bool tbt_pll_get_hw_state(struct drm_i915_private *dev_priv,
+static bool tbt_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *hw_state)
 {
-	return icl_pll_get_hw_state(dev_priv, pll, hw_state, TBT_PLL_ENABLE);
+	return icl_pll_get_hw_state(i915, pll, hw_state, TBT_PLL_ENABLE);
 }
 
-static void icl_dpll_write(struct drm_i915_private *dev_priv,
+static void icl_dpll_write(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll)
 {
 	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
+	if (IS_ALDERLAKE_S(i915)) {
 		cfgcr0_reg = ADLS_DPLL_CFGCR0(id);
 		cfgcr1_reg = ADLS_DPLL_CFGCR1(id);
-	} else if (IS_DG1(dev_priv)) {
+	} else if (IS_DG1(i915)) {
 		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
 		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
-	} else if (IS_ROCKETLAKE(dev_priv)) {
+	} else if (IS_ROCKETLAKE(i915)) {
 		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
 		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(i915) >= 12) {
 		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
 		div0_reg = TGL_DPLL0_DIV0(id);
 	} else {
-		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
+		if (IS_JSL_EHL(i915) && id == DPLL_ID_EHL_DPLL4) {
 			cfgcr0_reg = ICL_DPLL_CFGCR0(4);
 			cfgcr1_reg = ICL_DPLL_CFGCR1(4);
 		} else {
@@ -3665,18 +3665,18 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
-	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
-	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->display.vbt.override_afc_startup &&
+	intel_de_write(i915, cfgcr0_reg, hw_state->cfgcr0);
+	intel_de_write(i915, cfgcr1_reg, hw_state->cfgcr1);
+	drm_WARN_ON_ONCE(&i915->drm, i915->display.vbt.override_afc_startup &&
 			 !i915_mmio_reg_valid(div0_reg));
-	if (dev_priv->display.vbt.override_afc_startup &&
+	if (i915->display.vbt.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
-		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
+		intel_de_rmw(i915, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
 			     hw_state->div0);
-	intel_de_posting_read(dev_priv, cfgcr1_reg);
+	intel_de_posting_read(i915, cfgcr1_reg);
 }
 
-static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
+static void icl_mg_pll_write(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll)
 {
 	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
@@ -3689,45 +3689,45 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
 	 * during the calc/readout phase if the mask depends on some other HW
 	 * state like refclk, see icl_calc_mg_pll_state().
 	 */
-	val = intel_de_read(dev_priv, MG_REFCLKIN_CTL(tc_port));
+	val = intel_de_read(i915, MG_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	intel_de_write(dev_priv, MG_REFCLKIN_CTL(tc_port), val);
+	intel_de_write(i915, MG_REFCLKIN_CTL(tc_port), val);
 
-	val = intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_de_read(i915, MG_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_de_write(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_de_write(i915, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_de_read(i915, MG_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_de_write(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_de_write(i915, MG_CLKTOP2_HSCLKCTL(tc_port), val);
 
-	intel_de_write(dev_priv, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
-	intel_de_write(dev_priv, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
-	intel_de_write(dev_priv, MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
-	intel_de_write(dev_priv, MG_PLL_FRAC_LOCK(tc_port),
+	intel_de_write(i915, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
+	intel_de_write(i915, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
+	intel_de_write(i915, MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
+	intel_de_write(i915, MG_PLL_FRAC_LOCK(tc_port),
 		       hw_state->mg_pll_frac_lock);
-	intel_de_write(dev_priv, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
+	intel_de_write(i915, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
 
-	val = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
+	val = intel_de_read(i915, MG_PLL_BIAS(tc_port));
 	val &= ~hw_state->mg_pll_bias_mask;
 	val |= hw_state->mg_pll_bias;
-	intel_de_write(dev_priv, MG_PLL_BIAS(tc_port), val);
+	intel_de_write(i915, MG_PLL_BIAS(tc_port), val);
 
-	val = intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_de_read(i915, MG_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_de_write(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_de_write(i915, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	intel_de_posting_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_de_posting_read(i915, MG_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
-static void dkl_pll_write(struct drm_i915_private *dev_priv,
+static void dkl_pll_write(struct drm_i915_private *i915,
 			  struct intel_shared_dpll *pll)
 {
 	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
@@ -3738,95 +3738,95 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	 * All registers programmed here have the same HIP_INDEX_REG even
 	 * though on different building block
 	 */
-	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+	intel_de_write(i915, HIP_INDEX_REG(tc_port),
 		       HIP_INDEX_VAL(tc_port, 0x2));
 
 	/* All the registers are RMW */
-	val = intel_de_read(dev_priv, DKL_REFCLKIN_CTL(tc_port));
+	val = intel_de_read(i915, DKL_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	intel_de_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), val);
+	intel_de_write(i915, DKL_REFCLKIN_CTL(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_de_read(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_de_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_de_write(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_de_read(i915, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_de_write(i915, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
 	val = DKL_PLL_DIV0_MASK;
-	if (dev_priv->display.vbt.override_afc_startup)
+	if (i915->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
-	intel_de_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
+	intel_de_rmw(i915, DKL_PLL_DIV0(tc_port), val,
 		     hw_state->mg_pll_div0);
 
-	val = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
+	val = intel_de_read(i915, DKL_PLL_DIV1(tc_port));
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
 		 DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 	val |= hw_state->mg_pll_div1;
-	intel_de_write(dev_priv, DKL_PLL_DIV1(tc_port), val);
+	intel_de_write(i915, DKL_PLL_DIV1(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
+	val = intel_de_read(i915, DKL_PLL_SSC(tc_port));
 	val &= ~(DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 		 DKL_PLL_SSC_STEP_LEN_MASK |
 		 DKL_PLL_SSC_STEP_NUM_MASK |
 		 DKL_PLL_SSC_EN);
 	val |= hw_state->mg_pll_ssc;
-	intel_de_write(dev_priv, DKL_PLL_SSC(tc_port), val);
+	intel_de_write(i915, DKL_PLL_SSC(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
+	val = intel_de_read(i915, DKL_PLL_BIAS(tc_port));
 	val &= ~(DKL_PLL_BIAS_FRAC_EN_H |
 		 DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 	val |= hw_state->mg_pll_bias;
-	intel_de_write(dev_priv, DKL_PLL_BIAS(tc_port), val);
+	intel_de_write(i915, DKL_PLL_BIAS(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_de_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~(DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 		 DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_de_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_de_write(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	intel_de_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_de_posting_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
-static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
+static void icl_pll_power_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
 				 i915_reg_t enable_reg)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	val |= PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_write(i915, enable_reg, val);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
 	 * immediate.
 	 */
-	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_POWER_STATE, 1))
-		drm_err(&dev_priv->drm, "PLL %d Power not enabled\n",
+	if (intel_de_wait_for_set(i915, enable_reg, PLL_POWER_STATE, 1))
+		drm_err(&i915->drm, "PLL %d Power not enabled\n",
 			pll->info->id);
 }
 
-static void icl_pll_enable(struct drm_i915_private *dev_priv,
+static void icl_pll_enable(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll,
 			   i915_reg_t enable_reg)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	val |= PLL_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_write(i915, enable_reg, val);
 
 	/* Timeout is actually 600us. */
-	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "PLL %d not locked\n", pll->info->id);
+	if (intel_de_wait_for_set(i915, enable_reg, PLL_LOCK, 1))
+		drm_err(&i915->drm, "PLL %d not locked\n", pll->info->id);
 }
 
 static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct intel_shared_dpll *pll)
@@ -3854,12 +3854,12 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
 }
 
-static void combo_pll_enable(struct drm_i915_private *dev_priv,
+static void combo_pll_enable(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	if (IS_JSL_EHL(dev_priv) &&
+	if (IS_JSL_EHL(i915) &&
 	    pll->info->id == DPLL_ID_EHL_DPLL4) {
 
 		/*
@@ -3867,13 +3867,13 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 		 * This can be done by taking a reference on DPLL4 power
 		 * domain.
 		 */
-		pll->wakeref = intel_display_power_get(dev_priv,
+		pll->wakeref = intel_display_power_get(i915,
 						       POWER_DOMAIN_DC_OFF);
 	}
 
-	icl_pll_power_enable(dev_priv, pll, enable_reg);
+	icl_pll_power_enable(i915, pll, enable_reg);
 
-	icl_dpll_write(dev_priv, pll);
+	icl_dpll_write(i915, pll);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3881,19 +3881,19 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(dev_priv, pll, enable_reg);
+	icl_pll_enable(i915, pll, enable_reg);
 
-	adlp_cmtg_clock_gating_wa(dev_priv, pll);
+	adlp_cmtg_clock_gating_wa(i915, pll);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void tbt_pll_enable(struct drm_i915_private *dev_priv,
+static void tbt_pll_enable(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll)
 {
-	icl_pll_power_enable(dev_priv, pll, TBT_PLL_ENABLE);
+	icl_pll_power_enable(i915, pll, TBT_PLL_ENABLE);
 
-	icl_dpll_write(dev_priv, pll);
+	icl_dpll_write(i915, pll);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3901,22 +3901,22 @@ static void tbt_pll_enable(struct drm_i915_private *dev_priv,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(dev_priv, pll, TBT_PLL_ENABLE);
+	icl_pll_enable(i915, pll, TBT_PLL_ENABLE);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void mg_pll_enable(struct drm_i915_private *dev_priv,
+static void mg_pll_enable(struct drm_i915_private *i915,
 			  struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
-	icl_pll_power_enable(dev_priv, pll, enable_reg);
+	icl_pll_power_enable(i915, pll, enable_reg);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		dkl_pll_write(dev_priv, pll);
+	if (DISPLAY_VER(i915) >= 12)
+		dkl_pll_write(i915, pll);
 	else
-		icl_mg_pll_write(dev_priv, pll);
+		icl_mg_pll_write(i915, pll);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3924,12 +3924,12 @@ static void mg_pll_enable(struct drm_i915_private *dev_priv,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(dev_priv, pll, enable_reg);
+	icl_pll_enable(i915, pll, enable_reg);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void icl_pll_disable(struct drm_i915_private *dev_priv,
+static void icl_pll_disable(struct drm_i915_private *i915,
 			    struct intel_shared_dpll *pll,
 			    i915_reg_t enable_reg)
 {
@@ -3943,54 +3943,54 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 	 * nothing here.
 	 */
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	val &= ~PLL_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_write(i915, enable_reg, val);
 
 	/* Timeout is actually 1us. */
-	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "PLL %d locked\n", pll->info->id);
+	if (intel_de_wait_for_clear(i915, enable_reg, PLL_LOCK, 1))
+		drm_err(&i915->drm, "PLL %d locked\n", pll->info->id);
 
 	/* DVFS post sequence would be here. See the comment above. */
 
-	val = intel_de_read(dev_priv, enable_reg);
+	val = intel_de_read(i915, enable_reg);
 	val &= ~PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_write(i915, enable_reg, val);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
 	 * immediate.
 	 */
-	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_POWER_STATE, 1))
-		drm_err(&dev_priv->drm, "PLL %d Power not disabled\n",
+	if (intel_de_wait_for_clear(i915, enable_reg, PLL_POWER_STATE, 1))
+		drm_err(&i915->drm, "PLL %d Power not disabled\n",
 			pll->info->id);
 }
 
-static void combo_pll_disable(struct drm_i915_private *dev_priv,
+static void combo_pll_disable(struct drm_i915_private *i915,
 			      struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	icl_pll_disable(dev_priv, pll, enable_reg);
+	icl_pll_disable(i915, pll, enable_reg);
 
-	if (IS_JSL_EHL(dev_priv) &&
+	if (IS_JSL_EHL(i915) &&
 	    pll->info->id == DPLL_ID_EHL_DPLL4)
-		intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF,
+		intel_display_power_put(i915, POWER_DOMAIN_DC_OFF,
 					pll->wakeref);
 }
 
-static void tbt_pll_disable(struct drm_i915_private *dev_priv,
+static void tbt_pll_disable(struct drm_i915_private *i915,
 			    struct intel_shared_dpll *pll)
 {
-	icl_pll_disable(dev_priv, pll, TBT_PLL_ENABLE);
+	icl_pll_disable(i915, pll, TBT_PLL_ENABLE);
 }
 
-static void mg_pll_disable(struct drm_i915_private *dev_priv,
+static void mg_pll_disable(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(dev_priv, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
-	icl_pll_disable(dev_priv, pll, enable_reg);
+	icl_pll_disable(i915, pll, enable_reg);
 }
 
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -3999,10 +3999,10 @@ static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
-static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
+static void icl_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
 		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
 		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
@@ -4184,42 +4184,42 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
- * @dev_priv: i915 device
+ * @i915: i915 device
  *
- * Initialize shared DPLLs for @dev_priv.
+ * Initialize shared DPLLs for @i915.
  */
-void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
+void intel_shared_dpll_init(struct drm_i915_private *i915)
 {
 	const struct intel_dpll_mgr *dpll_mgr = NULL;
 	const struct dpll_info *dpll_info;
 	int i;
 
-	mutex_init(&dev_priv->display.dpll.lock);
+	mutex_init(&i915->display.dpll.lock);
 
-	if (IS_DG2(dev_priv))
+	if (IS_DG2(i915))
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(i915))
 		dpll_mgr = &adlp_pll_mgr;
-	else if (IS_ALDERLAKE_S(dev_priv))
+	else if (IS_ALDERLAKE_S(i915))
 		dpll_mgr = &adls_pll_mgr;
-	else if (IS_DG1(dev_priv))
+	else if (IS_DG1(i915))
 		dpll_mgr = &dg1_pll_mgr;
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (IS_ROCKETLAKE(i915))
 		dpll_mgr = &rkl_pll_mgr;
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(i915) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
-	else if (IS_JSL_EHL(dev_priv))
+	else if (IS_JSL_EHL(i915))
 		dpll_mgr = &ehl_pll_mgr;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(i915) >= 11)
 		dpll_mgr = &icl_pll_mgr;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
 		dpll_mgr = &bxt_pll_mgr;
-	else if (DISPLAY_VER(dev_priv) == 9)
+	else if (DISPLAY_VER(i915) == 9)
 		dpll_mgr = &skl_pll_mgr;
-	else if (HAS_DDI(dev_priv))
+	else if (HAS_DDI(i915))
 		dpll_mgr = &hsw_pll_mgr;
-	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
+	else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
 		dpll_mgr = &pch_pll_mgr;
 
 	if (!dpll_mgr)
@@ -4228,20 +4228,20 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	dpll_info = dpll_mgr->dpll_info;
 
 	for (i = 0; dpll_info[i].name; i++) {
-		if (drm_WARN_ON(&dev_priv->drm,
-				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
+		if (drm_WARN_ON(&i915->drm,
+				i >= ARRAY_SIZE(i915->display.dpll.shared_dplls)))
 			break;
 
 		/* must fit into unsigned long bitmask on 32bit */
-		if (drm_WARN_ON(&dev_priv->drm, dpll_info[i].id >= 32))
+		if (drm_WARN_ON(&i915->drm, dpll_info[i].id >= 32))
 			break;
 
-		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
-		dev_priv->display.dpll.shared_dplls[i].index = i;
+		i915->display.dpll.shared_dplls[i].info = &dpll_info[i];
+		i915->display.dpll.shared_dplls[i].index = i;
 	}
 
-	dev_priv->display.dpll.mgr = dpll_mgr;
-	dev_priv->display.dpll.num_shared_dpll = i;
+	i915->display.dpll.mgr = dpll_mgr;
+	i915->display.dpll.num_shared_dpll = i;
 }
 
 /**
@@ -4262,10 +4262,10 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
 
-	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
+	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
 		return -EINVAL;
 
 	return dpll_mgr->compute_dplls(state, crtc, encoder);
@@ -4295,10 +4295,10 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
 
-	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
+	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
 		return -EINVAL;
 
 	return dpll_mgr->get_dplls(state, crtc, encoder);
@@ -4318,8 +4318,8 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
 
 	/*
 	 * FIXME: this function is called for every platform having a
@@ -4347,10 +4347,10 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
 
-	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
+	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
 		return;
 
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
@@ -4462,21 +4462,21 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 
 /**
  * intel_dpll_dump_hw_state - write hw_state to dmesg
- * @dev_priv: i915 drm device
+ * @i915: i915 drm device
  * @hw_state: hw state to be written to the log
  *
  * Write the relevant values in @hw_state to dmesg using drm_dbg_kms.
  */
-void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
+void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	if (dev_priv->display.dpll.mgr) {
-		dev_priv->display.dpll.mgr->dump_hw_state(dev_priv, hw_state);
+	if (i915->display.dpll.mgr) {
+		i915->display.dpll.mgr->dump_hw_state(i915, hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
 		 */
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
 			    "fp0: 0x%x, fp1: 0x%x\n",
 			    hw_state->dpll,
@@ -4487,7 +4487,7 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 }
 
 static void
-verify_single_dpll_state(struct drm_i915_private *dev_priv,
+verify_single_dpll_state(struct drm_i915_private *i915,
 			 struct intel_shared_dpll *pll,
 			 struct intel_crtc *crtc,
 			 struct intel_crtc_state *new_crtc_state)
@@ -4498,9 +4498,9 @@ verify_single_dpll_state(struct drm_i915_private *dev_priv,
 
 	memset(&dpll_hw_state, 0, sizeof(dpll_hw_state));
 
-	drm_dbg_kms(&dev_priv->drm, "%s\n", pll->info->name);
+	drm_dbg_kms(&i915->drm, "%s\n", pll->info->name);
 
-	active = intel_dpll_get_hw_state(dev_priv, pll, &dpll_hw_state);
+	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
 
 	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
 		I915_STATE_WARN(!pll->on && pll->active_mask,
@@ -4545,10 +4545,10 @@ void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
 				    struct intel_crtc_state *old_crtc_state,
 				    struct intel_crtc_state *new_crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	if (new_crtc_state->shared_dpll)
-		verify_single_dpll_state(dev_priv, new_crtc_state->shared_dpll,
+		verify_single_dpll_state(i915, new_crtc_state->shared_dpll,
 					 crtc, new_crtc_state);
 
 	if (old_crtc_state->shared_dpll &&
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d419f4f98d28..a6186f960c92 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -334,9 +334,9 @@ struct intel_shared_dpll {
 
 /* shared dpll functions */
 struct intel_shared_dpll *
-intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
+intel_get_shared_dpll_by_id(struct drm_i915_private *i915,
 			    enum intel_dpll_id id);
-void assert_shared_dpll(struct drm_i915_private *dev_priv,
+void assert_shared_dpll(struct drm_i915_private *i915,
 			struct intel_shared_dpll *pll,
 			bool state);
 #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
@@ -363,12 +363,12 @@ bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
-void intel_shared_dpll_init(struct drm_i915_private *dev_priv);
-void intel_dpll_update_ref_clks(struct drm_i915_private *dev_priv);
-void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
-void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
+void intel_shared_dpll_init(struct drm_i915_private *i915);
+void intel_dpll_update_ref_clks(struct drm_i915_private *i915);
+void intel_dpll_readout_hw_state(struct drm_i915_private *i915);
+void intel_dpll_sanitize_state(struct drm_i915_private *i915);
 
-void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
+void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 			      const struct intel_dpll_hw_state *hw_state);
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
-- 
2.35.1

