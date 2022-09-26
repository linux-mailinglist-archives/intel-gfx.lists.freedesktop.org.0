Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7D25EB102
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DAFC10E790;
	Mon, 26 Sep 2022 19:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2434C10E76D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664219627; x=1695755627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oJ/JRo0mQp9cBlqeYVJb5Tv7Dzekx2Z3WV5UJ28irEI=;
 b=MKWYPN9V5Uzap6Pn3Fkc/YSnH3X58Cny9PVzVll74VnNyXMc5CXCixK/
 /4GNQ4udNqbZqQHV57VtwS9HbqqsJxhjYXZq7w6U7J8lgEbVmDUNBQ0kD
 J4kliEuEdxFr6miYWApoc8WJ52wj/bBveLa0Uw1L7cvl/JixYcjOCUiF1
 axMCZwcugiwnM4hSJClbScwkKUnghD3abI8PcI7QzNoW2vhGGXHStnRZn
 +CMXsbz8WmE4Go0S7KJVnT1yQ30/zgLFaZQdqACl6Ph2Ur/QSmLTrEdKa
 lq4bVJiZQ003vDo4Upn6VUwur50AioehW+VsBqDh2QzJZzla7Sgkv9zBr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280841914"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280841914"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616525362"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616525362"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2022 12:13:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:13:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:13:38 +0300
Message-Id: <20220926191341.5495-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Stop requiring PLL index ==
 PLL ID
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

There's no good reason to keep around this PLL index == PLL ID
footgun. Get rid of it.

state->shared_dpll[] is now indexed by pll->index, which happens
to match the index for i915->shared_dplls[] but that detail
is inconsequential now. Everything else is all about PLL IDs now.

v2: Add pll->index to mimic drm_crtc & co.
    Remove the comment saying ID should match the index

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 67 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  8 ++-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  5 +-
 3 files changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b63600d8ebeb..78c63a2532c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -110,13 +110,13 @@ static void
 intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
-	enum intel_dpll_id i;
+	int i;
 
 	/* Copy shared dpll state */
 	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
 		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
 
-		shared_dpll[i] = pll->state;
+		shared_dpll[pll->index] = pll->state;
 	}
 }
 
@@ -149,7 +149,17 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 			    enum intel_dpll_id id)
 {
-	return &dev_priv->display.dpll.shared_dplls[id];
+	int i;
+
+	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
+
+		if (pll->info->id == id)
+			return pll;
+	}
+
+	MISSING_CASE(id);
+	return NULL;
 }
 
 /* For ILK+ */
@@ -305,32 +315,36 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		       unsigned long dpll_mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_shared_dpll *pll, *unused_pll = NULL;
 	struct intel_shared_dpll_state *shared_dpll;
-	enum intel_dpll_id i;
+	struct intel_shared_dpll *unused_pll = NULL;
+	enum intel_dpll_id id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
 	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
 
-	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
-		pll = &dev_priv->display.dpll.shared_dplls[i];
+	for_each_set_bit(id, &dpll_mask, I915_NUM_PLLS) {
+		struct intel_shared_dpll *pll;
+
+		pll = intel_get_shared_dpll_by_id(dev_priv, id);
+		if (!pll)
+			continue;
 
 		/* Only want to check enabled timings first */
-		if (shared_dpll[i].pipe_mask == 0) {
+		if (shared_dpll[pll->index].pipe_mask == 0) {
 			if (!unused_pll)
 				unused_pll = pll;
 			continue;
 		}
 
 		if (memcmp(pll_state,
-			   &shared_dpll[i].hw_state,
+			   &shared_dpll[pll->index].hw_state,
 			   sizeof(*pll_state)) == 0) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
 				    crtc->base.base.id, crtc->base.name,
 				    pll->info->name,
-				    shared_dpll[i].pipe_mask,
+				    shared_dpll[pll->index].pipe_mask,
 				    pll->active_mask);
 			return pll;
 		}
@@ -355,16 +369,15 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
-	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	if (shared_dpll[id].pipe_mask == 0)
-		shared_dpll[id].hw_state = *pll_state;
+	if (shared_dpll[pll->index].pipe_mask == 0)
+		shared_dpll[pll->index].hw_state = *pll_state;
 
-	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) != 0);
+	drm_WARN_ON(&i915->drm, (shared_dpll[pll->index].pipe_mask & BIT(crtc->pipe)) != 0);
 
-	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
+	shared_dpll[pll->index].pipe_mask |= BIT(crtc->pipe);
 
 	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
@@ -376,13 +389,12 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
-	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) == 0);
+	drm_WARN_ON(&i915->drm, (shared_dpll[pll->index].pipe_mask & BIT(crtc->pipe)) == 0);
 
-	shared_dpll[id].pipe_mask &= ~BIT(crtc->pipe);
+	shared_dpll[pll->index].pipe_mask &= ~BIT(crtc->pipe);
 
 	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
@@ -419,16 +431,15 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
-	enum intel_dpll_id i;
+	int i;
 
 	if (!state->dpll_set)
 		return;
 
 	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll =
-			&dev_priv->display.dpll.shared_dplls[i];
+		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
 
-		swap(pll->state, shared_dpll[i]);
+		swap(pll->state, shared_dpll[pll->index]);
 	}
 }
 
@@ -520,12 +531,12 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
-	enum intel_dpll_id i;
+	enum intel_dpll_id id;
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
-		i = (enum intel_dpll_id) crtc->pipe;
-		pll = &dev_priv->display.dpll.shared_dplls[i];
+		id = (enum intel_dpll_id) crtc->pipe;
+		pll = intel_get_shared_dpll_by_id(dev_priv, id);
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
@@ -4199,10 +4210,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
 		dpll_mgr = &pch_pll_mgr;
 
-	if (!dpll_mgr) {
-		dev_priv->display.dpll.num_shared_dpll = 0;
+	if (!dpll_mgr)
 		return;
-	}
 
 	dpll_info = dpll_mgr->dpll_info;
 
@@ -4211,8 +4220,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
 			break;
 
-		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
+		dev_priv->display.dpll.shared_dplls[i].index = i;
 	}
 
 	dev_priv->display.dpll.mgr = dpll_mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3854f1b4299a..b8dce4e9ac54 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -269,8 +269,7 @@ struct dpll_info {
 	const struct intel_shared_dpll_funcs *funcs;
 
 	/**
-	 * @id: unique indentifier for this DPLL; should match the index in the
-	 * dev_priv->shared_dplls array
+	 * @id: unique indentifier for this DPLL
 	 */
 	enum intel_dpll_id id;
 
@@ -297,6 +296,11 @@ struct intel_shared_dpll {
 	 */
 	struct intel_shared_dpll_state state;
 
+	/**
+	 * @index: index for atomic state
+	 */
+	u8 index;
+
 	/**
 	 * @active_mask: mask of active pipes (i.e. DPMS on) using this DPLL
 	 */
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index a66097cdc1e0..4db4b8d57e21 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -533,7 +533,10 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 	/* Check if any DPLLs are using the SSC source */
 	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
+		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
+		u32 temp;
+
+		temp = intel_de_read(dev_priv, PCH_DPLL(pll->info->id));
 
 		if (!(temp & DPLL_VCO_ENABLE))
 			continue;
-- 
2.35.1

