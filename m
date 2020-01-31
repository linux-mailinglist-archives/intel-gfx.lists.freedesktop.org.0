Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA99E14E945
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 08:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413866FA88;
	Fri, 31 Jan 2020 07:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741336FA88
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 07:57:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20068050-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 07:57:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 07:57:16 +0000
Message-Id: <20200131075716.2212299-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Move ringbuffer WAs to engine
 workaround list
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Now that intel_engine_apply_workarounds is called on all gens, we can
use the engine workaround lists for pre-gen8 workarounds as well to be
consistent in the way we handle and dump the WAs.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 37 --------------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 49 ++++++++++++++++++-
 2 files changed, 47 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 9aa86ba15ce7..9537d4912225 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -858,43 +858,6 @@ static int rcs_resume(struct intel_engine_cs *engine)
 		intel_uncore_write(uncore, ECOSKPD,
 			   _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE));
 
-	/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
-	if (IS_GEN_RANGE(i915, 4, 6))
-		intel_uncore_write(uncore, MI_MODE,
-				   _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH));
-
-	/* We need to disable the AsyncFlip performance optimisations in order
-	 * to use MI_WAIT_FOR_EVENT within the CS. It should already be
-	 * programmed to '1' on all products.
-	 *
-	 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
-	 */
-	if (IS_GEN_RANGE(i915, 6, 7))
-		intel_uncore_write(uncore, MI_MODE,
-				   _MASKED_BIT_ENABLE(ASYNC_FLIP_PERF_DISABLE));
-
-	/* Required for the hardware to program scanline values for waiting */
-	/* WaEnableFlushTlbInvalidationMode:snb */
-	if (IS_GEN(i915, 6))
-		intel_uncore_write(uncore, GFX_MODE,
-			   _MASKED_BIT_ENABLE(GFX_TLB_INVALIDATE_EXPLICIT));
-
-	/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
-	if (IS_GEN(i915, 7))
-		intel_uncore_write(uncore, GFX_MODE_GEN7,
-			   _MASKED_BIT_ENABLE(GFX_TLB_INVALIDATE_EXPLICIT) |
-			   _MASKED_BIT_ENABLE(GFX_REPLAY_MODE));
-
-	if (IS_GEN(i915, 6)) {
-		/* From the Sandybridge PRM, volume 1 part 3, page 24:
-		 * "If this bit is set, STCunit will have LRA as replacement
-		 *  policy. [...] This bit must be reset.  LRA replacement
-		 *  policy is not supported."
-		 */
-		intel_uncore_write(uncore, CACHE_MODE_0,
-			   _MASKED_BIT_DISABLE(CM0_STC_EVICT_DISABLE_LRA_SNB));
-	}
-
 	if (IS_GEN_RANGE(i915, 6, 7))
 		intel_uncore_write(uncore, INSTPM,
 				   _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e4c2b6d42f46..0520ec93564f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1467,6 +1467,51 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN8_L3SQCREG4,
 			    GEN8_LQSC_FLUSH_COHERENT_LINES);
 	}
+
+	if (IS_GEN(i915, 7))
+		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
+		wa_masked_en(wal,
+			     GFX_MODE_GEN7,
+			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
+
+	if (IS_GEN_RANGE(i915, 6, 7))
+		/*
+		 * We need to disable the AsyncFlip performance optimisations in
+		 * order to use MI_WAIT_FOR_EVENT within the CS. It should
+		 * already be programmed to '1' on all products.
+		 *
+		 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
+		 */
+		wa_masked_en(wal,
+			     MI_MODE,
+			     ASYNC_FLIP_PERF_DISABLE);
+
+	if (IS_GEN(i915, 6)) {
+		/*
+		 * Required for the hardware to program scanline values for
+		 * waiting
+		 * WaEnableFlushTlbInvalidationMode:snb
+		 */
+		wa_masked_en(wal,
+			     GFX_MODE,
+			     GFX_TLB_INVALIDATE_EXPLICIT);
+
+		/*
+		 * From the Sandybridge PRM, volume 1 part 3, page 24:
+		 * "If this bit is set, STCunit will have LRA as replacement
+		 *  policy. [...] This bit must be reset. LRA replacement
+		 *  policy is not supported."
+		 */
+		wa_masked_dis(wal,
+			      CACHE_MODE_0,
+			      CM0_STC_EVICT_DISABLE_LRA_SNB);
+	}
+
+	if (IS_GEN_RANGE(i915, 4, 6))
+		/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
+		wa_masked_en(wal,
+			     MI_MODE,
+			     VS_TIMER_DISPATCH);
 }
 
 static void
@@ -1485,7 +1530,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 static void
 engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
-	if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 8))
+	if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 4))
 		return;
 
 	if (engine->class == RENDER_CLASS)
@@ -1498,7 +1543,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *wal = &engine->wa_list;
 
-	if (INTEL_GEN(engine->i915) < 8)
+	if (INTEL_GEN(engine->i915) < 4)
 		return;
 
 	wa_init_start(wal, "engine", engine->name);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
