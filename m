Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A841E208
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 21:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766066EC4A;
	Thu, 30 Sep 2021 19:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D94B96EC4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 19:09:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247815130"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="247815130"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 12:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="564394760"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 30 Sep 2021 12:09:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 22:09:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Karthik B S <karthik.b.s@intel.com>
Date: Thu, 30 Sep 2021 22:09:43 +0300
Message-Id: <20210930190943.17547-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210930190943.17547-1-ville.syrjala@linux.intel.com>
References: <20210930190943.17547-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i195: Make the async flip VT-d
 workaround dynamic
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

Since the VT-d vs. async flip issues are plaguing a wider range
of supported hw let's try to minimize the impact on normal
operation by flipping the relevant chicken bits on and off
as needed. I presume there is some power/perf impact on since
this is reducing some prefetching I think.

Cc: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.c              | 26 ---------------
 2 files changed, 35 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a4453dd1bb51..5407f53e770b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2473,6 +2473,33 @@ static bool needs_cursorclk_wa(const struct intel_crtc_state *crtc_state)
 	return false;
 }
 
+static void intel_async_flip_vtd_wa(struct drm_i915_private *i915,
+				    enum pipe pipe, bool enable)
+{
+	if (DISPLAY_VER(i915) == 9) {
+		/*
+		 * "Plane N strech max must be programmed to 11b (x1)
+		 *  when Async flips are enabled on that plane."
+		 */
+		intel_de_rmw(i915, CHICKEN_PIPESL_1(pipe),
+			     SKL_PLANE1_STRETCH_MAX_MASK,
+			     enable ? SKL_PLANE1_STRETCH_MAX_X1 : SKL_PLANE1_STRETCH_MAX_X8);
+	} else {
+		/* Also needed on HSW/BDW albeit undocumented */
+		intel_de_rmw(i915, CHICKEN_PIPESL_1(pipe),
+			     HSW_PRI_STRETCH_MAX_MASK,
+			     enable ? HSW_PRI_STRETCH_MAX_X1 : HSW_PRI_STRETCH_MAX_X8);
+	}
+}
+
+static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return crtc_state->uapi.async_flip && intel_vtd_active() &&
+		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
+}
+
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
@@ -2508,6 +2535,10 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	intel_fbc_post_update(state, crtc);
 	intel_drrs_page_flip(state, crtc);
 
+	if (needs_async_flip_vtd_wa(old_crtc_state) &&
+	    !needs_async_flip_vtd_wa(new_crtc_state))
+		intel_async_flip_vtd_wa(dev_priv, pipe, false);
+
 	if (needs_nv12_wa(old_crtc_state) &&
 	    !needs_nv12_wa(new_crtc_state))
 		skl_wa_827(dev_priv, pipe, false);
@@ -2606,6 +2637,10 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	if (intel_fbc_pre_update(state, crtc))
 		intel_wait_for_vblank(dev_priv, pipe);
 
+	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
+	    needs_async_flip_vtd_wa(new_crtc_state))
+		intel_async_flip_vtd_wa(dev_priv, pipe, true);
+
 	/* Display WA 827 */
 	if (!needs_nv12_wa(old_crtc_state) &&
 	    needs_nv12_wa(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 74d4620a4999..73178d0cf0c9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -76,8 +76,6 @@ struct intel_wm_config {
 
 static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	enum pipe pipe;
-
 	if (HAS_LLC(dev_priv)) {
 		/*
 		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
@@ -91,16 +89,6 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 			   SKL_DE_COMPRESSED_HASH_MODE);
 	}
 
-	for_each_pipe(dev_priv, pipe) {
-		/*
-		 * "Plane N strech max must be programmed to 11b (x1)
-		 *  when Async flips are enabled on that plane."
-		 */
-		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active())
-			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
-					 SKL_PLANE1_STRETCH_MAX_MASK, SKL_PLANE1_STRETCH_MAX_X1);
-	}
-
 	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
 	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
 		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
@@ -7599,11 +7587,6 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
 			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |
 			   BDW_DPRS_MASK_VBLANK_SRD);
-
-		/* Undocumented but fixes async flip + VT-d corruption */
-		if (intel_vtd_active())
-			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
-					 HSW_PRI_STRETCH_MAX_MASK, HSW_PRI_STRETCH_MAX_X1);
 	}
 
 	/* WaVSRefCountFullforceMissDisable:bdw */
@@ -7639,20 +7622,11 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	enum pipe pipe;
-
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
 	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
 		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
 		   HSW_FBCQ_DIS);
 
-	for_each_pipe(dev_priv, pipe) {
-		/* Undocumented but fixes async flip + VT-d corruption */
-		if (intel_vtd_active())
-			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
-					 HSW_PRI_STRETCH_MAX_MASK, HSW_PRI_STRETCH_MAX_X1);
-	}
-
 	/* This is required by WaCatErrorRejectionIssue:hsw */
 	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
-- 
2.32.0

