Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3885B5BFDCB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC23510E960;
	Wed, 21 Sep 2022 12:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBACF10E955
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663763035; x=1695299035;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jOb2KoxNPF+bG8CSZNOagoKaJ/AxQDWmxViRhMh4iSo=;
 b=NOFSpmkx4cqP1VVl5CdCY2WPbIBXCgCqMKHmJSN/Qrkz9uoUWog/NjNA
 d1wmDWVwK0Z5UogoX1vqx8qNPCYmrNzCLSs60DdCfk7ltLAwfoamfIGwJ
 O4KCjkJWtxwymBpx9hV7jH/8klnELQ14biej/lUl98xKnhx5FO0K7+JrJ
 /wRXdM4M46GXgagXPx83Na6HE8B//hZbLxRlEBxbA17bnyQ7j1jhzTtIf
 bSkG56ojyRXtG7lrnJwJGzXWm1zdJUqixwthabmy6aXP3/gcu296JA0O3
 /WehrvaRQfWt7CZGukW6QWDjtCnDS5PxJf7eBvaXxiz47z9oeRRRi3VsJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="301387624"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301387624"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="652510458"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 21 Sep 2022 05:23:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 15:23:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 15:23:42 +0300
Message-Id: <20220921122343.13061-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Stop requiring PLL index == PLL ID
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

Both i915->shared_dplls[] and state->shared_dpll[] are indexed
by the same thing now, which is just the index we get at
initialization from dpll_mgr->dpll_info[]. The rest is all about
PLL IDs now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 64 +++++++++++++------
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  5 +-
 2 files changed, 47 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f900c4c73cc6..fb09029cc4aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -110,7 +110,7 @@ static void
 intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
-	enum intel_dpll_id i;
+	int i;
 
 	/* Copy shared dpll state */
 	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
@@ -137,6 +137,13 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 	return state->shared_dpll;
 }
 
+static int
+intel_shared_dpll_idx(struct drm_i915_private *i915,
+		      const struct intel_shared_dpll *pll)
+{
+	return pll - &i915->display.dpll.shared_dplls[0];
+}
+
 /**
  * intel_get_shared_dpll_by_id - get a DPLL given its id
  * @dev_priv: i915 device instance
@@ -149,7 +156,17 @@ struct intel_shared_dpll *
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
@@ -305,16 +322,23 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
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
+		int i;
+
+		pll = intel_get_shared_dpll_by_id(dev_priv, id);
+		if (!pll)
+			continue;
+
+		i = intel_shared_dpll_idx(dev_priv, pll);
 
 		/* Only want to check enabled timings first */
 		if (shared_dpll[i].pipe_mask == 0) {
@@ -355,27 +379,29 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
-	const enum intel_dpll_id id = pll->info->id;
+	int i = intel_shared_dpll_idx(i915, pll);
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	if (shared_dpll[id].pipe_mask == 0)
-		shared_dpll[id].hw_state = *pll_state;
+	if (shared_dpll[i].pipe_mask == 0)
+		shared_dpll[i].hw_state = *pll_state;
 
 	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
 		pipe_name(crtc->pipe));
 
-	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
+	shared_dpll[i].pipe_mask |= BIT(crtc->pipe);
 }
 
 static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_shared_dpll *pll)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
+	int i = intel_shared_dpll_idx(i915, pll);
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
-	shared_dpll[pll->info->id].pipe_mask &= ~BIT(crtc->pipe);
+	shared_dpll[i].pipe_mask &= ~BIT(crtc->pipe);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -409,14 +435,13 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
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
 
 		swap(pll->state, shared_dpll[i]);
 	}
@@ -510,12 +535,12 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
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
@@ -4199,10 +4224,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
 		dpll_mgr = &pch_pll_mgr;
 
-	if (!dpll_mgr) {
-		dev_priv->display.dpll.num_shared_dpll = 0;
+	if (!dpll_mgr)
 		return;
-	}
 
 	dpll_info = dpll_mgr->dpll_info;
 
@@ -4211,7 +4234,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
 			break;
 
-		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
 	}
 
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

