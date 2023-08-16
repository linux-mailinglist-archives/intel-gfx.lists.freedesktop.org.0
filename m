Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9C777EC0D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BFC10E3D5;
	Wed, 16 Aug 2023 21:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA33E10E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222127; x=1723758127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sb04ProJUzxjdPhK/pQThfwQVILMiNrrB0/qj+7rU4U=;
 b=dwzodSzjWkye9Tc6AgwkC3laWADg4tZpc+Jg/WSCMlnxgUfXR6UQbgSR
 bjM0j0kUNpFknoKIKFD8FYErc1KHqm3/zgg90JkK++7/UqouHWcu7HGg6
 QrLLYbHcFN63qYKn2AlpcXERqlLKANPQ4wY41yG8zLPfVhIV3KWV3BdKx
 dRyx+OJ5balltvgre58jYBFG03hpx9n7skrB5vC5nBNpmK90jT3/jZ8ox
 STh87j6xbQwQsDbVqeyXSSz00cwWmOb3BwBSs/LKLpS6PE784fYAKZeBt
 rXmmbknfch5id9F3ECcHzJGKbGVp7pMnsoy4RIipPJwdg7nwSlPr/3SC7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436546491"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="436546491"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824378809"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824378809"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 14:42:06 -0700
Message-ID: <20230816214201.534095-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816214201.534095-7-matthew.d.roper@intel.com>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: Tidy workaround definitions
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
Cc: Jani Nikula <jani.nikula@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removal of the DG2 pre-production workarounds has left duplicate
condition blocks in a couple places, as well as some inconsistent
platform ordering.  Reshuffle and consolidate some of the workarounds to
reduce the number of condition blocks and to more consistently follow
the "newest platform first" convention.  Code movement only; no
functional change.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 100 +++++++++-----------
 1 file changed, 46 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 76e55738332f..f7f3376eccd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2334,6 +2334,19 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			   true);
 	}
 
+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
+	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
+		/*
+		 * Wa_1606700617:tgl,dg1,adl-p
+		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
+		 * Wa_14010826681:tgl,dg1,rkl,adl-p
+		 * Wa_18019627453:dg2
+		 */
+		wa_masked_en(wal,
+			     GEN9_CS_DEBUG_MODE1,
+			     FF_DOP_CLOCK_GATE_DISABLE);
+	}
+
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
@@ -2347,19 +2360,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_write_or(wal, GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
-	}
 
-	if (IS_ALDERLAKE_P(i915) || IS_DG2(i915) || IS_ALDERLAKE_S(i915) ||
-	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
-		/*
-		 * Wa_1606700617:tgl,dg1,adl-p
-		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
-		 * Wa_14010826681:tgl,dg1,rkl,adl-p
-		 * Wa_18019627453:dg2
-		 */
-		wa_masked_en(wal,
-			     GEN9_CS_DEBUG_MODE1,
-			     FF_DOP_CLOCK_GATE_DISABLE);
+		/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
+		wa_mcr_masked_en(wal,
+				 GEN10_SAMPLER_MODE,
+				 ENABLE_SMALLPL);
 	}
 
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
@@ -2386,14 +2391,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
-	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
-	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
-		/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
-		wa_mcr_masked_en(wal,
-				 GEN10_SAMPLER_MODE,
-				 ENABLE_SMALLPL);
-	}
-
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
@@ -2874,6 +2871,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		/* Wa_22013037850 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
 				DISABLE_128B_EVICTION_COMMAND_UDW);
+
+		/* Wa_18017747507 */
+		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
 	}
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
@@ -2884,11 +2884,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
-	    IS_DG2(i915)) {
-		/* Wa_18017747507 */
-		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
+	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915)) {
+		/* Wa_14015227452:dg2,pvc */
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+
+		/* Wa_16015675438:dg2,pvc */
+		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
+	}
+
+	if (IS_DG2(i915)) {
+		/*
+		 * Wa_16011620976:dg2_g11
+		 * Wa_22015475538:dg2
+		 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
 	}
 
 	if (IS_DG2_G11(i915)) {
@@ -2903,6 +2912,18 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		/* Wa_22013059131:dg2 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
 				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
+
+		/*
+		 * Wa_22012654132
+		 *
+		 * Note that register 0xE420 is write-only and cannot be read
+		 * back for verification on DG2 (due to Wa_14012342262), so
+		 * we need to explicitly skip the readback.
+		 */
+		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
+			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
+			   0 /* write-only, so skip validation */,
+			   true);
 	}
 
 	if (IS_XEHPSDV(i915)) {
@@ -2920,35 +2941,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
 	}
-
-	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
-		/* Wa_14015227452:dg2,pvc */
-		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
-
-		/* Wa_16015675438:dg2,pvc */
-		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
-	}
-
-	if (IS_DG2(i915)) {
-		/*
-		 * Wa_16011620976:dg2_g11
-		 * Wa_22015475538:dg2
-		 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
-	}
-
-	if (IS_DG2_G11(i915))
-		/*
-		 * Wa_22012654132
-		 *
-		 * Note that register 0xE420 is write-only and cannot be read
-		 * back for verification on DG2 (due to Wa_14012342262), so
-		 * we need to explicitly skip the readback.
-		 */
-		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
-			   0 /* write-only, so skip validation */,
-			   true);
 }
 
 static void
-- 
2.41.0

