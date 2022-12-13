Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5808764B239
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 10:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9457810E2EE;
	Tue, 13 Dec 2022 09:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D31D10E2EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 09:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670923298; x=1702459298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ihNaGnsaTZ4dzLbOM7UmXpc1qSaoqZ0N/8aDYfPxJBU=;
 b=exUecuRD9cTBBrfs6vMltDmkTa7El34hOEugHZq/4z6yYS8OztlcwwtG
 7NrHJcvv7yg2DOMSBaa0yqu0sfLLWtHXfnIuHIF2vYfOY2veHQZLDFZuD
 M4+JhG6U33YwO7SmaqlV9OwO9Y2/Vm1iBgDuWV/jArE5keboujjFMeH0/
 QbOfbh0nnp7fjSGvu78CaCKKSZPG4abNRCRZQwVXfqeGHgfyp5rZCErQX
 b7KbrMO710J3UNRqj2MXa17f/4zj49wj1aXZUn3GDlfhyzhLbIffDfok3
 ahVCP9UWZGTfElVXmyPy0hIbOs/K5h/rlvVuiiSCz8mgvnRqaHL5Tmt4A g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="345146168"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="345146168"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 01:21:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="822818515"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="822818515"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 01:21:31 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 10:21:22 +0100
Message-Id: <20221213092122.1034491-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <12f79230-ca3f-caa1-fe2c-3eff89211707@linux.intel.com>
References: <12f79230-ca3f-caa1-fe2c-3eff89211707@linux.intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: cleanup TLB invalidation code
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After adding multicast and write mask support the TLB invalidation
code become slightly incosistent and redundant.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Hi,

This is another cleanup attempt.
Multicast makes things quite complicated, either lot of ifs, either redundancy.
I guess we will end up with some common helpers to support cases where the same
code should access mcr and traditional registers, depending on GPU version.

I took some ideas from your proposition, but I've replaced get_reg_and_bit with two
very simple helpers.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 148 +++++++++++++----------------
 1 file changed, 64 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 7eeee5a7cb33cb..e777600e0425ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -983,35 +983,15 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 	intel_sseu_dump(&info->sseu, p);
 }
 
-struct reg_and_bit {
-	union {
-		i915_reg_t reg;
-		i915_mcr_reg_t mcr_reg;
-	};
-	u32 bit;
+union inv_reg {
+	i915_reg_t reg;
+	i915_mcr_reg_t mcr_reg;
 };
 
-static struct reg_and_bit
-get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
-		const i915_reg_t *regs, const unsigned int num)
-{
-	const unsigned int class = engine->class;
-	struct reg_and_bit rb = { };
-
-	if (drm_WARN_ON_ONCE(&engine->i915->drm,
-			     class >= num || !regs[class].reg))
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
+struct inv_reg_and_bit {
+	union inv_reg addr;
+	u32 bit;
+};
 
 /*
  * HW architecture suggest typical invalidation time at 40us,
@@ -1026,52 +1006,72 @@ get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
  * but are now considered MCR registers.  Since they exist within a GAM range,
  * the primary instance of the register rolls up the status from each unit.
  */
-static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
+static int wait_for_invalidate(struct intel_gt *gt, struct inv_reg_and_bit rb)
 {
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
-		return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
+		return intel_gt_mcr_wait_for_reg(gt, rb.addr.mcr_reg, rb.bit, 0,
 						 TLB_INVAL_TIMEOUT_US,
 						 TLB_INVAL_TIMEOUT_MS);
 	else
-		return __intel_wait_for_register_fw(gt->uncore, rb.reg, rb.bit, 0,
+		return __intel_wait_for_register_fw(gt->uncore, rb.addr.reg,
+						    rb.bit, 0,
 						    TLB_INVAL_TIMEOUT_US,
 						    TLB_INVAL_TIMEOUT_MS,
 						    NULL);
 }
 
+static void inv_reg_set_write_mask(struct inv_reg_and_bit *rb, u8 class, u8 ver)
+{
+	if (ver >= 12 && (class == VIDEO_DECODE_CLASS ||
+			  class == VIDEO_ENHANCEMENT_CLASS ||
+			  class == COMPUTE_CLASS))
+		rb->bit = _MASKED_BIT_ENABLE(rb->bit);
+}
+
+static void inv_reg_set_instance(struct inv_reg_and_bit *rb, u8 class,
+				 u8 instance, u8 ver)
+{
+	if (ver < 11 && class == VIDEO_DECODE_CLASS) {
+		rb->addr.reg.reg += 4 * instance; /* GEN8_M2TCR */
+		rb->bit = 1;
+	} else {
+		rb->bit = BIT(instance);
+	}
+}
+
 static void mmio_invalidate_full(struct intel_gt *gt)
 {
-	static const i915_reg_t gen8_regs[] = {
-		[RENDER_CLASS]			= GEN8_RTCR,
-		[VIDEO_DECODE_CLASS]		= GEN8_M1TCR, /* , GEN8_M2TCR */
-		[VIDEO_ENHANCEMENT_CLASS]	= GEN8_VTCR,
-		[COPY_ENGINE_CLASS]		= GEN8_BTCR,
+	static const union inv_reg gen8_regs[] = {
+		[RENDER_CLASS].reg		= GEN8_RTCR,
+		[VIDEO_DECODE_CLASS].reg	= GEN8_M1TCR, /* , GEN8_M2TCR */
+		[VIDEO_ENHANCEMENT_CLASS].reg	= GEN8_VTCR,
+		[COPY_ENGINE_CLASS].reg		= GEN8_BTCR,
 	};
-	static const i915_reg_t gen12_regs[] = {
-		[RENDER_CLASS]			= GEN12_GFX_TLB_INV_CR,
-		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
-		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
-		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
-		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
+	static const union inv_reg gen12_regs[] = {
+		[RENDER_CLASS].reg		= GEN12_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS].reg	= GEN12_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS].reg	= GEN12_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS].reg		= GEN12_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS].reg		= GEN12_COMPCTX_TLB_INV_CR,
 	};
-	static const i915_mcr_reg_t xehp_regs[] = {
-		[RENDER_CLASS]			= XEHP_GFX_TLB_INV_CR,
-		[VIDEO_DECODE_CLASS]		= XEHP_VD_TLB_INV_CR,
-		[VIDEO_ENHANCEMENT_CLASS]	= XEHP_VE_TLB_INV_CR,
-		[COPY_ENGINE_CLASS]		= XEHP_BLT_TLB_INV_CR,
-		[COMPUTE_CLASS]			= XEHP_COMPCTX_TLB_INV_CR,
+	static const union inv_reg xehp_regs[] = {
+		[RENDER_CLASS].mcr_reg		= XEHP_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS].mcr_reg	= XEHP_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS].mcr_reg = XEHP_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS].mcr_reg	= XEHP_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS].mcr_reg		= XEHP_COMPCTX_TLB_INV_CR,
 	};
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t awake, tmp;
+	const union inv_reg *regs;
 	enum intel_engine_id id;
-	const i915_reg_t *regs;
 	unsigned int num = 0;
 	unsigned long flags;
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-		regs = NULL;
+		regs = xehp_regs;
 		num = ARRAY_SIZE(xehp_regs);
 	} else if (GRAPHICS_VER(i915) == 12) {
 		regs = gen12_regs;
@@ -1083,10 +1083,6 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 		return;
 	}
 
-	if (drm_WARN_ONCE(&i915->drm, !num,
-			  "Platform does not implement TLB invalidation!"))
-		return;
-
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
 
 	intel_gt_mcr_lock(gt, &flags);
@@ -1094,33 +1090,22 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 
 	awake = 0;
 	for_each_engine(engine, gt, id) {
-		struct reg_and_bit rb;
+		struct inv_reg_and_bit rb;
 
 		if (!intel_engine_pm_is_awake(engine))
 			continue;
 
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-			u32 val = BIT(engine->instance);
-
-			if (engine->class == VIDEO_DECODE_CLASS ||
-			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
-			    engine->class == COMPUTE_CLASS)
-				val = _MASKED_BIT_ENABLE(val);
-			intel_gt_mcr_multicast_write_fw(gt,
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
+		rb.addr = regs[engine->class];
+		if (!i915_mmio_reg_offset(rb.addr.reg))
+			continue;
+		inv_reg_set_instance(&rb, engine->class, engine->instance,
+				     GRAPHICS_VER(i915));
+		inv_reg_set_write_mask(&rb, engine->class, GRAPHICS_VER(i915));
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+			intel_gt_mcr_multicast_write_fw(gt, rb.addr.mcr_reg,
+							rb.bit);
+		else
+			intel_uncore_write_fw(uncore, rb.addr.reg, rb.bit);
 		awake |= engine->mask;
 	}
 
@@ -1139,15 +1124,10 @@ static void mmio_invalidate_full(struct intel_gt *gt)
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
+		struct inv_reg_and_bit rb = { .addr = regs[engine->class] };
 
+		inv_reg_set_instance(&rb, engine->class, engine->instance,
+				     GRAPHICS_VER(i915));
 		if (wait_for_invalidate(gt, rb))
 			drm_err_ratelimited(&gt->i915->drm,
 					    "%s TLB invalidation did not complete in %ums!\n",
-- 
2.34.1

