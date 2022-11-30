Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A66F63E53C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 00:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063E710E134;
	Wed, 30 Nov 2022 23:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD8810E134
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 23:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669850233; x=1701386233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pEPuRDT/h/WTvBYGLyDhCTCyrc51Kqhoxvoe8hb75Fo=;
 b=PhHWxXJ/nnNhvhOjwtSxfmS/Q6LcW9nhtiPiqkgEfEHURVcnqAX0fatw
 f1kuHU5ZwUQcpGGOFHaCjz/mOgzrRCb/P9DGEBlgxtNk8uLJDHejedzyi
 x2i6d6/7bZM/d9QZep+TpjhD/eELhHFExKAQF2gV+5rJ1HFb8QQ8aT8dX
 HNtJIijh196LaWG7A0z3CeQqhNKrzKcS1hCKauNgs3Iwei3xR6lH1L8Zr
 eHSzPjN7+VWeNJtOuH8lh+caNuApdW8doOCI6mr7mP+R8FbKyQDLgRnOs
 xl615q04jXliNgsyEN2OET9suQ0TB6vcTlaVTQ40o40GTTdfZ0w3S/mlV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="298905676"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="298905676"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 15:17:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="644405533"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="644405533"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 15:17:12 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 15:17:09 -0800
Message-Id: <20221130231709.4870-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221130231709.4870-1-matthew.s.atwood@intel.com>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add initial gt workarounds
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

This patch introduces initial workarounds for mtl platform

Bspec:66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 105 +++++++++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/intel_device_info.c      |   6 +
 9 files changed, 121 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c33e0d72d670..af88d8ab61c1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1479,7 +1479,9 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
 	 * stopped, set ring stop bit and prefetch disable bit to halt CS
 	 */
-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
 				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 49a8f10d76c7..a91c912e35d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2992,7 +2992,9 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_engine_wait_for_pending_mi_fw(engine);
 
 	engine->execlists.reset_ccid = active_ccid(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index aa070ae57f11..0e90a8f86b27 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
 		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
-		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
-				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
+		/* Wa_14016747170:mtl-m[a0], mtl-p[a0] */
+		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
+					     intel_uncore_read(gt->uncore,
+							       MTL_GT_ACTIVITY_FACTOR));
+		else
+			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
+					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
 
 		/*
 		 * Despite the register field being named "exclude mask" the
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 784152548472..c2c03b02f200 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -413,6 +413,7 @@
 #define   TBIMR_FAST_CLIP			REG_BIT(5)
 
 #define VFLSKPD					MCR_REG(0x62a8)
+#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
 
@@ -1532,6 +1533,10 @@
 
 #define MTL_MEDIA_MC6				_MMIO(0x138048)
 
+/* Wa_14016747170:mtl-p[a0], mtl-m[a0] */
+#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
+#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
+
 #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
 #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3e35facac2b4..2e3d5de0c522 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
+static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
+				     struct i915_wa_list *wal)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+		/* Wa_14014947963:mtl */
+		wa_masked_field_set(wal, VF_PREEMPTION,
+				    PREEMPTION_VERTEX_COUNT, 0x4000);
+
+		/* Wa_16013271637:mtl */
+		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
+				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
+
+		/* Wa_18019627453:mtl */
+		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
+
+		/* Wa_18018764978:mtl */
+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+	}
+
+	/* Wa_18019271663:mtl */
+	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
+}
+
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
 					 struct i915_wa_list *wal)
 {
@@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	if (engine->class != RENDER_CLASS)
 		goto done;
 
-	if (IS_PONTEVECCHIO(i915))
+	if (IS_METEORLAKE(i915))
+		mtl_ctx_workarounds_init(engine, wal);
+	else if (IS_PONTEVECCHIO(i915))
 		; /* noop; none at this time */
 	else if (IS_DG2(i915))
 		dg2_ctx_workarounds_init(engine, wal);
@@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	/* FIXME: Actual workarounds will be added in future patch(es) */
+	/* Wa_14014830051:mtl */
+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
+		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
@@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 
 	wa_init_start(w, engine->gt, "whitelist", engine->name);
 
-	if (IS_PONTEVECCHIO(i915))
+	if (IS_METEORLAKE(i915))
+		; /* noop; none at this time */
+	else if (IS_PONTEVECCHIO(i915))
 		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
 		dg2_whitelist_build(engine);
@@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+		/* Wa_22014600077:mtl */
+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
+				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
+	}
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
+		/* Wa_1509727124:dg2,mtl */
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
+
+		/* Wa_22013037850:dg2,mtl */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
+				DISABLE_128B_EVICTION_COMMAND_UDW);
+	}
+
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
+	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
+		/* Wa_22012856258:dg2,mtl */
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
+				 GEN12_DISABLE_READ_SUPPRESSION);
+	}
+
 	if (IS_DG2(i915)) {
 		/* Wa_1509235366:dg2 */
 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
@@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
 	}
 
-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
-	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
-		/* Wa_1509727124:dg2 */
-		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
-				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
-	}
-
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14012419201:dg2 */
@@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
-		/* Wa_22013037850:dg2 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
-				DISABLE_128B_EVICTION_COMMAND_UDW);
-
-		/* Wa_22012856258:dg2 */
-		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
-				 GEN12_DISABLE_READ_SUPPRESSION);
-
 		/*
 		 * Wa_22010960976:dg2
 		 * Wa_14013347512:dg2
@@ -2954,6 +3000,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_PONTEVECCHIO(i915) ||
+	    IS_DG2(i915)) {
+		/* Wa_18018781329:dg2,pvc,mtl */
+		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
+
+		/* Wa_22014226127:dg2,pvc,mtl */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
+	}
+
 	if (IS_PONTEVECCHIO(i915)) {
 		/* Wa_16016694945 */
 		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
@@ -2995,17 +3055,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		/* Wa_14015227452:dg2,pvc */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
 
-		/* Wa_22014226127:dg2,pvc */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
-
 		/* Wa_16015675438:dg2,pvc */
 		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
-
-		/* Wa_18018781329:dg2,pvc */
-		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 	}
 
 	if (IS_DG2(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 52aede324788..5ec74a167df9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
 		flags |= GUC_WA_GAM_CREDITS;
 
-	/* Wa_14014475959:dg2 */
-	if (IS_DG2(gt->i915))
+	/* Wa_14014475959:dg2,mtl */
+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	    IS_DG2(gt->i915))
 		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
 
 	/*
@@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
-	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(gt->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
 		flags |= GUC_WA_PRE_PARSER;
 
 	/* Wa_16011777198:dg2 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0a42f1807f52..f148d2f88d40 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1615,7 +1615,9 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 
 static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 {
-	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (!(IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	      (GRAPHICS_VER(engine->i915) >= 11 &&
+	      GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))))
 		return;
 
 	intel_engine_stop_cs(engine);
@@ -4202,8 +4204,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 
 	/* Wa_14014475959:dg2 */
-	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
-		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
+	if (engine->class == COMPUTE_CLASS)
+		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		    IS_DG2(engine->i915))
+			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
 
 	/*
 	 * TODO: GuC supports timeslicing and semaphores as well, but they're
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ecb027626a21..2f18bc123438 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -731,6 +731,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(DISPLAY_VER(__i915) == 14 && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
+#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
+	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))
+
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..7add88dde79e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
 
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
 		    &runtime->graphics.ip);
+	/* Wa_22012778468:mtl */
+	if (runtime->graphics.ip.ver == 0x0 &&
+	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
+		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
+		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
+	}
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
 		    &runtime->display.ip);
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
-- 
2.38.1

