Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BF767F14D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 23:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A566F10E2D4;
	Fri, 27 Jan 2023 22:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A6210E2E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 22:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674859407; x=1706395407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Fz40n6bFpfMcMNjyY30HyTGpp49eGZBYVlBmKan78I=;
 b=CymUOpPAUt9Dibb81e9tw/0lEtuZ5+wMIPk6Mv+jkWYXOJM7/UKb4LCY
 drWWKQfN5A/aHw5ULk3B0Q7lS6ft8UAEe94YwukIYZRy4EZoJcCgQur6i
 LuRMx/qKdH71eA8FDe588WEaewlQx7ZY9PD3MSk1KSmiC9PNZ7oQ4Y2+K
 mfm2zx7MYXL5Rnq0PadnjM0wXvk8MF4tA5nWLfjaoyY45vCpzs7nOKL9C
 l0Lq12gPCZzwV2vrta/xnqGR5ibQ0bYP5NgqhvesUcee50HqNY60LhQvq
 ixF5EmuFmjP+XLHYsCnkMpM7CgflV6o9TefmEjQxf3CDdgzY6VA8+VhjM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="328501627"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="328501627"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="771727411"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="771727411"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 14:43:12 -0800
Message-Id: <20230127224313.4042331-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127224313.4042331-1-matthew.d.roper@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dg1: Drop support for
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

Several post-DG1 platforms have been brought up now, so we're well past
the point where we usually drop the workarounds that are only applicable
to internal/pre-production hardware.

Production DG1 hardware always has a B0 stepping for both display and
GT.

Bspec: 44463
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  1 -
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 48 ++-----------------
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  2 -
 drivers/gpu/drm/i915/intel_pm.c               | 12 -----
 5 files changed, 5 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1dc31f0f5e0a..7222502a760c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1580,7 +1580,6 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 82a8f372bde6..648fceba5bb6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1463,12 +1463,6 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	gen12_gt_workarounds_init(gt, wal);
 
-	/* Wa_1607087056:dg1 */
-	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal,
-			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
-			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
-
 	/* Wa_1409420604:dg1 */
 	if (IS_DG1(i915))
 		wa_mcr_write_or(wal,
@@ -2103,20 +2097,6 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 	}
 }
 
-static void dg1_whitelist_build(struct intel_engine_cs *engine)
-{
-	struct i915_wa_list *w = &engine->whitelist;
-
-	tgl_whitelist_build(engine);
-
-	/* GEN:BUG:1409280441:dg1 */
-	if (IS_DG1_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) &&
-	    (engine->class == RENDER_CLASS ||
-	     engine->class == COPY_ENGINE_CLASS))
-		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
-				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
-}
-
 static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
 {
 	allow_read_ctx_timestamp(engine);
@@ -2196,8 +2176,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		dg2_whitelist_build(engine);
 	else if (IS_XEHPSDV(i915))
 		xehpsdv_whitelist_build(engine);
-	else if (IS_DG1(i915))
-		dg1_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 12)
 		tgl_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 11)
@@ -2410,16 +2388,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			   true);
 	}
 
-	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
-		/*
-		 * Wa_1607138336
-		 * Wa_1607063988
-		 */
-		wa_write_or(wal,
-			    GEN9_CTX_PREEMPT_REG,
-			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
-	}
-
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
@@ -2449,30 +2417,22 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
-	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
-		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
+		/* Wa_1409804808 */
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 				 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
 
-		/*
-		 * Wa_1409085225:tgl
-		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
-		 */
+		/* Wa_14010229206 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
-	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
-	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
+	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
 		/*
-		 * Wa_1607030317:tgl
-		 * Wa_1607186500:tgl
-		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
+		 * Wa_1607297627
 		 *
 		 * On TGL and RKL there are multiple entries for this WA in the
 		 * BSpec; some indicate this is an A0-only WA, others indicate
 		 * it applies to all steppings so we trust the "all steppings."
-		 * For DG1 this only applies to A0.
 		 */
 		wa_masked_en(wal,
 			     RING_PSMI_CTL(RENDER_RING_BASE),
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 879ab4ed42af..397a2159fe12 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -168,6 +168,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
 	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
 	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
+	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 62cc0f76c583..57b84dbca084 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -658,8 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define IS_DG1_GRAPHICS_STEP(p, since, until) \
 	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
-#define IS_DG1_DISPLAY_STEP(p, since, until) \
-	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index c6676f1a9c6f..e0364c4141b8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4353,15 +4353,6 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
 }
 
-static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
-{
-	gen12lp_init_clock_gating(dev_priv);
-
-	/* Wa_1409836686:dg1[a0] */
-	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
-}
-
 static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/* Wa_22010146351:xehpsdv */
@@ -4781,7 +4772,6 @@ CG_FUNCS(pvc);
 CG_FUNCS(dg2);
 CG_FUNCS(xehpsdv);
 CG_FUNCS(adlp);
-CG_FUNCS(dg1);
 CG_FUNCS(gen12lp);
 CG_FUNCS(icl);
 CG_FUNCS(cfl);
@@ -4824,8 +4814,6 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
 	else if (IS_ALDERLAKE_P(dev_priv))
 		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
-	else if (IS_DG1(dev_priv))
-		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 12)
 		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 11)
-- 
2.39.1

