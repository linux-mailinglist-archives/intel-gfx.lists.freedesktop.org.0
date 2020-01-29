Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B0A14D439
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631476F8B8;
	Wed, 29 Jan 2020 23:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71C66F8B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:59:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 15:59:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="261987373"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 15:59:35 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 15:59:00 -0800
Message-Id: <20200129235900.7670-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Move ringbuffer WAs to engine
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

Now that intel_engine_apply_workarounds is called on all gens, we can
use the engine workaround lists for pre-gen8 workarounds as well to be
consistent in the way we handle and dump the WAs.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 37 -------------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 55 ++++++++++++++++++-
 2 files changed, 53 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 7e2c6ac7d6b0..6639032dab68 100644
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
index 5a7db279f702..07764bd1d9c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -173,6 +173,12 @@ wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 	wa_write_masked_or(wal, reg, val, _MASKED_BIT_ENABLE(val));
 }
 
+static void
+wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
+{
+	wa_write_masked_or(wal, reg, val, _MASKED_BIT_DISABLE(val));
+}
+
 static void
 wa_write(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 {
@@ -1457,6 +1463,51 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -1475,7 +1526,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 static void
 engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
-	if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 8))
+	if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 4))
 		return;
 
 	if (engine->class == RENDER_CLASS)
@@ -1488,7 +1539,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *wal = &engine->wa_list;
 
-	if (INTEL_GEN(engine->i915) < 8)
+	if (INTEL_GEN(engine->i915) < 4)
 		return;
 
 	wa_init_start(wal, "engine", engine->name);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
