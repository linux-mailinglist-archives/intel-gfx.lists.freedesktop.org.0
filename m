Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB8E178581
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4B46E96D;
	Tue,  3 Mar 2020 22:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEC66E96D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413681"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:06 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:03 -0800
Message-Id: <20200303221905.25866-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: handle interrupts from the OA unit
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

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

The OA unit can notify that its circular buffer is half full through
an interrupt and we would like to give the application the ability to
make use of this interrupt to get rid of CPU checks on the OA buffer.

This change wires up the interrupt to the i915-perf stream and leaves
it ignored for now.

v2: Use spin_lock_irq() to access the IMR register on Haswell (Chris)
v3: (Umesh)
- Rebase
- Enable OA IMR for gen12
- Add OA interrupt to the pm enable/disable irq for gen11/12

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 29 ++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_irq.h        |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     | 34 +++++++++++--------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 ++
 drivers/gpu/drm/i915/i915_perf.c              | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_perf_types.h        | 19 +++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++++
 7 files changed, 112 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index f0e7fd95165a..708cfb12befb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -85,6 +85,18 @@ gen11_gt_engine_identity(struct intel_gt *gt,
 	return ident;
 }
 
+static void notify_perfmon_buffer_half_full(struct drm_i915_private *i915)
+{
+	atomic64_inc(&i915->perf.exclusive_stream->half_full_count);
+	wake_up_all(&i915->perf.exclusive_stream->poll_wq);
+}
+
+static void gen8_perfmon_handler(struct drm_i915_private *i915, u32 iir)
+{
+	if (iir & GEN8_GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT)
+		notify_perfmon_buffer_half_full(i915);
+}
+
 static void
 gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 			const u16 iir)
@@ -95,6 +107,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 	if (instance == OTHER_GTPM_INSTANCE)
 		return gen11_rps_irq_handler(&gt->rps, iir);
 
+ 	if (instance == OTHER_WDOAPERF_INSTANCE)
+ 		return gen8_perfmon_handler(gt->i915, iir);
+
 	WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
 		  instance, iir);
 }
@@ -300,6 +315,9 @@ void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 		      GT_CS_MASTER_ERROR_INTERRUPT))
 		DRM_DEBUG("Command parser error, gt_iir 0x%08x\n", gt_iir);
 
+	if (gt_iir & GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT)
+		notify_perfmon_buffer_half_full(gt->i915);
+
 	if (gt_iir & GT_PARITY_ERROR(gt->i915))
 		gen7_parity_error_irq_handler(gt, gt_iir);
 }
@@ -331,11 +349,13 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
 		}
 	}
 
-	if (master_ctl & GEN8_GT_VECS_IRQ) {
+	if (master_ctl & (GEN8_GT_VECS_IRQ | GEN8_GT_WDBOX_OACS_IRQ)) {
 		iir = raw_reg_read(regs, GEN8_GT_IIR(3));
 		if (likely(iir)) {
 			cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
 				       iir >> GEN8_VECS_IRQ_SHIFT);
+			gen8_perfmon_handler(gt->i915,
+					     iir >> GEN8_WD_IRQ_SHIFT);
 			raw_reg_write(regs, GEN8_GT_IIR(3), iir);
 		}
 	}
@@ -371,7 +391,8 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
 		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
 		0,
-		irqs << GEN8_VECS_IRQ_SHIFT,
+		irqs << GEN8_VECS_IRQ_SHIFT |
+		GEN8_GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT << GEN8_WD_IRQ_SHIFT,
 	};
 	struct intel_uncore *uncore = gt->uncore;
 
@@ -439,6 +460,10 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 	else
 		gt_irqs |= GT_BLT_USER_INTERRUPT | GT_BSD_USER_INTERRUPT;
 
+ 	/* We only expose the i915/perf interface on HSW+. */
+ 	if (IS_HASWELL(gt->i915))
+ 		gt_irqs |= GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;
+
 	GEN3_IRQ_INIT(uncore, GT, gt->gt_imr, gt_irqs);
 
 	if (INTEL_GEN(gt->i915) >= 6) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
index 886c5cf408a2..427011e30c39 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
@@ -15,6 +15,7 @@ struct intel_gt;
 		      GEN8_GT_BCS_IRQ | \
 		      GEN8_GT_VCS0_IRQ | \
 		      GEN8_GT_VCS1_IRQ | \
+ 		      GEN8_GT_WDBOX_OACS_IRQ | \
 		      GEN8_GT_VECS_IRQ | \
 		      GEN8_GT_PM_IRQ | \
 		      GEN8_GT_GUC_IRQ)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
index babe866126d7..6eecf9912a67 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
@@ -14,19 +14,16 @@ static void write_pm_imr(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
-	u32 mask = gt->pm_imr;
 	i915_reg_t reg;
 
-	if (INTEL_GEN(i915) >= 11) {
+	if (INTEL_GEN(i915) >= 11)
 		reg = GEN11_GPM_WGBOXPERF_INTR_MASK;
-		mask <<= 16; /* pm is in upper half */
-	} else if (INTEL_GEN(i915) >= 8) {
+	else if (INTEL_GEN(i915) >= 8)
 		reg = GEN8_GT_IMR(2);
-	} else {
+	else
 		reg = GEN6_PMIMR;
-	}
 
-	intel_uncore_write(uncore, reg, mask);
+	intel_uncore_write(uncore, reg, gt->pm_imr);
 }
 
 static void gen6_gt_pm_update_irq(struct intel_gt *gt,
@@ -75,25 +72,28 @@ static void write_pm_ier(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
-	u32 mask = gt->pm_ier;
 	i915_reg_t reg;
 
-	if (INTEL_GEN(i915) >= 11) {
+	if (INTEL_GEN(i915) >= 11)
 		reg = GEN11_GPM_WGBOXPERF_INTR_ENABLE;
-		mask <<= 16; /* pm is in upper half */
-	} else if (INTEL_GEN(i915) >= 8) {
+	else if (INTEL_GEN(i915) >= 8)
 		reg = GEN8_GT_IER(2);
-	} else {
+	else
 		reg = GEN6_PMIER;
-	}
 
-	intel_uncore_write(uncore, reg, mask);
+	intel_uncore_write(uncore, reg, gt->pm_ier);
 }
 
 void gen6_gt_pm_enable_irq(struct intel_gt *gt, u32 enable_mask)
 {
+	struct drm_i915_private *i915 = gt->i915;
+
 	lockdep_assert_held(&gt->irq_lock);
 
+	if (INTEL_GEN(i915) >= 11)
+		enable_mask = (enable_mask << 16) | /* pm is in upper half */
+			GEN8_GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;
+
 	gt->pm_ier |= enable_mask;
 	write_pm_ier(gt);
 	gen6_gt_pm_unmask_irq(gt, enable_mask);
@@ -101,8 +101,14 @@ void gen6_gt_pm_enable_irq(struct intel_gt *gt, u32 enable_mask)
 
 void gen6_gt_pm_disable_irq(struct intel_gt *gt, u32 disable_mask)
 {
+	struct drm_i915_private *i915 = gt->i915;
+
 	lockdep_assert_held(&gt->irq_lock);
 
+	if (INTEL_GEN(i915) >= 11)
+		disable_mask = (disable_mask << 16) | /* pm is in upper half */
+			GEN8_GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;
+
 	gt->pm_ier &= ~disable_mask;
 	gen6_gt_pm_mask_irq(gt, disable_mask);
 	write_pm_ier(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index fee743626060..d792711aea13 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1838,6 +1838,8 @@ static void setup_rcs(struct intel_engine_cs *engine)
 
 	if (HAS_L3_DPF(i915))
 		engine->irq_keep_mask = GT_RENDER_L3_PARITY_ERROR_INTERRUPT;
+	if (IS_HASWELL(i915))
+		engine->irq_keep_mask |= GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;
 
 	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT;
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index cf4176f4d11d..502961da840d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -201,6 +201,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
+#include "gt/intel_gt_irq.h"
 
 #include "i915_drv.h"
 #include "i915_perf.h"
@@ -351,6 +352,7 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
  * @engine: The engine (typically rcs0) being monitored by the OA unit
  * @poll_oa_period: The period at which the CPU will check for OA data
  * availability
+ * @oa_interrupt_monitor: Whether we should monitor the OA interrupt.
  *
  * As read_properties_unlocked() enumerates and validates the properties given
  * to open a stream of metrics the configuration is built up in the structure
@@ -371,6 +373,7 @@ struct perf_open_properties {
 
 	struct intel_engine_cs *engine;
 	u64 poll_oa_period;
+	bool oa_interrupt_monitor;
 };
 
 struct i915_oa_config_bo {
@@ -2571,6 +2574,13 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 	 */
 	gen7_init_oa_buffer(stream);
 
+	if (stream->oa_interrupt_monitor) {
+		spin_lock_irq(&stream->perf->i915->irq_lock);
+		gen5_gt_enable_irq(&stream->perf->i915->gt,
+				   GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);
+		spin_unlock_irq(&stream->perf->i915->irq_lock);
+	}
+
 	intel_uncore_write(uncore, GEN7_OACONTROL,
 			   (ctx_id & GEN7_OACONTROL_CTX_MASK) |
 			   (period_exponent <<
@@ -2597,6 +2607,10 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 	 */
 	gen8_init_oa_buffer(stream);
 
+	if (stream->oa_interrupt_monitor)
+		intel_uncore_write(uncore, GEN8_OA_IMR,
+				   ~GEN8_OA_IMR_MASK_INTR);
+
 	/*
 	 * Note: we don't rely on the hardware to perform single context
 	 * filtering and instead filter on the cpu based on the context-id
@@ -2621,6 +2635,10 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
 
 	gen12_init_oa_buffer(stream);
 
+	if (stream->oa_interrupt_monitor)
+		intel_uncore_write(uncore, GEN12_OA_IMR,
+				   ~GEN8_OA_IMR_MASK_INTR);
+
 	intel_uncore_write(uncore, GEN12_OAG_OACONTROL,
 			   (report_format << GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT) |
 			   GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE);
@@ -2643,6 +2661,10 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 	 */
 	stream->pollin = false;
 
+	stream->half_full_count_last = 0;
+	atomic64_set(&stream->half_full_count,
+		     stream->half_full_count_last);
+
 	stream->perf->ops.oa_enable(stream);
 
 	if (stream->periodic && stream->poll_oa_period)
@@ -2655,6 +2677,13 @@ static void gen7_oa_disable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
+ 	if (stream->oa_interrupt_monitor) {
+ 		spin_lock_irq(&stream->perf->i915->irq_lock);
+ 		gen5_gt_disable_irq(&stream->perf->i915->gt,
+ 				    GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);
+ 		spin_unlock_irq(&stream->perf->i915->irq_lock);
+ 	}
+
 	intel_uncore_write(uncore, GEN7_OACONTROL, 0);
 	if (intel_wait_for_register(uncore,
 				    GEN7_OACONTROL, GEN7_OACONTROL_ENABLE, 0,
@@ -2667,6 +2696,8 @@ static void gen8_oa_disable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
+ 	intel_uncore_write(uncore, GEN8_OA_IMR, 0xffffffff);
+
 	intel_uncore_write(uncore, GEN8_OACONTROL, 0);
 	if (intel_wait_for_register(uncore,
 				    GEN8_OACONTROL, GEN8_OA_COUNTER_ENABLE, 0,
@@ -2679,6 +2710,8 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
+ 	intel_uncore_write(uncore, GEN12_OA_IMR, 0xffffffff);
+
 	intel_uncore_write(uncore, GEN12_OAG_OACONTROL, 0);
 	if (intel_wait_for_register(uncore,
 				    GEN12_OAG_OACONTROL,
@@ -3430,6 +3463,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	stream->perf = perf;
 	stream->ctx = specific_ctx;
 	stream->poll_oa_period = props->poll_oa_period;
+	stream->oa_interrupt_monitor = props->oa_interrupt_monitor;
 
 	ret = i915_oa_stream_init(stream, param, props);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 01559ead22e2..56b04a4970bd 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -228,6 +228,19 @@ struct i915_perf_stream {
 	 */
 	bool pollin;
 
+	/**
+	 * @half_full_count: Atomic counter incremented by the interrupt
+	 * handling code for each OA half full interrupt received.
+	 */
+	atomic64_t half_full_count;
+
+	/**
+	 * half_full_count_last: Copy of the atomic half_full_count that was
+	 * last processed in the i915-perf driver. If both counters differ,
+	 * there is data available to read in the OA buffer.
+	 */
+	u64 half_full_count_last;
+
 	/**
 	 * @periodic: Whether periodic sampling is currently enabled.
 	 */
@@ -310,6 +323,12 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
+
+	/**
+	 * @oa_interrupt_monitor: Whether the stream will be notified by OA
+	 * interrupts.
+	 */
+	bool oa_interrupt_monitor;
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 80cf02a6eec1..f176ec023f2b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -693,6 +693,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OABUFFER_SIZE_8M    (6 << 3)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
+#define GEN8_OA_IMR _MMIO(0x2b20)
+#define  GEN8_OA_IMR_MASK_INTR (1 << 28)
+
+#define GEN12_OA_IMR _MMIO(0xdb14)
+
 /* Gen12 OAR unit */
 #define GEN12_OAR_OACONTROL _MMIO(0x2960)
 #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
@@ -3091,7 +3096,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GT_BLT_USER_INTERRUPT			(1 << 22)
 #define GT_BSD_CS_ERROR_INTERRUPT		(1 << 15)
 #define GT_BSD_USER_INTERRUPT			(1 << 12)
+#define GEN8_GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT (1 << 12) /* bdw+ */
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1	(1 << 11) /* hsw+; rsvd on snb, ivb, vlv */
+#define GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT   (1 <<  9) /* ivb+ but only used on hsw+ */
 #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
 #define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
@@ -7438,6 +7445,7 @@ enum {
 #define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
 #define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
 #define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
+#define  GEN8_GT_WDBOX_OACS_IRQ         (1 << 7)
 #define  GEN8_GT_VECS_IRQ		(1 << 6)
 #define  GEN8_GT_GUC_IRQ		(1 << 5)
 #define  GEN8_GT_PM_IRQ			(1 << 4)
@@ -7635,6 +7643,7 @@ enum {
 /* irq instances for OTHER_CLASS */
 #define OTHER_GUC_INSTANCE	0
 #define OTHER_GTPM_INSTANCE	1
+#define OTHER_WDOAPERF_INSTANCE	2
 
 #define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
