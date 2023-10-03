Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2FF7B7248
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6096110E071;
	Tue,  3 Oct 2023 20:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A5710E071
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 20:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696363586; x=1727899586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uCx2GalSdBphNOtityDPggsy6Rru1iacxw44OIwx2Lg=;
 b=HLy+3iSlHf28up5HnPX5NhfHvcK3Cl093EovzknCPtU222BP62Ea30Ah
 nDrS6mfco/wBJ5iLKqP7oLdxRMH+X+Pqt3oTzsb98X4cYXGM+kFW7rHy1
 cyEnhbyTYUpXJTjapW9pdbNpIMkETPQhrrOzUR1M+YrOIOtdtJgjqQnNm
 YlsneDTIMcfmDCFZJ2rDC85/Kdww6gHi3pgV1xEkgad+aKyvg/XVC1HCR
 P42agEKxysQGWNaxGkxGHkYBahGBRxQdm4ZfelKNNrptLgXaohNibIZ+k
 EjcvbT+BVrQa5JCk0JvXb4GFxAPWUqlsJVkLqHgVzeqNB3tl5REv8soxV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380242815"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380242815"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 13:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816829646"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="816829646"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 03 Oct 2023 13:06:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 23:06:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 23:06:17 +0300
Message-ID: <20231003200620.11633-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915: Stop requiring PLL index ==
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no good reason to keep around this PLL index == PLL ID
footgun. Get rid of it.

Both i915->shared_dplls[] and state->shared_dpll[] are indexed
by the same thing now, which is just the index we get at
initialization from dpll_mgr->dpll_info[]. The rest is all about
PLL IDs now.

v2: Add pll->index to mimic drm_crtc & co.
    Remove the comment saying ID should match the index
v3: s/i/pll->index/ in debugfs loop (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v2
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 63 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  8 ++-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  5 +-
 4 files changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f05b52381a83..670a38aebd0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -656,8 +656,8 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
 		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
 
-		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
-			   pll->info->id);
+		seq_printf(m, "DPLL%i: %s, id: %i\n", pll->index,
+			   pll->info->name, pll->info->id);
 		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
 			   pll->state.pipe_mask, pll->active_mask,
 			   str_yes_no(pll->on));
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6d68b36292d3..614fdc21bde0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -115,13 +115,13 @@ static void
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
 
@@ -154,7 +154,17 @@ struct intel_shared_dpll *
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
@@ -311,32 +321,36 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
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
@@ -383,14 +397,13 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_dpll_hw_state *pll_state)
 {
 	struct intel_shared_dpll_state *shared_dpll;
-	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	if (shared_dpll[id].pipe_mask == 0)
-		shared_dpll[id].hw_state = *pll_state;
+	if (shared_dpll[pll->index].pipe_mask == 0)
+		shared_dpll[pll->index].hw_state = *pll_state;
 
-	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[id]);
+	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
 }
 
 /**
@@ -421,11 +434,10 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_shared_dpll *pll)
 {
 	struct intel_shared_dpll_state *shared_dpll;
-	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[id]);
+	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -459,16 +471,15 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
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
 
@@ -559,12 +570,12 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
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
@@ -4168,10 +4179,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
 		dpll_mgr = &pch_pll_mgr;
 
-	if (!dpll_mgr) {
-		dev_priv->display.dpll.num_shared_dpll = 0;
+	if (!dpll_mgr)
 		return;
-	}
 
 	dpll_info = dpll_mgr->dpll_info;
 
@@ -4180,8 +4189,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
 			break;
 
-		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
+		dev_priv->display.dpll.shared_dplls[i].index = i;
 	}
 
 	dev_priv->display.dpll.mgr = dpll_mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 04e6810954b2..53d5dfede5ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -262,8 +262,7 @@ struct dpll_info {
 	const struct intel_shared_dpll_funcs *funcs;
 
 	/**
-	 * @id: unique indentifier for this DPLL; should match the index in the
-	 * dev_priv->shared_dplls array
+	 * @id: unique indentifier for this DPLL
 	 */
 	enum intel_dpll_id id;
 
@@ -290,6 +289,11 @@ struct intel_shared_dpll {
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
index 9583e86b602a..c6a03abf44ca 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -528,7 +528,10 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 
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
2.41.0

