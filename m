Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C4D77D135
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B586D10E268;
	Tue, 15 Aug 2023 17:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4ACB10E264
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692121024; x=1723657024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ejChIKhANeLmob0ZwpHREtL9WPguU3nKS/se9L4NSAA=;
 b=CuwCvVpNCmIgQJeE1OXQygsZ2ue9XWczyTKPBkhYFpJJnmEdRoyVqrQH
 JIFZS+gza9XQSkDOu6TVOxVZNLsiMdJJ1RC3ohQknTQz4YvG6uj+0UOJM
 aazeaIL2tE89yvnnFLnw/7N+nQWr+RJVBx8i16jL7gIa1DrmTIweiB9/G
 q6Q/ANq8B/rDA8+IgtETrN5ackSYo7jjz04QxzUaYSIzlpCxgKlY/7WkU
 j17DcEImxMGXgJSn2bkBUOOy64G7jHWITxqs4UXi5TJLhYqIIJ55oCnNe
 phdx1mdHJJKxDw+CMKYsUTKwqS1wNj3nH0FTsabjbn9Z7g1R9o6fHj/N9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371252392"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371252392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710808259"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710808259"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 10:36:16 -0700
Message-ID: <20230815173611.142687-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230815173611.142687-6-matthew.d.roper@intel.com>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Tidy workaround definitions
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removal of the DG2 pre-production workarounds has left duplicate
condition blocks in a couple places, as well as some inconsistent
platform ordering.  Reshuffle and consolidate some of the workarounds to
reduce the number of condition blocks and to more consistently follow
the "newest platform first" convention.  Code movement only; no
functional change.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 100 +++++++++-----------
 1 file changed, 46 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 7b426f3015b3..69973dc51828 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2337,6 +2337,19 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -2350,19 +2363,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -2389,14 +2394,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -2877,6 +2874,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		/* Wa_22013037850 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
 				DISABLE_128B_EVICTION_COMMAND_UDW);
+
+		/* Wa_18017747507 */
+		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
 	}
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
@@ -2887,11 +2887,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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
@@ -2906,6 +2915,18 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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
@@ -2923,35 +2944,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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

