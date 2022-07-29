Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E421584C51
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jul 2022 09:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D5410E0E4;
	Fri, 29 Jul 2022 07:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B041210E522;
 Fri, 29 Jul 2022 07:04:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3A7E2B826E4;
 Fri, 29 Jul 2022 07:04:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62DECC433D6;
 Fri, 29 Jul 2022 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659078239;
 bh=pgulrJkc+mS0X7E/LN4CvdBBpVRQD6/TVCp0+LVwGR4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l3yZJouin98rCeGCeVbU255JhxOt9w/av4KFQFAXtbJpDIkGn8LLZY6AYoiS6sXvJ
 pWnR/Mlxqu2BunWSnlYWyllz0qzJ3gXlEEQmH7OB7eKZ2Ct2AG8D93wCj8iybq+rAt
 oM+d+g7mTqk4vya2OLf3f8IzZQz6nYAlQ5rtiFXlXT1SPo/x9h23EPLusV+qPn7kIa
 MENVzmSKnOSmBqVMk5iMrXWS/aib9j5GVXOjBQm7xFxJsv2FGj5hJvtHyj/iG7e3GX
 Cj3Fg3W7FBdVQ6p3S93YO9/PIS0repoh1BL0rt7liIJ2wHURuJhRl0tBmikMnxuNQ/
 RReFqWz9LO3QQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oHK2P-005nBt-1q;
 Fri, 29 Jul 2022 09:03:57 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Fri, 29 Jul 2022 09:03:54 +0200
Message-Id: <f4d7b534511b57336eaea0ce696afdf675cf5892.1659077372.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1659077372.git.mchehab@kernel.org>
References: <cover.1659077372.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/gt: Move TLB invalidation to
 its own file
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

Prepare for supporting more TLB invalidation scenarios by moving
the current MMIO invalidation to its own file.

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Cc: Fei Yang <fei.yang@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 0/2] at: https://lore.kernel.org/all/cover.1659077372.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/Makefile             |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c        | 168 +-------------------
 drivers/gpu/drm/i915/gt/intel_gt.h        |  12 --
 drivers/gpu/drm/i915/gt/intel_tlb.c       | 183 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_tlb.h       |  29 ++++
 drivers/gpu/drm/i915/i915_vma.c           |   1 +
 7 files changed, 219 insertions(+), 179 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_tlb.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_tlb.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 522ef9b4aff3..d3df9832d1f7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -126,6 +126,7 @@ gt-y += \
 	gt/intel_sseu.o \
 	gt/intel_sseu_debugfs.o \
 	gt/intel_timeline.o \
+	gt/intel_tlb.o \
 	gt/intel_workarounds.o \
 	gt/shmem_utils.o \
 	gt/sysfs_engines.o
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 8357dbdcab5c..1cd76cc5d9f3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -7,7 +7,7 @@
 #include <drm/drm_cache.h>
 
 #include "gt/intel_gt.h"
-#include "gt/intel_gt_pm.h"
+#include "gt/intel_tlb.h"
 
 #include "i915_drv.h"
 #include "i915_gem_object.h"
@@ -199,7 +199,7 @@ static void flush_tlb_invalidate(struct drm_i915_gem_object *obj)
 	if (!obj->mm.tlb)
 		return;
 
-	intel_gt_invalidate_tlb(gt, obj->mm.tlb);
+	intel_gt_invalidate_tlb_full(gt, obj->mm.tlb);
 	obj->mm.tlb = 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f435e06125aa..18d82cd620bd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -11,9 +11,7 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
-#include "i915_perf_oa_regs.h"
 #include "intel_context.h"
-#include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
 #include "intel_ggtt_gmch.h"
 #include "intel_gt.h"
@@ -31,6 +29,7 @@
 #include "intel_renderstate.h"
 #include "intel_rps.h"
 #include "intel_gt_sysfs.h"
+#include "intel_tlb.h"
 #include "intel_uncore.h"
 #include "shmem_utils.h"
 
@@ -48,8 +47,7 @@ static void __intel_gt_init_early(struct intel_gt *gt)
 	intel_gt_init_reset(gt);
 	intel_gt_init_requests(gt);
 	intel_gt_init_timelines(gt);
-	mutex_init(&gt->tlb.invalidate_lock);
-	seqcount_mutex_init(&gt->tlb.seqno, &gt->tlb.invalidate_lock);
+	intel_gt_init_tlb(gt);
 	intel_gt_pm_init_early(gt);
 
 	intel_uc_init_early(&gt->uc);
@@ -770,7 +768,7 @@ void intel_gt_driver_late_release_all(struct drm_i915_private *i915)
 		intel_gt_fini_requests(gt);
 		intel_gt_fini_reset(gt);
 		intel_gt_fini_timelines(gt);
-		mutex_destroy(&gt->tlb.invalidate_lock);
+		intel_gt_fini_tlb(gt);
 		intel_engines_free(gt);
 	}
 }
@@ -881,163 +879,3 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 
 	intel_sseu_dump(&info->sseu, p);
 }
-
-struct reg_and_bit {
-	i915_reg_t reg;
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
-
-static void mmio_invalidate_full(struct intel_gt *gt)
-{
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
-	struct drm_i915_private *i915 = gt->i915;
-	struct intel_uncore *uncore = gt->uncore;
-	struct intel_engine_cs *engine;
-	intel_engine_mask_t awake, tmp;
-	enum intel_engine_id id;
-	const i915_reg_t *regs;
-	unsigned int num = 0;
-
-	if (GRAPHICS_VER(i915) == 12) {
-		regs = gen12_regs;
-		num = ARRAY_SIZE(gen12_regs);
-	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
-		regs = gen8_regs;
-		num = ARRAY_SIZE(gen8_regs);
-	} else if (GRAPHICS_VER(i915) < 8) {
-		return;
-	}
-
-	if (drm_WARN_ONCE(&i915->drm, !num,
-			  "Platform does not implement TLB invalidation!"))
-		return;
-
-	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
-
-	spin_lock_irq(&uncore->lock); /* serialise invalidate with GT reset */
-
-	awake = 0;
-	for_each_engine(engine, gt, id) {
-		struct reg_and_bit rb;
-
-		if (!intel_engine_pm_is_awake(engine))
-			continue;
-
-		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-		if (!i915_mmio_reg_offset(rb.reg))
-			continue;
-
-		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
-		awake |= engine->mask;
-	}
-
-	GT_TRACE(gt, "invalidated engines %08x\n", awake);
-
-	/* Wa_2207587034:tgl,dg1,rkl,adl-s,adl-p */
-	if (awake &&
-	    (IS_TIGERLAKE(i915) ||
-	     IS_DG1(i915) ||
-	     IS_ROCKETLAKE(i915) ||
-	     IS_ALDERLAKE_S(i915) ||
-	     IS_ALDERLAKE_P(i915)))
-		intel_uncore_write_fw(uncore, GEN12_OA_TLB_INV_CR, 1);
-
-	spin_unlock_irq(&uncore->lock);
-
-	for_each_engine_masked(engine, gt, awake, tmp) {
-		struct reg_and_bit rb;
-
-		/*
-		 * HW architecture suggest typical invalidation time at 40us,
-		 * with pessimistic cases up to 100us and a recommendation to
-		 * cap at 1ms. We go a bit higher just in case.
-		 */
-		const unsigned int timeout_us = 100;
-		const unsigned int timeout_ms = 4;
-
-		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-		if (__intel_wait_for_register_fw(uncore,
-						 rb.reg, rb.bit, 0,
-						 timeout_us, timeout_ms,
-						 NULL))
-			drm_err_ratelimited(&gt->i915->drm,
-					    "%s TLB invalidation did not complete in %ums!\n",
-					    engine->name, timeout_ms);
-	}
-
-	/*
-	 * Use delayed put since a) we mostly expect a flurry of TLB
-	 * invalidations so it is good to avoid paying the forcewake cost and
-	 * b) it works around a bug in Icelake which cannot cope with too rapid
-	 * transitions.
-	 */
-	intel_uncore_forcewake_put_delayed(uncore, FORCEWAKE_ALL);
-}
-
-static bool tlb_seqno_passed(const struct intel_gt *gt, u32 seqno)
-{
-	u32 cur = intel_gt_tlb_seqno(gt);
-
-	/* Only skip if a *full* TLB invalidate barrier has passed */
-	return (s32)(cur - ALIGN(seqno, 2)) > 0;
-}
-
-void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
-{
-	intel_wakeref_t wakeref;
-
-	if (I915_SELFTEST_ONLY(gt->awake == -ENODEV))
-		return;
-
-	if (intel_gt_is_wedged(gt))
-		return;
-
-	if (tlb_seqno_passed(gt, seqno))
-		return;
-
-	with_intel_gt_pm_if_awake(gt, wakeref) {
-		mutex_lock(&gt->tlb.invalidate_lock);
-		if (tlb_seqno_passed(gt, seqno))
-			goto unlock;
-
-		mmio_invalidate_full(gt);
-
-		write_seqcount_invalidate(&gt->tlb.seqno);
-unlock:
-		mutex_unlock(&gt->tlb.invalidate_lock);
-	}
-}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 40b06adf509a..b4bba16cdb53 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -101,16 +101,4 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 
 void intel_gt_watchdog_work(struct work_struct *work);
 
-static inline u32 intel_gt_tlb_seqno(const struct intel_gt *gt)
-{
-	return seqprop_sequence(&gt->tlb.seqno);
-}
-
-static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
-{
-	return intel_gt_tlb_seqno(gt) | 1;
-}
-
-void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno);
-
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
new file mode 100644
index 000000000000..af8cae979489
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -0,0 +1,183 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_perf_oa_regs.h"
+#include "intel_engine_pm.h"
+#include "intel_gt.h"
+#include "intel_gt_pm.h"
+#include "intel_gt_regs.h"
+#include "intel_tlb.h"
+
+struct reg_and_bit {
+	i915_reg_t reg;
+	u32 bit;
+};
+
+static struct reg_and_bit
+get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
+		const i915_reg_t *regs, const unsigned int num)
+{
+	const unsigned int class = engine->class;
+	struct reg_and_bit rb = { };
+
+	if (drm_WARN_ON_ONCE(&engine->i915->drm,
+			     class >= num || !regs[class].reg))
+		return rb;
+
+	rb.reg = regs[class];
+	if (gen8 && class == VIDEO_DECODE_CLASS)
+		rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
+	else
+		rb.bit = engine->instance;
+
+	rb.bit = BIT(rb.bit);
+
+	return rb;
+}
+
+static bool tlb_seqno_passed(const struct intel_gt *gt, u32 seqno)
+{
+	u32 cur = intel_gt_tlb_seqno(gt);
+
+	/* Only skip if a *full* TLB invalidate barrier has passed */
+	return (s32)(cur - ALIGN(seqno, 2)) > 0;
+}
+
+static void mmio_invalidate_full(struct intel_gt *gt)
+{
+	static const i915_reg_t gen8_regs[] = {
+		[RENDER_CLASS]			= GEN8_RTCR,
+		[VIDEO_DECODE_CLASS]		= GEN8_M1TCR, /* , GEN8_M2TCR */
+		[VIDEO_ENHANCEMENT_CLASS]	= GEN8_VTCR,
+		[COPY_ENGINE_CLASS]		= GEN8_BTCR,
+	};
+	static const i915_reg_t gen12_regs[] = {
+		[RENDER_CLASS]			= GEN12_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
+	};
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_uncore *uncore = gt->uncore;
+	struct intel_engine_cs *engine;
+	intel_engine_mask_t awake, tmp;
+	enum intel_engine_id id;
+	const i915_reg_t *regs;
+	unsigned int num = 0;
+
+	if (GRAPHICS_VER(i915) == 12) {
+		regs = gen12_regs;
+		num = ARRAY_SIZE(gen12_regs);
+	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
+		regs = gen8_regs;
+		num = ARRAY_SIZE(gen8_regs);
+	} else if (GRAPHICS_VER(i915) < 8) {
+		return;
+	}
+
+	if (drm_WARN_ONCE(&i915->drm, !num,
+			  "Platform does not implement TLB invalidation!"))
+		return;
+
+	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
+
+	spin_lock_irq(&uncore->lock); /* serialise invalidate with GT reset */
+
+	awake = 0;
+	for_each_engine(engine, gt, id) {
+		struct reg_and_bit rb;
+
+		if (!intel_engine_pm_is_awake(engine))
+			continue;
+
+		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
+		if (!i915_mmio_reg_offset(rb.reg))
+			continue;
+
+		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
+		awake |= engine->mask;
+	}
+
+	GT_TRACE(gt, "invalidated engines %08x\n", awake);
+
+	/* Wa_2207587034:tgl,dg1,rkl,adl-s,adl-p */
+	if (awake &&
+	    (IS_TIGERLAKE(i915) ||
+	     IS_DG1(i915) ||
+	     IS_ROCKETLAKE(i915) ||
+	     IS_ALDERLAKE_S(i915) ||
+	     IS_ALDERLAKE_P(i915)))
+		intel_uncore_write_fw(uncore, GEN12_OA_TLB_INV_CR, 1);
+
+	spin_unlock_irq(&uncore->lock);
+
+	for_each_engine_masked(engine, gt, awake, tmp) {
+		struct reg_and_bit rb;
+
+		/*
+		 * HW architecture suggest typical invalidation time at 40us,
+		 * with pessimistic cases up to 100us and a recommendation to
+		 * cap at 1ms. We go a bit higher just in case.
+		 */
+		const unsigned int timeout_us = 100;
+		const unsigned int timeout_ms = 4;
+
+		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
+		if (__intel_wait_for_register_fw(uncore,
+						 rb.reg, rb.bit, 0,
+						 timeout_us, timeout_ms,
+						 NULL))
+			drm_err_ratelimited(&gt->i915->drm,
+					    "%s TLB invalidation did not complete in %ums!\n",
+					    engine->name, timeout_ms);
+	}
+
+	/*
+	 * Use delayed put since a) we mostly expect a flurry of TLB
+	 * invalidations so it is good to avoid paying the forcewake cost and
+	 * b) it works around a bug in Icelake which cannot cope with too rapid
+	 * transitions.
+	 */
+	intel_uncore_forcewake_put_delayed(uncore, FORCEWAKE_ALL);
+}
+
+void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
+{
+	intel_wakeref_t wakeref;
+
+	if (I915_SELFTEST_ONLY(gt->awake == -ENODEV))
+		return;
+
+	if (intel_gt_is_wedged(gt))
+		return;
+
+	if (tlb_seqno_passed(gt, seqno))
+		return;
+
+	with_intel_gt_pm_if_awake(gt, wakeref) {
+		mutex_lock(&gt->tlb.invalidate_lock);
+		if (tlb_seqno_passed(gt, seqno))
+			goto unlock;
+
+		mmio_invalidate_full(gt);
+
+		write_seqcount_invalidate(&gt->tlb.seqno);
+unlock:
+		mutex_unlock(&gt->tlb.invalidate_lock);
+	}
+}
+
+void intel_gt_init_tlb(struct intel_gt *gt)
+{
+	mutex_init(&gt->tlb.invalidate_lock);
+	seqcount_mutex_init(&gt->tlb.seqno, &gt->tlb.invalidate_lock);
+}
+
+void intel_gt_fini_tlb(struct intel_gt *gt)
+{
+	mutex_destroy(&gt->tlb.invalidate_lock);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
new file mode 100644
index 000000000000..46ce25bf5afe
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef INTEL_TLB_H
+#define INTEL_TLB_H
+
+#include <linux/seqlock.h>
+#include <linux/types.h>
+
+#include "intel_gt_types.h"
+
+void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno);
+
+void intel_gt_init_tlb(struct intel_gt *gt);
+void intel_gt_fini_tlb(struct intel_gt *gt);
+
+static inline u32 intel_gt_tlb_seqno(const struct intel_gt *gt)
+{
+	return seqprop_sequence(&gt->tlb.seqno);
+}
+
+static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
+{
+	return intel_gt_tlb_seqno(gt) | 1;
+}
+
+#endif /* INTEL_TLB_H */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 84a9ccbc5fc5..fe947d1456d5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -33,6 +33,7 @@
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
+#include "gt/intel_tlb.h"
 
 #include "i915_drv.h"
 #include "i915_gem_evict.h"
-- 
2.36.1

