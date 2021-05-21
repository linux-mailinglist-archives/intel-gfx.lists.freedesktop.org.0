Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63138CD04
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 20:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E8D6E83E;
	Fri, 21 May 2021 18:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FD66E82A;
 Fri, 21 May 2021 18:14:26 +0000 (UTC)
IronPort-SDR: koilYJdRBDnYzAHrvaWMGU0BSvyb7mehaFCZoisuq5wuvXouK5phWupgX7Y2nQpr6HEtTEI/G4
 0cuKVtyv26uA==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="198459882"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="198459882"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 11:14:25 -0700
IronPort-SDR: 8IEhtXEzd1k0ddNig+SFk4y93ZQj6RuJkk5XUpx9eJ2dCCFr69LjT7MoE97MVQsx/mEjMf+nle
 YHlkI5WucJUw==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="468587237"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 11:14:25 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:32:15 -0700
Message-Id: <20210521183215.65451-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210521183215.65451-1-matthew.brost@intel.com>
References: <20210521183215.65451-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Move CS interrupt handler to
 the backend
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

From: Chris Wilson <chris@chris-wilson.co.uk>

The different submission backends each have their own preferred
behaviour and interrupt setup. Let each handle their own interrupts.

This becomes more useful later as we to extract the use of auxiliary
state in the interrupt handler that is backend specific.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  7 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 +---
 .../drm/i915/gt/intel_execlists_submission.c  | 41 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 82 ++++++-------------
 drivers/gpu/drm/i915/gt/intel_gt_irq.h        | 23 ++++++
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  8 ++
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 ++-
 drivers/gpu/drm/i915/i915_irq.c               | 10 ++-
 9 files changed, 124 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e54a2a4df87c..3f9a811eb02b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -255,6 +255,11 @@ static void intel_engine_sanitize_mmio(struct intel_engine_cs *engine)
 	intel_engine_set_hwsp_writemask(engine, ~0u);
 }
 
+static void nop_irq_handler(struct intel_engine_cs *engine, u16 iir)
+{
+	GEM_DEBUG_WARN_ON(iir);
+}
+
 static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 {
 	const struct engine_info *info = &intel_engines[id];
@@ -292,6 +297,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->hw_id = info->hw_id;
 	engine->guc_id = MAKE_GUC_ID(info->class, info->instance);
 
+	engine->irq_handler = nop_irq_handler;
+
 	engine->class = info->class;
 	engine->instance = info->instance;
 	__sprint_engine_name(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 883bafc44902..9ef349cd5cea 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -402,6 +402,7 @@ struct intel_engine_cs {
 	u32		irq_enable_mask; /* bitmask to enable ring interrupt */
 	void		(*irq_enable)(struct intel_engine_cs *engine);
 	void		(*irq_disable)(struct intel_engine_cs *engine);
+	void		(*irq_handler)(struct intel_engine_cs *engine, u16 iir);
 
 	void		(*sanitize)(struct intel_engine_cs *engine);
 	int		(*resume)(struct intel_engine_cs *engine);
@@ -481,10 +482,9 @@ struct intel_engine_cs {
 #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
 #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
 #define I915_ENGINE_HAS_TIMESLICES   BIT(4)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
-#define I915_ENGINE_IS_VIRTUAL       BIT(6)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
+#define I915_ENGINE_IS_VIRTUAL       BIT(5)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
 	unsigned int flags;
 
 	/*
@@ -593,12 +593,6 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_HAS_TIMESLICES;
 }
 
-static inline bool
-intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
-{
-	return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
-}
-
 static inline bool
 intel_engine_is_virtual(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 9d2da5ccaef6..8db200422950 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -118,6 +118,7 @@
 #include "intel_engine_stats.h"
 #include "intel_execlists_submission.h"
 #include "intel_gt.h"
+#include "intel_gt_irq.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 #include "intel_lrc.h"
@@ -2384,6 +2385,45 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
 	rcu_read_unlock();
 }
 
+static void execlists_irq_handler(struct intel_engine_cs *engine, u16 iir)
+{
+	bool tasklet = false;
+
+	if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
+		u32 eir;
+
+		/* Upper 16b are the enabling mask, rsvd for internal errors */
+		eir = ENGINE_READ(engine, RING_EIR) & GENMASK(15, 0);
+		ENGINE_TRACE(engine, "CS error: %x\n", eir);
+
+		/* Disable the error interrupt until after the reset */
+		if (likely(eir)) {
+			ENGINE_WRITE(engine, RING_EMR, ~0u);
+			ENGINE_WRITE(engine, RING_EIR, eir);
+			WRITE_ONCE(engine->execlists.error_interrupt, eir);
+			tasklet = true;
+		}
+	}
+
+	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
+		WRITE_ONCE(engine->execlists.yield,
+			   ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI));
+		ENGINE_TRACE(engine, "semaphore yield: %08x\n",
+			     engine->execlists.yield);
+		if (del_timer(&engine->execlists.timer))
+			tasklet = true;
+	}
+
+	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
+		tasklet = true;
+
+	if (iir & GT_RENDER_USER_INTERRUPT)
+		intel_engine_signal_breadcrumbs(engine);
+
+	if (tasklet)
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+}
+
 static void __execlists_kick(struct intel_engine_execlists *execlists)
 {
 	/* Kick the tasklet for some interrupt coalescing and reset handling */
@@ -3133,6 +3173,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		 * until a more refined solution exists.
 		 */
 	}
+	intel_engine_set_irq_handler(engine, execlists_irq_handler);
 
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 9fc6c912a4e5..d29126c458ba 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -20,48 +20,6 @@ static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 		intel_guc_to_host_event_handler(guc);
 }
 
-static void
-cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
-{
-	bool tasklet = false;
-
-	if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
-		u32 eir;
-
-		/* Upper 16b are the enabling mask, rsvd for internal errors */
-		eir = ENGINE_READ(engine, RING_EIR) & GENMASK(15, 0);
-		ENGINE_TRACE(engine, "CS error: %x\n", eir);
-
-		/* Disable the error interrupt until after the reset */
-		if (likely(eir)) {
-			ENGINE_WRITE(engine, RING_EMR, ~0u);
-			ENGINE_WRITE(engine, RING_EIR, eir);
-			WRITE_ONCE(engine->execlists.error_interrupt, eir);
-			tasklet = true;
-		}
-	}
-
-	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
-		WRITE_ONCE(engine->execlists.yield,
-			   ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI));
-		ENGINE_TRACE(engine, "semaphore yield: %08x\n",
-			     engine->execlists.yield);
-		if (del_timer(&engine->execlists.timer))
-			tasklet = true;
-	}
-
-	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
-		tasklet = true;
-
-	if (iir & GT_RENDER_USER_INTERRUPT) {
-		intel_engine_signal_breadcrumbs(engine);
-		tasklet |= intel_engine_needs_breadcrumb_tasklet(engine);
-	}
-
-	if (tasklet)
-		tasklet_hi_schedule(&engine->execlists.tasklet);
-}
-
 static u32
 gen11_gt_engine_identity(struct intel_gt *gt,
 			 const unsigned int bank, const unsigned int bit)
@@ -122,7 +80,7 @@ gen11_engine_irq_handler(struct intel_gt *gt, const u8 class,
 		engine = NULL;
 
 	if (likely(engine))
-		return cs_irq_handler(engine, iir);
+		return intel_engine_cs_irq(engine, iir);
 
 	WARN_ONCE(1, "unhandled engine interrupt class=0x%x, instance=0x%x\n",
 		  class, instance);
@@ -275,9 +233,12 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
+		intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
+				    gt_iir);
+
 	if (gt_iir & ILK_BSD_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
+				    gt_iir);
 }
 
 static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
@@ -301,11 +262,16 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
 void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 {
 	if (gt_iir & GT_RENDER_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
+		intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
+				    gt_iir);
+
 	if (gt_iir & GT_BSD_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
+		intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
+				    gt_iir >> 12);
+
 	if (gt_iir & GT_BLT_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine_class[COPY_ENGINE_CLASS][0]);
+		intel_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0],
+				    gt_iir >> 22);
 
 	if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
 		      GT_BSD_CS_ERROR_INTERRUPT |
@@ -324,10 +290,10 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
 	if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
 		iir = raw_reg_read(regs, GEN8_GT_IIR(0));
 		if (likely(iir)) {
-			cs_irq_handler(gt->engine_class[RENDER_CLASS][0],
-				       iir >> GEN8_RCS_IRQ_SHIFT);
-			cs_irq_handler(gt->engine_class[COPY_ENGINE_CLASS][0],
-				       iir >> GEN8_BCS_IRQ_SHIFT);
+			intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
+					    iir >> GEN8_RCS_IRQ_SHIFT);
+			intel_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0],
+					    iir >> GEN8_BCS_IRQ_SHIFT);
 			raw_reg_write(regs, GEN8_GT_IIR(0), iir);
 		}
 	}
@@ -335,10 +301,10 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
 	if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
 		iir = raw_reg_read(regs, GEN8_GT_IIR(1));
 		if (likely(iir)) {
-			cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][0],
-				       iir >> GEN8_VCS0_IRQ_SHIFT);
-			cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][1],
-				       iir >> GEN8_VCS1_IRQ_SHIFT);
+			intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
+					    iir >> GEN8_VCS0_IRQ_SHIFT);
+			intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][1],
+					    iir >> GEN8_VCS1_IRQ_SHIFT);
 			raw_reg_write(regs, GEN8_GT_IIR(1), iir);
 		}
 	}
@@ -346,8 +312,8 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
 	if (master_ctl & GEN8_GT_VECS_IRQ) {
 		iir = raw_reg_read(regs, GEN8_GT_IIR(3));
 		if (likely(iir)) {
-			cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
-				       iir >> GEN8_VECS_IRQ_SHIFT);
+			intel_engine_cs_irq(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
+					    iir >> GEN8_VECS_IRQ_SHIFT);
 			raw_reg_write(regs, GEN8_GT_IIR(3), iir);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
index f667e976fb2b..41cad38668c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "intel_engine_types.h"
+
 struct intel_gt;
 
 #define GEN8_GT_IRQS (GEN8_GT_RCS_IRQ | \
@@ -39,4 +41,25 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl);
 void gen8_gt_irq_reset(struct intel_gt *gt);
 void gen8_gt_irq_postinstall(struct intel_gt *gt);
 
+static inline void intel_engine_cs_irq(struct intel_engine_cs *engine, u16 iir)
+{
+	if (iir)
+		engine->irq_handler(engine, iir);
+}
+
+static inline void
+intel_engine_set_irq_handler(struct intel_engine_cs *engine,
+			     void (*fn)(struct intel_engine_cs *engine,
+					u16 iir))
+{
+	/*
+	 * As the interrupt is live as allocate and setup the engines,
+	 * err on the side of caution and apply barriers to updating
+	 * the irq handler callback. This assures that when we do use
+	 * the engine, we will receive interrupts only to ourselves,
+	 * and not lose any.
+	 */
+	smp_store_mb(engine->irq_handler, fn);
+}
+
 #endif /* INTEL_GT_IRQ_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5f4f7f1df48f..2b6dffcc2262 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -12,6 +12,7 @@
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_gt.h"
+#include "intel_gt_irq.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
 #include "shmem_utils.h"
@@ -1017,10 +1018,17 @@ static void ring_release(struct intel_engine_cs *engine)
 	intel_timeline_put(engine->legacy.timeline);
 }
 
+static void irq_handler(struct intel_engine_cs *engine, u16 iir)
+{
+	intel_engine_signal_breadcrumbs(engine);
+}
+
 static void setup_irq(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	intel_engine_set_irq_handler(engine, irq_handler);
+
 	if (INTEL_GEN(i915) >= 6) {
 		engine->irq_enable = gen6_irq_enable;
 		engine->irq_disable = gen6_irq_disable;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 405d814e9040..97cab1b99871 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1774,7 +1774,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		return;
 
 	if (pm_iir & PM_VEBOX_USER_INTERRUPT)
-		intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
+		intel_engine_cs_irq(gt->engine[VECS0], pm_iir >> 10);
 
 	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
 		DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 17b551a0c89f..335719f17490 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -11,6 +11,7 @@
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_mocs.h"
@@ -264,6 +265,14 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+static void cs_irq_handler(struct intel_engine_cs *engine, u16 iir)
+{
+	if (iir & GT_RENDER_USER_INTERRUPT) {
+		intel_engine_signal_breadcrumbs(engine);
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+	}
+}
+
 static void guc_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -645,7 +654,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	}
 	engine->set_default_submission = guc_set_default_submission;
 
-	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 
 	/*
@@ -681,6 +689,7 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 static inline void guc_default_irqs(struct intel_engine_cs *engine)
 {
 	engine->irq_keep_mask = GT_RENDER_USER_INTERRUPT;
+	intel_engine_set_irq_handler(engine, cs_irq_handler);
 }
 
 int intel_guc_submission_setup(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d4611c643446..9ff511862848 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4024,7 +4024,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
 		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -4132,7 +4132,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -4277,10 +4277,12 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
+			intel_engine_cs_irq(dev_priv->gt.engine[RCS0],
+					    iir);
 
 		if (iir & I915_BSD_USER_INTERRUPT)
-			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[VCS0]);
+			intel_engine_cs_irq(dev_priv->gt.engine[VCS0],
+					    iir >> 25);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
