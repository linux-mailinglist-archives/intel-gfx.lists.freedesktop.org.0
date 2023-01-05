Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9661065F7D1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 00:44:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B9F10E144;
	Thu,  5 Jan 2023 23:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB1410E144
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 23:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672962254; x=1704498254;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gbdf1Pec/DdzkjFKw79XYBW/X5G+RSl03rSCKEEx5AI=;
 b=Mi7lsbHU2pNH7ydNNAo/YsHCWFUKvfUnOb7dzOEtIZm67LNafwjo87lu
 cc3HUSbSY/6haqx86hjNd2zdswZeDZdZ/qOl+PMCLGVwxd3poTOdGSozv
 OQwibuClWDfkUxe5AhUiIvCnI7RYNEq7MIljRU2SOTtHOxx7k+r2o1fmx
 3v7ikdNicBzf5rvgM5B8hWH48z04jctq6/jkQ6K2W8lINdyunD5i4esoR
 V9APWIa785NPeSTNyqxdCkpxFTW3m7NptMUXGXyzBdzVSE9trcnuMlRzK
 G6q98uHO6OSMsKPBt3fFEcpMOPZBzLApb2lym2LK14v7blW4QDinUquB5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="310145156"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="310145156"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 15:44:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="763322396"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="763322396"
Received: from srrajwad-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.212.11.97])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 15:44:13 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 15:44:08 -0800
Message-Id: <20230105234408.277750-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add initial gt workarounds
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

This patch introduces initial gt workarounds for the MTL platform.

v2: drop redundant/stale comments specifying wa platforms affected
(Lucas).
v3: drop additional redundant stale comments (MattR)

Bspec: 66622

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 115 +++++++++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/intel_device_info.c      |   6 +
 9 files changed, 128 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 99c4b866addd..e3f30bdf7e61 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1494,10 +1494,12 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
 
 	/*
-	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
+	 * Wa_22011802037 : Prior to doing a reset, ensure CS is
 	 * stopped, set ring stop bit and prefetch disable bit to halt CS
 	 */
-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
 				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 2daffa7c7dfd..18ffe55282e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2989,10 +2989,12 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	intel_engine_stop_cs(engine);
 
 	/*
-	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
+	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_engine_wait_for_pending_mi_fw(engine);
 
 	engine->execlists.reset_ccid = active_ccid(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 41a237509dcf..4127830c33ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
 		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
-		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
-				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
+		/* Wa_14016747170 */
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
index f8eb807b56f9..8ad084bd35d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -414,6 +414,7 @@
 #define   TBIMR_FAST_CLIP			REG_BIT(5)
 
 #define VFLSKPD					MCR_REG(0x62a8)
+#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
 
@@ -1535,6 +1536,10 @@
 
 #define MTL_MEDIA_MC6				_MMIO(0x138048)
 
+/* Wa_14016747170 */
+#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
+#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
+
 #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
 #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bf84efb3f15f..002ba7c2b1ed 100644
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
+		/* Wa_14014947963 */
+		wa_masked_field_set(wal, VF_PREEMPTION,
+				    PREEMPTION_VERTEX_COUNT, 0x4000);
+
+		/* Wa_16013271637 */
+		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
+				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
+
+		/* Wa_18019627453 */
+		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
+
+		/* Wa_18018764978 */
+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+	}
+
+	/* Wa_18019271663 */
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
+	/* Wa_14014830051 */
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
+		/* Wa_22014600077 */
+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
+				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
+	}
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
+		/* Wa_1509727124 */
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
+
+		/* Wa_22013037850 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
+				DISABLE_128B_EVICTION_COMMAND_UDW);
+	}
+
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
+	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
+		/* Wa_22012856258 */
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
@@ -2944,6 +2990,27 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_PONTEVECCHIO(i915) ||
+	    IS_DG2(i915)) {
+		/* Wa_18018781329 */
+		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
+
+		/* Wa_22014226127 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
+	}
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_DG2(i915)) {
+		/* Wa_18017747507 */
+		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
+	}
+
 	if (IS_PONTEVECCHIO(i915)) {
 		/* Wa_16016694945 */
 		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
@@ -2985,17 +3052,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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
@@ -3004,9 +3062,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * Wa_22015475538:dg2
 		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
-
-		/* Wa_18017747507:dg2 */
-		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) || IS_DG2_G11(i915))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c0b5aa6fde26..1bccc175f9e6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
 		flags |= GUC_WA_GAM_CREDITS;
 
-	/* Wa_14014475959:dg2 */
-	if (IS_DG2(gt->i915))
+	/* Wa_14014475959 */
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
index fe06c93cf6e3..b436dd7f12e4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1621,7 +1621,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 	intel_engine_stop_cs(engine);
 
 	/*
-	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
+	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
 	intel_engine_wait_for_pending_mi_fw(engine);
@@ -4203,8 +4203,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
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
index 48fd82722f12..f742328c4d95 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -735,6 +735,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
+#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
+	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))
+
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..05e90d09b208 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
 
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
 		    &runtime->graphics.ip);
+	/* Wa_22012778468 */
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

