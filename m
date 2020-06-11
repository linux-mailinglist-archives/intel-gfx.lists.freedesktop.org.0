Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317D1F6333
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 10:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEC96E8B0;
	Thu, 11 Jun 2020 08:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C08D6E8AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 08:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21460982-1500050 
 for multiple; Thu, 11 Jun 2020 09:01:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 09:01:36 +0100
Message-Id: <20200611080140.30228-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Move ivb GT workarounds from
 init_clock_gating to workarounds
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

Rescue the GT workarounds from being buried inside init_clock_gating so
that we remember to apply them after a GT reset, and that they are
included in our verification that the workarounds are applied.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 62 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  2 +-
 drivers/gpu/drm/i915/intel_pm.c             | 48 ----------------
 3 files changed, 63 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 39f070bff09d..a5ba3ea8d45a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -714,6 +714,66 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	return 0;
 }
 
+static void
+ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	/* WaDisableEarlyCull:ivb */
+	wa_masked_en(wal,_3D_CHICKEN3, _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
+
+	/* WaDisablePSDDualDispatchEnable:ivb */
+	if (IS_IVB_GT1(i915))
+		wa_masked_en(wal,
+			     GEN7_HALF_SLICE_CHICKEN1,
+			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
+
+	/* WaDisable_RenderCache_OperationalFlush:ivb */
+	wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
+
+	/* Apply the WaDisableRHWOOptimizationForRenderHang:ivb workaround. */
+	wa_masked_dis(wal,
+		      GEN7_COMMON_SLICE_CHICKEN1,
+		      GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC);
+
+	/* WaApplyL3ControlAndL3ChickenMode:ivb */
+	wa_write(wal, GEN7_L3CNTLREG1, GEN7_WA_FOR_GEN7_L3_CONTROL);
+	wa_write(wal, GEN7_L3_CHICKEN_MODE_REGISTER, GEN7_WA_L3_CHICKEN_MODE);
+
+	/* WaForceL3Serialization:ivb */
+	wa_write_clr(wal, GEN7_L3SQCREG4, L3SQ_URB_READ_CAM_MATCH_DISABLE);
+
+	/*
+	 * WaVSThreadDispatchOverride:ivb,vlv
+	 *
+	 * This actually overrides the dispatch
+	 * mode for all thread types.
+	 */
+	wa_write_masked_or(wal, GEN7_FF_THREAD_MODE,
+			   GEN7_FF_SCHED_MASK,
+			   GEN7_FF_TS_SCHED_HW |
+			   GEN7_FF_VS_SCHED_HW |
+			   GEN7_FF_DS_SCHED_HW);
+
+	if (0) { /* causes HiZ corruption on ivb:gt1 */
+		/* enable HiZ Raw Stall Optimization */
+		wa_masked_dis(wal, CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
+	}
+
+	/* WaDisable4x2SubspanOptimization:ivb */
+	wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
+
+	/*
+	 * BSpec recommends 8x4 when MSAA is used,
+	 * however in practice 16x4 seems fastest.
+	 *
+	 * Note that PS/WM thread counts depend on the WIZ hashing
+	 * disable bit, which we don't touch here, but it's good
+	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
+	 */
+	wa_add(wal, GEN7_GT_MODE, 0,
+	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
+	       GEN6_WIZ_HASHING_16x4);
+}
+
 static void
 hsw_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
@@ -1033,6 +1093,8 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		skl_gt_workarounds_init(i915, wal);
 	else if (IS_HASWELL(i915))
 		hsw_gt_workarounds_init(i915, wal);
+	else if (IS_IVYBRIDGE(i915))
+		ivb_gt_workarounds_init(i915, wal);
 	else if (INTEL_GEN(i915) <= 8)
 		return;
 	else
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9aca6d778220..19e1fed198c3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7924,7 +7924,7 @@ enum {
 
 /* GEN7 chicken */
 #define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
-  #define GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	((1 << 10) | (1 << 26))
+  #define GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
   #define GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
 
 #define COMMON_SLICE_CHICKEN2					_MMIO(0x7014)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 249ee720874c..b835e5e97515 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7338,32 +7338,11 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	I915_WRITE(ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
 
-	/* WaDisableEarlyCull:ivb */
-	I915_WRITE(_3D_CHICKEN3,
-		   _MASKED_BIT_ENABLE(_3D_CHICKEN_SF_DISABLE_OBJEND_CULL));
-
 	/* WaDisableBackToBackFlipFix:ivb */
 	I915_WRITE(IVB_CHICKEN3,
 		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
 		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
 
-	/* WaDisablePSDDualDispatchEnable:ivb */
-	if (IS_IVB_GT1(dev_priv))
-		I915_WRITE(GEN7_HALF_SLICE_CHICKEN1,
-			   _MASKED_BIT_ENABLE(GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE));
-
-	/* WaDisable_RenderCache_OperationalFlush:ivb */
-	I915_WRITE(CACHE_MODE_0_GEN7, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
-
-	/* Apply the WaDisableRHWOOptimizationForRenderHang:ivb workaround. */
-	I915_WRITE(GEN7_COMMON_SLICE_CHICKEN1,
-		   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC);
-
-	/* WaApplyL3ControlAndL3ChickenMode:ivb */
-	I915_WRITE(GEN7_L3CNTLREG1,
-			GEN7_WA_FOR_GEN7_L3_CONTROL);
-	I915_WRITE(GEN7_L3_CHICKEN_MODE_REGISTER,
-		   GEN7_WA_L3_CHICKEN_MODE);
 	if (IS_IVB_GT1(dev_priv))
 		I915_WRITE(GEN7_ROW_CHICKEN2,
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
@@ -7375,10 +7354,6 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	}
 
-	/* WaForceL3Serialization:ivb */
-	I915_WRITE(GEN7_L3SQCREG4, I915_READ(GEN7_L3SQCREG4) &
-		   ~L3SQ_URB_READ_CAM_MATCH_DISABLE);
-
 	/*
 	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
 	 * This implements the WaDisableRCZUnitClockGating:ivb workaround.
@@ -7393,29 +7368,6 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	g4x_disable_trickle_feed(dev_priv);
 
-	gen7_setup_fixed_func_scheduler(dev_priv);
-
-	if (0) { /* causes HiZ corruption on ivb:gt1 */
-		/* enable HiZ Raw Stall Optimization */
-		I915_WRITE(CACHE_MODE_0_GEN7,
-			   _MASKED_BIT_DISABLE(HIZ_RAW_STALL_OPT_DISABLE));
-	}
-
-	/* WaDisable4x2SubspanOptimization:ivb */
-	I915_WRITE(CACHE_MODE_1,
-		   _MASKED_BIT_ENABLE(PIXEL_SUBSPAN_COLLECT_OPT_DISABLE));
-
-	/*
-	 * BSpec recommends 8x4 when MSAA is used,
-	 * however in practice 16x4 seems fastest.
-	 *
-	 * Note that PS/WM thread counts depend on the WIZ hashing
-	 * disable bit, which we don't touch here, but it's good
-	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-	 */
-	I915_WRITE(GEN7_GT_MODE,
-		   _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));
-
 	snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
 	snpcr &= ~GEN6_MBC_SNPCR_MASK;
 	snpcr |= GEN6_MBC_SNPCR_MED;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
