Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B912EBED5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 14:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26C16E1EC;
	Wed,  6 Jan 2021 13:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C92089C2C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 13:40:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23518188-1500050 
 for multiple; Wed, 06 Jan 2021 13:40:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 13:39:59 +0000
Message-Id: <20210106134005.10279-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210106134005.10279-1-chris@chris-wilson.co.uk>
References: <20210106134005.10279-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/gt: Rearrange ivb workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some rcs0 workarounds were being incorrectly applied to the GT, and so
we failed to restore the expected register settings after a reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 122 ++++++++------------
 1 file changed, 49 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3d5122301f64..7c18893f5164 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -829,18 +829,6 @@ snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	/* WaDisableEarlyCull:ivb */
-	wa_masked_en(wal, _3D_CHICKEN3, _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
-
-	/* WaDisablePSDDualDispatchEnable:ivb */
-	if (IS_IVB_GT1(i915))
-		wa_masked_en(wal,
-			     GEN7_HALF_SLICE_CHICKEN1,
-			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
-
-	/* WaDisable_RenderCache_OperationalFlush:ivb */
-	wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
-
 	/* Apply the WaDisableRHWOOptimizationForRenderHang:ivb workaround. */
 	wa_masked_dis(wal,
 		      GEN7_COMMON_SLICE_CHICKEN1,
@@ -852,38 +840,6 @@ ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 
 	/* WaForceL3Serialization:ivb */
 	wa_write_clr(wal, GEN7_L3SQCREG4, L3SQ_URB_READ_CAM_MATCH_DISABLE);
-
-	/*
-	 * WaVSThreadDispatchOverride:ivb,vlv
-	 *
-	 * This actually overrides the dispatch
-	 * mode for all thread types.
-	 */
-	wa_write_clr_set(wal, GEN7_FF_THREAD_MODE,
-			 GEN7_FF_SCHED_MASK,
-			 GEN7_FF_TS_SCHED_HW |
-			 GEN7_FF_VS_SCHED_HW |
-			 GEN7_FF_DS_SCHED_HW);
-
-	if (0) { /* causes HiZ corruption on ivb:gt1 */
-		/* enable HiZ Raw Stall Optimization */
-		wa_masked_dis(wal, CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
-	}
-
-	/* WaDisable4x2SubspanOptimization:ivb */
-	wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
-
-	/*
-	 * BSpec recommends 8x4 when MSAA is used,
-	 * however in practice 16x4 seems fastest.
-	 *
-	 * Note that PS/WM thread counts depend on the WIZ hashing
-	 * disable bit, which we don't touch here, but it's good
-	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-	 */
-	wa_add(wal, GEN7_GT_MODE, 0,
-	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
-	       GEN6_WIZ_HASHING_16x4);
 }
 
 static void
@@ -1886,26 +1842,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 		wa_masked_dis(wal,
 			      CACHE_MODE_0_GEN7,
-			      /* WaDisable_RenderCache_OperationalFlush:hsw */
-			      RC_OP_FLUSH_ENABLE |
 			      /* enable HiZ Raw Stall Optimization */
 			      HIZ_RAW_STALL_OPT_DISABLE);
 
 		/* WaDisable4x2SubspanOptimization:hsw */
 		wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
-
-		/*
-		 * BSpec recommends 8x4 when MSAA is used,
-		 * however in practice 16x4 seems fastest.
-		 *
-		 * Note that PS/WM thread counts depend on the WIZ hashing
-		 * disable bit, which we don't touch here, but it's good
-		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-		 */
-		wa_add(wal, GEN7_GT_MODE, 0,
-		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK,
-				     GEN6_WIZ_HASHING_16x4),
-		       GEN6_WIZ_HASHING_16x4);
 	}
 
 	if (IS_VALLEYVIEW(i915)) {
@@ -1927,11 +1868,59 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				 GEN7_FF_VS_SCHED_HW |
 				 GEN7_FF_DS_SCHED_HW);
 
-		/* WaDisable_RenderCache_OperationalFlush:vlv */
+		/* WaPsdDispatchEnable:vlv */
+		/* WaDisablePSDDualDispatchEnable:vlv */
+		wa_masked_en(wal,
+			     GEN7_HALF_SLICE_CHICKEN1,
+			     GEN7_MAX_PS_THREAD_DEP |
+			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
+	}
+
+	if (IS_IVYBRIDGE(i915)) {
+		/* WaDisableEarlyCull:ivb */
+		wa_masked_en(wal,
+			     _3D_CHICKEN3,
+			     _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
+
+		if (0) { /* causes HiZ corruption on ivb:gt1 */
+			/* enable HiZ Raw Stall Optimization */
+			wa_masked_dis(wal,
+				      CACHE_MODE_0_GEN7,
+				      HIZ_RAW_STALL_OPT_DISABLE);
+		}
+
+		/*
+		 * WaVSThreadDispatchOverride:ivb,vlv
+		 *
+		 * This actually overrides the dispatch
+		 * mode for all thread types.
+		 */
+		wa_write_clr_set(wal,
+				 GEN7_FF_THREAD_MODE,
+				 GEN7_FF_SCHED_MASK,
+				 GEN7_FF_TS_SCHED_HW |
+				 GEN7_FF_VS_SCHED_HW |
+				 GEN7_FF_DS_SCHED_HW);
+
+		/* WaDisablePSDDualDispatchEnable:ivb */
+		if (IS_IVB_GT1(i915))
+			wa_masked_en(wal,
+				     GEN7_HALF_SLICE_CHICKEN1,
+				     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
+	}
+
+	if (IS_GEN(i915, 7)) {
+		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
+		wa_masked_en(wal,
+			     GFX_MODE_GEN7,
+			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
+
+		/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
 		wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
 
 		/*
 		 * BSpec says this must be set, even though
+		 * WaDisable4x2SubspanOptimization:ivb,hsw
 		 * WaDisable4x2SubspanOptimization isn't listed for VLV.
 		 */
 		wa_masked_en(wal,
@@ -1950,21 +1939,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK,
 				     GEN6_WIZ_HASHING_16x4),
 		       GEN6_WIZ_HASHING_16x4);
-
-		/* WaPsdDispatchEnable:vlv */
-		/* WaDisablePSDDualDispatchEnable:vlv */
-		wa_masked_en(wal,
-			     GEN7_HALF_SLICE_CHICKEN1,
-			     GEN7_MAX_PS_THREAD_DEP |
-			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
 	}
 
-	if (IS_GEN(i915, 7))
-		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
-		wa_masked_en(wal,
-			     GFX_MODE_GEN7,
-			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
-
 	if (IS_GEN_RANGE(i915, 6, 7))
 		/*
 		 * We need to disable the AsyncFlip performance optimisations in
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
