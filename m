Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F3233102A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE9B89F6D;
	Mon,  8 Mar 2021 13:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C95489F6D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:26 +0000 (UTC)
IronPort-SDR: +pbwotvXWsolPAx10B4WnzsUfL+Pv+GjrRC3OuDFIH0wmV7vcdGKeLoldGzCfanLvNhlIsx6o7
 9euDPJpSHRaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="188081465"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="188081465"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:25 -0800
IronPort-SDR: eAYLsInnbIcq4ozBQKek6SNGb/h7Fx1XTJtdAU0t/s6Y2jbKUbFRTn524slflXTFozJ/RzkgwR
 Qjbsh1mE3ePw==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="385856284"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:43 +0200
Message-Id: <9f7f46adec11dda8a3855f6dde7e2357b8641664.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/8] drm/i915: rename
 DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matter of taste. STEP matches the enums.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |  4 ++--
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c        | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                    | 10 +++++-----
 drivers/gpu/drm/i915/intel_device_info.c           |  2 +-
 drivers/gpu/drm/i915/intel_pm.c                    |  2 +-
 7 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7e0eaa872350..b1feec8e7081 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5333,7 +5333,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
 	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
-	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
+	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		/* Wa_1409767108:tgl,dg1,adl-s */
 		table = wa_1409767108_buddy_page_masks;
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd434285e3b7..71d084fdf26c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -548,7 +548,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		/* WA 1408330847 */
-		if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
+		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
 		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
@@ -1110,7 +1110,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/* WA 1408330847 */
 	if (intel_dp->psr.psr2_sel_fetch_enabled &&
-	    (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
+	    (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
 	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1f335cb09149..c4edfc673d47 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1858,7 +1858,7 @@ static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_priv,
 {
 	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
 	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
-	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
+	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
 		return false;
 
 	return plane_id < PLANE_SPRITE4;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 0c502a733779..4f8f9fbf6619 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1091,19 +1091,19 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	gen12_gt_workarounds_init(i915, wal);
 
 	/* Wa_1409420604:tgl */
-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
 			    CPSSUNIT_CLKGATE_DIS);
 
 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
 
 	/* Wa_1408615072:tgl[a0] */
-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			    VSUNIT_CLKGATE_DIS_TGL);
 }
@@ -1581,7 +1581,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
-	    IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
+	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
 		/*
 		 * Wa_1607138336:tgl[a0],dg1[a0]
 		 * Wa_1607063988:tgl[a0],dg1[a0]
@@ -1591,7 +1591,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
 	}
 
-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
 		/*
 		 * Wa_1606679103:tgl
 		 * (see also Wa_1606682166:icl)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 991318e90b5a..50f6f957c5db 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1510,15 +1510,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_JSL_EHL_REVID(p, since, until) \
 	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
 
-#define IS_TGL_DISP_STEPPING(__i915, since, until) \
+#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
+#define IS_TGL_UY_GT_STEP(__i915, since, until) \
 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))
 
-#define IS_TGL_GT_STEPPING(__i915, since, until) \
+#define IS_TGL_GT_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))
 
@@ -1535,11 +1535,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG1_REVID(p, since, until) \
 	(IS_DG1(p) && IS_REVID(p, since, until))
 
-#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
+#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLS_GT_STEPPING(__i915, since, until) \
+#define IS_ADLS_GT_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GT_STEP(__i915, since, until))
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index aeb28d589b2b..de02207f6ec6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -251,7 +251,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	/* Wa_14011765242: adl-s A0 */
-	if (IS_ADLS_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0))
+	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
 	else if (INTEL_GEN(dev_priv) >= 10) {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index fd8d2732f68b..d888f9f74a28 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7114,7 +7114,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_1409825376:tgl (pre-prod)*/
-	if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
+	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1))
 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
 			   TGL_VRH_GATING_DIS);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
