Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AFA686C1C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 17:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65C110E18D;
	Wed,  1 Feb 2023 16:52:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A27510E03E;
 Wed,  1 Feb 2023 16:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675270318; x=1706806318;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DarmaSLTccTusubDDxTCl0/QEHeICVLjY3/tIGkihHg=;
 b=WwdKdYfGenjUv4ouu6E5eVvLdM3vh7DmEmBaTiGPfuJoufJU8Pl2O68h
 lbxwk07zP2hy9HmcuI+GUjrVwff35fAZiJj4m7LJwqjcsCW8uBAs+XXYR
 Hd4MF+RvZKt/N04nugANTbmTS4PUGDMQW3o1Wg2tjO8nHJQPSYyhondh4
 Jc/NVIvChVUYe/N0tzuLd7z5Gb6rvF2PwxjRimurgPP71/hAJ8pO7mv2M
 ktLKsMS+CZMap6ZAkx9dmVWoRQtOTcZAW2NAHo9tyfl6yL2FrDeVucCaR
 fwDgHsXj29T7Fi3zA70guqVExNtHEWAxDAo+UBMyoa7KtBrT5dcrQvY6t Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308541147"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="308541147"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 08:51:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="788958136"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="788958136"
Received: from jazminsx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.124])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 08:51:54 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  1 Feb 2023 16:51:46 +0000
Message-Id: <20230201165146.4056691-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Consolidate TLB invalidation flow
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As the logic for selecting the register and corresponsing values grew, the
code become a bit unsightly. Consolidate by storing the required values at
engine init time in the engine itself, and by doing so minimise the amount
of invariant platform and engine checks during each and every TLB
invalidation.

v2:
 * Fail engine probe if TLB invlidations registers are unknown.

v3:
 * Rebase.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com> # v1
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  96 +++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  15 ++
 drivers/gpu/drm/i915/gt/intel_gt.c           | 138 +++----------------
 3 files changed, 133 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index d4e29da74612..e430945743ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -9,6 +9,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_internal.h"
+#include "gt/intel_gt_print.h"
 #include "gt/intel_gt_regs.h"
 
 #include "i915_cmd_parser.h"
@@ -1143,12 +1144,107 @@ static int init_status_page(struct intel_engine_cs *engine)
 	return ret;
 }
 
+static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
+{
+	static const union intel_engine_tlb_inv_reg gen8_regs[] = {
+		[RENDER_CLASS].reg		= GEN8_RTCR,
+		[VIDEO_DECODE_CLASS].reg	= GEN8_M1TCR, /* , GEN8_M2TCR */
+		[VIDEO_ENHANCEMENT_CLASS].reg	= GEN8_VTCR,
+		[COPY_ENGINE_CLASS].reg		= GEN8_BTCR,
+	};
+	static const union intel_engine_tlb_inv_reg gen12_regs[] = {
+		[RENDER_CLASS].reg		= GEN12_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS].reg	= GEN12_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS].reg	= GEN12_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS].reg		= GEN12_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS].reg		= GEN12_COMPCTX_TLB_INV_CR,
+	};
+	static const union intel_engine_tlb_inv_reg xehp_regs[] = {
+		[RENDER_CLASS].mcr_reg		  = XEHP_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS].mcr_reg	  = XEHP_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS].mcr_reg = XEHP_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS].mcr_reg	  = XEHP_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS].mcr_reg		  = XEHP_COMPCTX_TLB_INV_CR,
+	};
+	struct drm_i915_private *i915 = engine->i915;
+	const union intel_engine_tlb_inv_reg *regs;
+	union intel_engine_tlb_inv_reg reg;
+	unsigned int class = engine->class;
+	unsigned int num = 0;
+	u32 val;
+
+	/*
+	 * New platforms should not be added with catch-all-newer (>=)
+	 * condition so that any later platform added triggers the below warning
+	 * and in turn mandates a human cross-check of whether the invalidation
+	 * flows have compatible semantics.
+	 *
+	 * For instance with the 11.00 -> 12.00 transition three out of five
+	 * respective engine registers were moved to masked type. Then after the
+	 * 12.00 -> 12.50 transition multi cast handling is required too.
+	 */
+
+	if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
+	    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
+		regs = xehp_regs;
+		num = ARRAY_SIZE(xehp_regs);
+	} else if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 0) ||
+		   GRAPHICS_VER_FULL(i915) == IP_VER(12, 10)) {
+		regs = gen12_regs;
+		num = ARRAY_SIZE(gen12_regs);
+	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
+		regs = gen8_regs;
+		num = ARRAY_SIZE(gen8_regs);
+	} else if (GRAPHICS_VER(i915) < 8) {
+		return 0;
+	}
+
+	if (gt_WARN_ONCE(engine->gt, !num,
+			 "Platform does not implement TLB invalidation!"))
+		return -ENODEV;
+
+	if (gt_WARN_ON_ONCE(engine->gt,
+			     class >= num ||
+			     (!regs[class].reg.reg &&
+			      !regs[class].mcr_reg.reg)))
+		return -ERANGE;
+
+	reg = regs[class];
+
+	if (GRAPHICS_VER(i915) == 8 && class == VIDEO_DECODE_CLASS) {
+		reg.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
+		val = 0;
+	} else {
+		val = engine->instance;
+	}
+
+	val = BIT(val);
+
+	engine->tlb_inv.mcr = regs == xehp_regs;
+	engine->tlb_inv.reg = reg;
+	engine->tlb_inv.done = val;
+
+	if (GRAPHICS_VER(i915) >= 12 &&
+	    (engine->class == VIDEO_DECODE_CLASS ||
+	     engine->class == VIDEO_ENHANCEMENT_CLASS ||
+	     engine->class == COMPUTE_CLASS))
+		engine->tlb_inv.request = _MASKED_BIT_ENABLE(val);
+	else
+		engine->tlb_inv.request = val;
+
+	return 0;
+}
+
 static int engine_setup_common(struct intel_engine_cs *engine)
 {
 	int err;
 
 	init_llist_head(&engine->barrier_tasks);
 
+	err = intel_engine_init_tlb_invalidation(engine);
+	if (err)
+		return err;
+
 	err = init_status_page(engine);
 	if (err)
 		return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 4fd54fb8810f..8c661fe89314 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -341,6 +341,19 @@ struct intel_engine_guc_stats {
 	u64 start_gt_clk;
 };
 
+union intel_engine_tlb_inv_reg {
+	i915_reg_t	reg;
+	i915_mcr_reg_t	mcr_reg;
+};
+
+struct intel_engine_tlb_inv
+{
+	bool mcr;
+	union intel_engine_tlb_inv_reg reg;
+	u32 request;
+	u32 done;
+};
+
 struct intel_engine_cs {
 	struct drm_i915_private *i915;
 	struct intel_gt *gt;
@@ -372,6 +385,8 @@ struct intel_engine_cs {
 	u32 context_size;
 	u32 mmio_base;
 
+	struct intel_engine_tlb_inv tlb_inv;
+
 	/*
 	 * Some w/a require forcewake to be held (which prevents RC6) while
 	 * a particular engine is active. If so, we set fw_domain to which
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 001a7ec5b861..f7f271708fc7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -982,35 +982,6 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 	intel_sseu_dump(&info->sseu, p);
 }
 
-struct reg_and_bit {
-	union {
-		i915_reg_t reg;
-		i915_mcr_reg_t mcr_reg;
-	};
-	u32 bit;
-};
-
-static struct reg_and_bit
-get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
-		const i915_reg_t *regs, const unsigned int num)
-{
-	const unsigned int class = engine->class;
-	struct reg_and_bit rb = { };
-
-	if (gt_WARN_ON_ONCE(engine->gt, class >= num || !regs[class].reg))
-		return rb;
-
-	rb.reg = regs[class];
-	if (gen8 && class == VIDEO_DECODE_CLASS)
-		rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
-	else
-		rb.bit = engine->instance;
-
-	rb.bit = BIT(rb.bit);
-
-	return rb;
-}
-
 /*
  * HW architecture suggest typical invalidation time at 40us,
  * with pessimistic cases up to 100us and a recommendation to
@@ -1024,14 +995,20 @@ get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
  * but are now considered MCR registers.  Since they exist within a GAM range,
  * the primary instance of the register rolls up the status from each unit.
  */
-static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
+static int wait_for_invalidate(struct intel_engine_cs *engine)
 {
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
-		return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
+	if (engine->tlb_inv.mcr)
+		return intel_gt_mcr_wait_for_reg(engine->gt,
+						 engine->tlb_inv.reg.mcr_reg,
+						 engine->tlb_inv.done,
+						 0,
 						 TLB_INVAL_TIMEOUT_US,
 						 TLB_INVAL_TIMEOUT_MS);
 	else
-		return __intel_wait_for_register_fw(gt->uncore, rb.reg, rb.bit, 0,
+		return __intel_wait_for_register_fw(engine->gt->uncore,
+						    engine->tlb_inv.reg.reg,
+						    engine->tlb_inv.done,
+						    0,
 						    TLB_INVAL_TIMEOUT_US,
 						    TLB_INVAL_TIMEOUT_MS,
 						    NULL);
@@ -1039,62 +1016,14 @@ static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
 
 static void mmio_invalidate_full(struct intel_gt *gt)
 {
-	static const i915_reg_t gen8_regs[] = {
-		[RENDER_CLASS]			= GEN8_RTCR,
-		[VIDEO_DECODE_CLASS]		= GEN8_M1TCR, /* , GEN8_M2TCR */
-		[VIDEO_ENHANCEMENT_CLASS]	= GEN8_VTCR,
-		[COPY_ENGINE_CLASS]		= GEN8_BTCR,
-	};
-	static const i915_reg_t gen12_regs[] = {
-		[RENDER_CLASS]			= GEN12_GFX_TLB_INV_CR,
-		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
-		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
-		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
-		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
-	};
-	static const i915_mcr_reg_t xehp_regs[] = {
-		[RENDER_CLASS]			= XEHP_GFX_TLB_INV_CR,
-		[VIDEO_DECODE_CLASS]		= XEHP_VD_TLB_INV_CR,
-		[VIDEO_ENHANCEMENT_CLASS]	= XEHP_VE_TLB_INV_CR,
-		[COPY_ENGINE_CLASS]		= XEHP_BLT_TLB_INV_CR,
-		[COMPUTE_CLASS]			= XEHP_COMPCTX_TLB_INV_CR,
-	};
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t awake, tmp;
 	enum intel_engine_id id;
-	const i915_reg_t *regs;
-	unsigned int num = 0;
 	unsigned long flags;
 
-	/*
-	 * New platforms should not be added with catch-all-newer (>=)
-	 * condition so that any later platform added triggers the below warning
-	 * and in turn mandates a human cross-check of whether the invalidation
-	 * flows have compatible semantics.
-	 *
-	 * For instance with the 11.00 -> 12.00 transition three out of five
-	 * respective engine registers were moved to masked type. Then after the
-	 * 12.00 -> 12.50 transition multi cast handling is required too.
-	 */
-
-	if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
-	    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
-		regs = NULL;
-		num = ARRAY_SIZE(xehp_regs);
-	} else if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 0) ||
-		   GRAPHICS_VER_FULL(i915) == IP_VER(12, 10)) {
-		regs = gen12_regs;
-		num = ARRAY_SIZE(gen12_regs);
-	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
-		regs = gen8_regs;
-		num = ARRAY_SIZE(gen8_regs);
-	} else if (GRAPHICS_VER(i915) < 8) {
-		return;
-	}
-
-	if (gt_WARN_ONCE(gt, !num, "Platform does not implement TLB invalidation!"))
+	if (GRAPHICS_VER(i915) < 8)
 		return;
 
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
@@ -1104,33 +1033,18 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 
 	awake = 0;
 	for_each_engine(engine, gt, id) {
-		struct reg_and_bit rb;
-
 		if (!intel_engine_pm_is_awake(engine))
 			continue;
 
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-			u32 val = BIT(engine->instance);
-
-			if (engine->class == VIDEO_DECODE_CLASS ||
-			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
-			    engine->class == COMPUTE_CLASS)
-				val = _MASKED_BIT_ENABLE(val);
+		if (engine->tlb_inv.mcr)
 			intel_gt_mcr_multicast_write_fw(gt,
-							xehp_regs[engine->class],
-							val);
-		} else {
-			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-			if (!i915_mmio_reg_offset(rb.reg))
-				continue;
-
-			if (GRAPHICS_VER(i915) == 12 && (engine->class == VIDEO_DECODE_CLASS ||
-			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
-			    engine->class == COMPUTE_CLASS))
-				rb.bit = _MASKED_BIT_ENABLE(rb.bit);
-
-			intel_uncore_write_fw(uncore, rb.reg, rb.bit);
-		}
+							engine->tlb_inv.reg.mcr_reg,
+							engine->tlb_inv.request);
+		else
+			intel_uncore_write_fw(uncore,
+					      engine->tlb_inv.reg.reg,
+					      engine->tlb_inv.request);
+
 		awake |= engine->mask;
 	}
 
@@ -1149,17 +1063,9 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 	intel_gt_mcr_unlock(gt, flags);
 
 	for_each_engine_masked(engine, gt, awake, tmp) {
-		struct reg_and_bit rb;
-
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-			rb.mcr_reg = xehp_regs[engine->class];
-			rb.bit = BIT(engine->instance);
-		} else {
-			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-		}
-
-		if (wait_for_invalidate(gt, rb))
-			gt_err_ratelimited(gt, "%s TLB invalidation did not complete in %ums!\n",
+		if (wait_for_invalidate(engine))
+			gt_err_ratelimited(gt,
+					   "%s TLB invalidation did not complete in %ums!\n",
 					   engine->name, TLB_INVAL_TIMEOUT_MS);
 	}
 
-- 
2.34.1

