Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB5062066B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 03:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B3610E40D;
	Tue,  8 Nov 2022 02:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752ED10E40D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 02:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667873028; x=1699409028;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4ckwj2hNezjkkqy0zm9BDby1JD9r9WgM+MWriErEkGg=;
 b=KxXFY8Lb7/b9ceOlziURMcwgmfweB107gMnFu0va+FheAuWT1QF4T2HE
 AlisxHgXdZ6YQ5ABFq4+684BK/0aL12NPv8ny8HVMW/nHAMhRNjKCOB+A
 oe86fEvrsASoedDbigH6akHN/roxIukcw+NEiDDU8MfJL/MUlF2M492bA
 BKtyzwM8pxLniSg6zitO9DwBIaBQ5HPISrmcE9f8XJxhAopKh7Gfc+9dM
 tQoN74WeM8y6TD51L28GNNXeccOJIdx2ZzDKhSWiYqL8IWid2g77fSKat
 K2gjc2nNuTrT9L3AvuXLXyUW1S64T4YdPiwaGpglVr8I7ZhrI3jLhE8qB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374850094"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374850094"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614097257"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="614097257"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:08 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 18:06:00 -0800
Message-Id: <20221108020600.3575467-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 7/7] drm/i915/guc: handle interrupts from media GuC
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The render and media GuCs share the same interrupt enable register, so
we can no longer disable interrupts when we disable communication for
one of the GuCs as this would impact the other GuC. Instead, we keep the
interrupts always enabled in HW and use a variable in the GuC structure
to determine if we want to service the received interrupts or not.

v2: use MTL_ prefix for reg definition (Matt)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c  | 21 ++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c  | 29 ++++++++++++++-----------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h  |  5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c   |  8 +++++--
 5 files changed, 45 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index b197f0e9794f..485110d56ece 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -17,6 +17,9 @@
 
 static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 {
+	if (unlikely(!guc->interrupts.enabled))
+		return;
+
 	if (iir & GUC_INTR_GUC2HOST)
 		intel_guc_to_host_event_handler(guc);
 }
@@ -250,6 +253,7 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 	u32 irqs = GT_RENDER_USER_INTERRUPT;
+	u32 guc_mask = intel_uc_wants_guc(&gt->uc) ? GUC_INTR_GUC2HOST : 0;
 	u32 gsc_mask = 0;
 	u32 dmask;
 	u32 smask;
@@ -304,6 +308,19 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	if (gsc_mask)
 		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_MASK, ~gsc_mask);
 
+	if (guc_mask) {
+		/* the enable bit is common for both GTs but the masks are separate */
+		u32 mask = gt->type == GT_MEDIA ?
+			REG_FIELD_PREP(ENGINE0_MASK, guc_mask) :
+			REG_FIELD_PREP(ENGINE1_MASK, guc_mask);
+
+		intel_uncore_write(uncore, GEN11_GUC_SG_INTR_ENABLE,
+				   REG_FIELD_PREP(ENGINE1_MASK, guc_mask));
+
+		/* we might not be the first GT to write this reg */
+		intel_uncore_rmw(uncore, MTL_GUC_MGUC_INTR_MASK, mask, 0);
+	}
+
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
 	 * is enabled/disabled.
@@ -312,10 +329,6 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	gt->pm_imr = ~gt->pm_ier;
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
-
-	/* Same thing for GuC interrupts */
-	intel_uncore_write(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
-	intel_uncore_write(uncore, GEN11_GUC_SG_INTR_MASK,  ~0);
 }
 
 void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 8aa06b0327e5..a5d596b615a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1554,6 +1554,7 @@
 #define   GEN11_CSME				(31)
 #define   GEN11_GUNIT				(28)
 #define   GEN11_GUC				(25)
+#define   MTL_MGUC				(24)
 #define   GEN11_WDPERF				(20)
 #define   GEN11_KCR				(19)
 #define   GEN11_GTPM				(16)
@@ -1608,6 +1609,7 @@
 #define GEN11_VECS0_VECS1_INTR_MASK		_MMIO(0x1900d0)
 #define GEN12_VECS2_VECS3_INTR_MASK		_MMIO(0x1900d4)
 #define GEN11_GUC_SG_INTR_MASK			_MMIO(0x1900e8)
+#define MTL_GUC_MGUC_INTR_MASK			_MMIO(0x1900e8) /* MTL+ */
 #define GEN11_GPM_WGBOXPERF_INTR_MASK		_MMIO(0x1900ec)
 #define GEN11_CRYPTO_RSVD_INTR_MASK		_MMIO(0x1900f0)
 #define GEN11_GUNIT_CSME_INTR_MASK		_MMIO(0x1900f4)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 13d49048c568..52aede324788 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -98,6 +98,8 @@ static void gen9_enable_guc_interrupts(struct intel_guc *guc)
 		     gt->pm_guc_events);
 	gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
 	spin_unlock_irq(gt->irq_lock);
+
+	guc->interrupts.enabled = true;
 }
 
 static void gen9_disable_guc_interrupts(struct intel_guc *guc)
@@ -105,6 +107,7 @@ static void gen9_disable_guc_interrupts(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 
 	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
+	guc->interrupts.enabled = false;
 
 	spin_lock_irq(gt->irq_lock);
 
@@ -116,39 +119,39 @@ static void gen9_disable_guc_interrupts(struct intel_guc *guc)
 	gen9_reset_guc_interrupts(guc);
 }
 
+static bool __gen11_reset_guc_interrupts(struct intel_gt *gt)
+{
+	u32 irq = gt->type == GT_MEDIA ? MTL_MGUC : GEN11_GUC;
+
+	lockdep_assert_held(gt->irq_lock);
+	return gen11_gt_reset_one_iir(gt, 0, irq);
+}
+
 static void gen11_reset_guc_interrupts(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
 	spin_lock_irq(gt->irq_lock);
-	gen11_gt_reset_one_iir(gt, 0, GEN11_GUC);
+	__gen11_reset_guc_interrupts(gt);
 	spin_unlock_irq(gt->irq_lock);
 }
 
 static void gen11_enable_guc_interrupts(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	u32 events = REG_FIELD_PREP(ENGINE1_MASK, GUC_INTR_GUC2HOST);
 
 	spin_lock_irq(gt->irq_lock);
-	WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GUC));
-	intel_uncore_write(gt->uncore,
-			   GEN11_GUC_SG_INTR_ENABLE, events);
-	intel_uncore_write(gt->uncore,
-			   GEN11_GUC_SG_INTR_MASK, ~events);
+	__gen11_reset_guc_interrupts(gt);
 	spin_unlock_irq(gt->irq_lock);
+
+	guc->interrupts.enabled = true;
 }
 
 static void gen11_disable_guc_interrupts(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
-	spin_lock_irq(gt->irq_lock);
-
-	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~0);
-	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
-
-	spin_unlock_irq(gt->irq_lock);
+	guc->interrupts.enabled = false;
 	intel_synchronize_irq(gt->i915);
 
 	gen11_reset_guc_interrupts(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 357873ef692b..1bb3f9829286 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -78,6 +78,7 @@ struct intel_guc {
 
 	/** @interrupts: pointers to GuC interrupt-managing functions. */
 	struct {
+		bool enabled;
 		void (*reset)(struct intel_guc *guc);
 		void (*enable)(struct intel_guc *guc);
 		void (*disable)(struct intel_guc *guc);
@@ -330,9 +331,11 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 	return err;
 }
 
+/* Only call this from the interrupt handler code */
 static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
 {
-	intel_guc_ct_event_handler(&guc->ct);
+	if (guc->interrupts.enabled)
+		intel_guc_ct_event_handler(&guc->ct);
 }
 
 /* GuC addresses above GUC_GGTT_TOP also don't map through the GTT */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4cd8a787f9e5..1d28286e6f06 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -636,8 +636,10 @@ void intel_uc_runtime_suspend(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
-	if (!intel_guc_is_ready(guc))
+	if (!intel_guc_is_ready(guc)) {
+		guc->interrupts.enabled = false;
 		return;
+	}
 
 	/*
 	 * Wait for any outstanding CTB before tearing down communication /w the
@@ -657,8 +659,10 @@ void intel_uc_suspend(struct intel_uc *uc)
 	intel_wakeref_t wakeref;
 	int err;
 
-	if (!intel_guc_is_ready(guc))
+	if (!intel_guc_is_ready(guc)) {
+		guc->interrupts.enabled = false;
 		return;
+	}
 
 	with_intel_runtime_pm(&uc_to_gt(uc)->i915->runtime_pm, wakeref) {
 		err = intel_guc_suspend(guc);
-- 
2.37.3

