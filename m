Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC944A789EF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7321B10E6EC;
	Wed,  2 Apr 2025 08:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MXTC1ihj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5515F10E6EB;
 Wed,  2 Apr 2025 08:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582722; x=1775118722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I2LeGh5U+qwOwmqqifV0117BsN2SWDGAAH8Nn3DxVnk=;
 b=MXTC1ihjI5Ot9euJoAClSTvCZEODT/Oo8q4C5zw71D8mBRcAqVByfOPl
 B8G/rkxjhhya4PX/ZCuDDMP3H0vImj3XHuBefECMUOIkQ2HlGNj80BTx5
 MzI6buX0YMgZRtDJ5Mavh5HSjKseCredxoWBahOsqTA9jAtlDAB81gLaw
 T7W6wPPriRRTcDtmuCxcAQ/8gQ7wmfL49KDBz9SONQto9pBkhEhrQh2oC
 95iu0yNA8ycITmmLPL1LmQOveGWvkKweC4rqKBC2aFtywG0SW3ImbqMBJ
 OIyXeHu9RFyQbtzLn3Oy4Ux31rj2EO6kpvyHUVDn5cnYBNLSNIOxAozW8 g==;
X-CSE-ConnectionGUID: vEjFKBrNSvqEdl1VFCtOVw==
X-CSE-MsgGUID: kQpVL1gUQ7yewffUs8mj7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828652"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828652"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:02 -0700
X-CSE-ConnectionGUID: eWVhUIisRdWWSjpaKkZ8AQ==
X-CSE-MsgGUID: oX3BFckrSJmqWR3ChfDVjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612282"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:31:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/16] drm/i915/dpll: Rename intel_shared_dpll_state
Date: Wed,  2 Apr 2025 14:01:49 +0530
Message-Id: <20250402083204.1523470-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Rename intel_shared_dpll_state to just intel_dpll_state since it may
not necessarily store share dpll state info specially since
DISPLAY_VER >= 14 PLL's are not shared.
Also change the name of variables which may have been assoiciated as
a shared_dpll.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  8 +--
 3 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 367b53a9eae2..7d1c64f7b405 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -591,7 +591,7 @@ struct intel_atomic_state {
 
 	bool dpll_set, modeset;
 
-	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
+	struct intel_dpll_state dpll_state[I915_NUM_PLLS];
 
 	struct intel_dp_tunnel_inherited_state *inherited_dp_tunnels;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ec7feef1ef59..6edb4570d764 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -119,17 +119,17 @@ struct intel_dpll_mgr {
 
 static void
 intel_atomic_duplicate_dpll_state(struct intel_display *display,
-				  struct intel_shared_dpll_state *shared_dpll)
+				  struct intel_dpll_state *dpll_state)
 {
 	struct intel_shared_dpll *pll;
 	int i;
 
 	/* Copy shared dpll state */
 	for_each_shared_dpll(display, pll, i)
-		shared_dpll[pll->index] = pll->state;
+		dpll_state[pll->index] = pll->state;
 }
 
-static struct intel_shared_dpll_state *
+static struct intel_dpll_state *
 intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(s);
@@ -141,10 +141,10 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 		state->dpll_set = true;
 
 		intel_atomic_duplicate_dpll_state(display,
-						  state->shared_dpll);
+						  state->dpll_state);
 	}
 
-	return state->shared_dpll;
+	return state->dpll_state;
 }
 
 /**
@@ -362,11 +362,11 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
-	struct intel_shared_dpll_state *shared_dpll;
+	struct intel_dpll_state *dpll_state;
 	struct intel_shared_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
-	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
 
 	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
 
@@ -378,20 +378,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 			continue;
 
 		/* Only want to check enabled timings first */
-		if (shared_dpll[pll->index].pipe_mask == 0) {
+		if (dpll_state[pll->index].pipe_mask == 0) {
 			if (!unused_pll)
 				unused_pll = pll;
 			continue;
 		}
 
 		if (memcmp(dpll_hw_state,
-			   &shared_dpll[pll->index].hw_state,
+			   &dpll_state[pll->index].hw_state,
 			   sizeof(*dpll_hw_state)) == 0) {
 			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
 				    crtc->base.base.id, crtc->base.name,
 				    pll->info->name,
-				    shared_dpll[pll->index].pipe_mask,
+				    dpll_state[pll->index].pipe_mask,
 				    pll->active_mask);
 			return pll;
 		}
@@ -412,20 +412,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
  * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is taken
  * @pll: DPLL for which the reference is taken
- * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
+ * @dpll_state: the DPLL atomic state in which the reference is tracked
  *
  * Take a reference for @pll tracking the use of it by @crtc.
  */
 static void
 intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
 				 const struct intel_shared_dpll *pll,
-				 struct intel_shared_dpll_state *shared_dpll_state)
+				 struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
+	drm_WARN_ON(display->drm, (dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
 
-	shared_dpll_state->pipe_mask |= BIT(crtc->pipe);
+	dpll_state->pipe_mask |= BIT(crtc->pipe);
 
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] reserving %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
@@ -437,34 +437,34 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_shared_dpll *pll,
 			    const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct intel_shared_dpll_state *shared_dpll;
+	struct intel_dpll_state *dpll_state;
 
-	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
 
-	if (shared_dpll[pll->index].pipe_mask == 0)
-		shared_dpll[pll->index].hw_state = *dpll_hw_state;
+	if (dpll_state[pll->index].pipe_mask == 0)
+		dpll_state[pll->index].hw_state = *dpll_hw_state;
 
-	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
+	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 /**
  * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
- * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
+ * @dpll_state: the DPLL atomic state in which the reference is tracked
  *
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
 intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 				   const struct intel_shared_dpll *pll,
-				   struct intel_shared_dpll_state *shared_dpll_state)
+				   struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
+	drm_WARN_ON(display->drm, (dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
 
-	shared_dpll_state->pipe_mask &= ~BIT(crtc->pipe);
+	dpll_state->pipe_mask &= ~BIT(crtc->pipe);
 
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] releasing %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
@@ -474,11 +474,11 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_shared_dpll *pll)
 {
-	struct intel_shared_dpll_state *shared_dpll;
+	struct intel_dpll_state *dpll_state;
 
-	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
 
-	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
+	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -511,7 +511,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
+	struct intel_dpll_state *dpll_state = state->dpll_state;
 	struct intel_shared_dpll *pll;
 	int i;
 
@@ -519,7 +519,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 		return;
 
 	for_each_shared_dpll(display, pll, i)
-		swap(pll->state, shared_dpll[pll->index]);
+		swap(pll->state, dpll_state[pll->index]);
 }
 
 static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index caffb084830c..fe6c676737bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -280,7 +280,7 @@ struct intel_dpll_hw_state {
 };
 
 /**
- * struct intel_shared_dpll_state - hold the DPLL atomic state
+ * struct intel_dpll_state - hold the DPLL atomic state
  *
  * This structure holds an atomic state for the DPLL, that can represent
  * either its current state (in struct &intel_shared_dpll) or a desired
@@ -289,7 +289,7 @@ struct intel_dpll_hw_state {
  *
  * See also intel_reserve_shared_dplls() and intel_release_shared_dplls().
  */
-struct intel_shared_dpll_state {
+struct intel_dpll_state {
 	/**
 	 * @pipe_mask: mask of pipes using this DPLL, active or not
 	 */
@@ -353,7 +353,7 @@ struct intel_shared_dpll {
 	 * Store the state for the pll, including its hw state
 	 * and CRTCs using it.
 	 */
-	struct intel_shared_dpll_state state;
+	struct intel_dpll_state state;
 
 	/**
 	 * @index: index for atomic state
@@ -406,7 +406,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 					const struct intel_shared_dpll *pll,
-					struct intel_shared_dpll_state *shared_dpll_state);
+					struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
 void intel_update_active_dpll(struct intel_atomic_state *state,
-- 
2.34.1

