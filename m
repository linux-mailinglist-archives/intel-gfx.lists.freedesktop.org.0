Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E84E67F150
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 23:43:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9B810E1D9;
	Fri, 27 Jan 2023 22:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA20B10E2ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 22:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674859407; x=1706395407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wrAY4IBO3+At1MMMmYrypna1KaBxtyFeeVScCVmu2m0=;
 b=ksmytKQhesjARP3TaMSlPLeXMQOAvhcMtBRcQKhqrKRsh55AwV50Caho
 /nA2IsdqYiqjhk6pFZGm2YXUbxuJjrrf7bbvAUEDsXcXcupqxG3o3p8cG
 zkMY+cpFRgAM4KJj9II69N/k5qwkLkY/tVpL7D4H4NKew/AKfaGM2fDNB
 Rf4tWSb0giqEQxBW2K+GpU9i8z20YYki0/hpZ2D3vlS2xBePunTg9zy6O
 eNF9sfB1tbzK+5/DhAEg6jilL/kJRkdEUag3x7DsyKDvz598XOHbsD4xG
 uojf+X99Vefq6t4/8MZEqInl3WExcmluBoTDP0XqEKCWMFmeya0wGFzk5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="328501625"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="328501625"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="771727409"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="771727409"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 14:43:11 -0800
Message-Id: <20230127224313.4042331-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127224313.4042331-1-matthew.d.roper@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Drop support for
 pre-production steppings
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

Several post-TGL platforms have been brought up now, so we're well past
the point where we usually drop the workarounds that are only applicable
to internal/pre-production hardware.

Production TGL hardware always has display stepping C0 or later and GT
stepping B0 or later (this is true for both the original TGL and the U/Y
subplatform).

Bspec 44455
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  5 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  8 ----
 drivers/gpu/drm/i915/intel_pm.c               |  4 --
 7 files changed, 7 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1a23ecd4623a..1dc31f0f5e0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
 	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
-		/* Wa_1409767108:tgl,dg1,adl-s */
+	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
 		table = tgl_buddy_page_masks;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7d4a15a283a0..5dca58dd97a9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
-		/* Wa_1408330847 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
-				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
-				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
-
 		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
 		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
 	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
@@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	/* Wa_14010254185 Wa_14010103792 */
-	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
-		return false;
-	}
-
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
@@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* Wa_2209313811 */
-	if (!crtc_state->enable_psr2_sel_fetch &&
-	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
-		goto unsupported;
-	}
-
 	if (!psr2_granularity_check(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
 		goto unsupported;
@@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
 
-	/* Wa_1408330847 */
-	if (intel_dp->psr.psr2_sel_fetch_enabled &&
-	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
-			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
-
 	/*
 	 * Wa_16013835468
 	 * Wa_14015648006
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9b172a1e90de..e956edb87398 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	if (DISPLAY_VER(i915) < 12)
 		return false;
 
-	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
+	/* Wa_14010477008 */
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
 	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
 		return false;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4efc1a532982..82a8f372bde6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
 }
 
-static void
-tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
-{
-	struct drm_i915_private *i915 = gt->i915;
-
-	gen12_gt_workarounds_init(gt, wal);
-
-	/* Wa_1409420604:tgl */
-	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_mcr_write_or(wal,
-				SUBSLICE_UNIT_LEVEL_CLKGATE2,
-				CPSSUNIT_CLKGATE_DIS);
-
-	/* Wa_1607087056:tgl also know as BUG:1409180338 */
-	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal,
-			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
-			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
-
-	/* Wa_1408615072:tgl[a0] */
-	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
-			    VSUNIT_CLKGATE_DIS_TGL);
-}
-
 static void
 dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 		xehpsdv_gt_workarounds_init(gt, wal);
 	else if (IS_DG1(i915))
 		dg1_gt_workarounds_init(gt, wal);
-	else if (IS_TIGERLAKE(i915))
-		tgl_gt_workarounds_init(gt, wal);
 	else if (GRAPHICS_VER(i915) == 12)
 		gen12_gt_workarounds_init(gt, wal);
 	else if (GRAPHICS_VER(i915) == 11)
@@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			   true);
 	}
 
-	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
-	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
+	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/*
-		 * Wa_1607138336:tgl[a0],dg1[a0]
-		 * Wa_1607063988:tgl[a0],dg1[a0]
+		 * Wa_1607138336
+		 * Wa_1607063988
 		 */
 		wa_write_or(wal,
 			    GEN9_CTX_PREEMPT_REG,
 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
 	}
 
-	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
-		/*
-		 * Wa_1606679103:tgl
-		 * (see also Wa_1606682166:icl)
-		 */
-		wa_write_or(wal,
-			    GEN7_SARCHKMD,
-			    GEN7_DISABLE_SAMPLER_PREFETCH);
-	}
-
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index cf1c0970ecb4..879ab4ed42af 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
 	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
+	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48c838b4ea62..62cc0f76c583 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
-	(IS_TGL_UY(__i915) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
-
-#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
-	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
-
 #define IS_RKL_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 3fc65bd12cc1..c6676f1a9c6f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
-	/* Wa_1409825376:tgl (pre-prod)*/
-	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
-		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
-
 	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
 	if (DISPLAY_VER(dev_priv) == 12)
 		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
-- 
2.39.1

