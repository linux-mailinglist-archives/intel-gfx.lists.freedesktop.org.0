Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A85AF8A3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 01:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4297D10E11F;
	Tue,  6 Sep 2022 23:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9295310E0AB;
 Tue,  6 Sep 2022 23:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662508187; x=1694044187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xo0DJc42hAD/VXl7RrCCTSl1r/bBtuU06nlGrjMi4P8=;
 b=Omi7TFmfTxLxA955Rn1F8tIusCS3Tc8jhv1tp5Klvz9G4ChidaJcqACW
 j7GA7Oum07Uh64/4SRgZ52AN0XFGGk1R42LrJBVZWLVuHuQUKRC+bE64Z
 uMIKx0Vai/JspMVyxoGSzvjTz4BYysvcg811xddsg00jl26c5seIN4RJD
 6C7EnZAs2rBHgwT3ABuDOut2hTuOg8LKMUikNnTN2C3MR857qPiAW4Ezd
 gOmCSxyTgZi837RECddjFFSi4udaRt14NERLMuDsvfrBTTaJXiOZlUj1t
 Z5Fd6hkdkU4NqOsCylAXz+NgKjBTGE+bqvZxYMl/FIFulkJn1nFJoTFHV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="283734933"
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="283734933"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="675920344"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 16:49:33 -0700
Message-Id: <20220906234934.3655440-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/14] drm/i915/mtl: Use primary GT's irq
 lock for media GT
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we hook up interrupts (in the next patch), interrupts for the media
GT are still processed as part of the primary GT's interrupt flow.  As
such, we should share the same IRQ lock with the primary GT.  Let's
convert gt->irq_lock into a pointer and just point the media GT's
instance at the same lock the primary GT is using.

v2:
 - Point media's gt->irq_lock at the primary GT lock properly.  (Daniele)
 - Fix jump target for intel_root_gt_init_early errors.  (Daniele)

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  8 +++---
 drivers/gpu/drm/i915/gt/intel_gt.c            | 15 +++++++++--
 drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 16 ++++++------
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |  8 +++---
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 26 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_sa_media.c      |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 24 ++++++++---------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  4 +--
 drivers/gpu/drm/i915/i915_driver.c            |  5 +++-
 drivers/gpu/drm/i915/i915_irq.c               |  4 +--
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  4 +--
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  4 +--
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 14 +++++-----
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  4 +--
 17 files changed, 80 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 41acc285e8bf..6e0122b3dca2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1688,9 +1688,9 @@ bool intel_engine_irq_enable(struct intel_engine_cs *engine)
 		return false;
 
 	/* Caller disables interrupts */
-	spin_lock(&engine->gt->irq_lock);
+	spin_lock(engine->gt->irq_lock);
 	engine->irq_enable(engine);
-	spin_unlock(&engine->gt->irq_lock);
+	spin_unlock(engine->gt->irq_lock);
 
 	return true;
 }
@@ -1701,9 +1701,9 @@ void intel_engine_irq_disable(struct intel_engine_cs *engine)
 		return;
 
 	/* Caller disables interrupts */
-	spin_lock(&engine->gt->irq_lock);
+	spin_lock(engine->gt->irq_lock);
 	engine->irq_disable(engine);
-	spin_unlock(&engine->gt->irq_lock);
+	spin_unlock(engine->gt->irq_lock);
 }
 
 void intel_engines_reset_default_submission(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 9b9c0ea73b7f..b59fb03ed274 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -38,7 +38,7 @@
 
 void intel_gt_common_init_early(struct intel_gt *gt)
 {
-	spin_lock_init(&gt->irq_lock);
+	spin_lock_init(gt->irq_lock);
 
 	INIT_LIST_HEAD(&gt->closed_vma);
 	spin_lock_init(&gt->closed_lock);
@@ -59,14 +59,19 @@ void intel_gt_common_init_early(struct intel_gt *gt)
 }
 
 /* Preliminary initialization of Tile 0 */
-void intel_root_gt_init_early(struct drm_i915_private *i915)
+int intel_root_gt_init_early(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt = to_gt(i915);
 
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
+	gt->irq_lock = drmm_kzalloc(&i915->drm, sizeof(*gt->irq_lock), GFP_KERNEL);
+	if (!gt->irq_lock)
+		return -ENOMEM;
 
 	intel_gt_common_init_early(gt);
+
+	return 0;
 }
 
 static int intel_gt_probe_lmem(struct intel_gt *gt)
@@ -783,12 +788,18 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 
 	if (!gt_is_root(gt)) {
 		struct intel_uncore *uncore;
+		spinlock_t *irq_lock;
 
 		uncore = drmm_kzalloc(&gt->i915->drm, sizeof(*uncore), GFP_KERNEL);
 		if (!uncore)
 			return -ENOMEM;
 
+		irq_lock = drmm_kzalloc(&gt->i915->drm, sizeof(*irq_lock), GFP_KERNEL);
+		if (!irq_lock)
+			return -ENOMEM;
+
 		gt->uncore = uncore;
+		gt->irq_lock = irq_lock;
 
 		intel_gt_common_init_early(gt);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index c9a359f35d0f..2ee582e287c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -45,7 +45,7 @@ static inline struct intel_gt *gsc_to_gt(struct intel_gsc *gsc)
 }
 
 void intel_gt_common_init_early(struct intel_gt *gt);
-void intel_root_gt_init_early(struct drm_i915_private *i915);
+int intel_root_gt_init_early(struct drm_i915_private *i915);
 int intel_gt_assign_ggtt(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
 int __must_check intel_gt_init_hw(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 3a72d4fd0214..0dfd0c42d00d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -29,7 +29,7 @@ gen11_gt_engine_identity(struct intel_gt *gt,
 	u32 timeout_ts;
 	u32 ident;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	raw_reg_write(regs, GEN11_IIR_REG_SELECTOR(bank), BIT(bit));
 
@@ -120,7 +120,7 @@ gen11_gt_bank_handler(struct intel_gt *gt, const unsigned int bank)
 	unsigned long intr_dw;
 	unsigned int bit;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	intr_dw = raw_reg_read(regs, GEN11_GT_INTR_DW(bank));
 
@@ -138,14 +138,14 @@ void gen11_gt_irq_handler(struct intel_gt *gt, const u32 master_ctl)
 {
 	unsigned int bank;
 
-	spin_lock(&gt->irq_lock);
+	spin_lock(gt->irq_lock);
 
 	for (bank = 0; bank < 2; bank++) {
 		if (master_ctl & GEN11_GT_DW_IRQ(bank))
 			gen11_gt_bank_handler(gt, bank);
 	}
 
-	spin_unlock(&gt->irq_lock);
+	spin_unlock(gt->irq_lock);
 }
 
 bool gen11_gt_reset_one_iir(struct intel_gt *gt,
@@ -154,7 +154,7 @@ bool gen11_gt_reset_one_iir(struct intel_gt *gt,
 	void __iomem * const regs = gt->uncore->regs;
 	u32 dw;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	dw = raw_reg_read(regs, GEN11_GT_INTR_DW(bank));
 	if (dw & BIT(bit)) {
@@ -310,9 +310,9 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
 	if (!HAS_L3_DPF(gt->i915))
 		return;
 
-	spin_lock(&gt->irq_lock);
+	spin_lock(gt->irq_lock);
 	gen5_gt_disable_irq(gt, GT_PARITY_ERROR(gt->i915));
-	spin_unlock(&gt->irq_lock);
+	spin_unlock(gt->irq_lock);
 
 	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1)
 		gt->i915->l3_parity.which_slice |= 1 << 1;
@@ -434,7 +434,7 @@ static void gen5_gt_update_irq(struct intel_gt *gt,
 			       u32 interrupt_mask,
 			       u32 enabled_irq_mask)
 {
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	GEM_BUG_ON(enabled_irq_mask & ~interrupt_mask);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
index 11060f5a4c89..52f2a28b2058 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
@@ -37,7 +37,7 @@ static void gen6_gt_pm_update_irq(struct intel_gt *gt,
 
 	WARN_ON(enabled_irq_mask & ~interrupt_mask);
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	new_val = gt->pm_imr;
 	new_val &= ~interrupt_mask;
@@ -64,7 +64,7 @@ void gen6_gt_pm_reset_iir(struct intel_gt *gt, u32 reset_mask)
 	struct intel_uncore *uncore = gt->uncore;
 	i915_reg_t reg = GRAPHICS_VER(gt->i915) >= 8 ? GEN8_GT_IIR(2) : GEN6_PMIIR;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	intel_uncore_write(uncore, reg, reset_mask);
 	intel_uncore_write(uncore, reg, reset_mask);
@@ -92,7 +92,7 @@ static void write_pm_ier(struct intel_gt *gt)
 
 void gen6_gt_pm_enable_irq(struct intel_gt *gt, u32 enable_mask)
 {
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	gt->pm_ier |= enable_mask;
 	write_pm_ier(gt);
@@ -101,7 +101,7 @@ void gen6_gt_pm_enable_irq(struct intel_gt *gt, u32 enable_mask)
 
 void gen6_gt_pm_disable_irq(struct intel_gt *gt, u32 disable_mask)
 {
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	gt->pm_ier &= ~disable_mask;
 	gen6_gt_pm_mask_irq(gt, disable_mask);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 726695936a79..184ee9b11a4d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -163,7 +163,7 @@ struct intel_gt {
 	struct intel_rc6 rc6;
 	struct intel_rps rps;
 
-	spinlock_t irq_lock;
+	spinlock_t *irq_lock;
 	u32 gt_imr;
 	u32 pm_ier;
 	u32 pm_imr;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6fadde4ee7bf..6b86250c31ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -194,9 +194,9 @@ static void rps_enable_interrupts(struct intel_rps *rps)
 
 	rps_reset_ei(rps);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen6_gt_pm_enable_irq(gt, rps->pm_events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	intel_uncore_write(gt->uncore,
 			   GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));
@@ -217,14 +217,14 @@ static void rps_reset_interrupts(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	if (GRAPHICS_VER(gt->i915) >= 11)
 		gen11_rps_reset_interrupts(rps);
 	else
 		gen6_rps_reset_interrupts(rps);
 
 	rps->pm_iir = 0;
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static void rps_disable_interrupts(struct intel_rps *rps)
@@ -234,9 +234,9 @@ static void rps_disable_interrupts(struct intel_rps *rps)
 	intel_uncore_write(gt->uncore,
 			   GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen6_gt_pm_disable_irq(gt, GEN6_PM_RPS_EVENTS);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	intel_synchronize_irq(gt->i915);
 
@@ -1797,10 +1797,10 @@ static void rps_work(struct work_struct *work)
 	int new_freq, adj, min, max;
 	u32 pm_iir = 0;
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	pm_iir = fetch_and_zero(&rps->pm_iir) & rps->pm_events;
 	client_boost = atomic_read(&rps->num_waiters);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	/* Make sure we didn't queue anything we're not going to process. */
 	if (!pm_iir && !client_boost)
@@ -1873,9 +1873,9 @@ static void rps_work(struct work_struct *work)
 	mutex_unlock(&rps->lock);
 
 out:
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen6_gt_pm_unmask_irq(gt, rps->pm_events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
@@ -1883,7 +1883,7 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 	struct intel_gt *gt = rps_to_gt(rps);
 	const u32 events = rps->pm_events & pm_iir;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	if (unlikely(!events))
 		return;
@@ -1903,7 +1903,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 
 	events = pm_iir & rps->pm_events;
 	if (events) {
-		spin_lock(&gt->irq_lock);
+		spin_lock(gt->irq_lock);
 
 		GT_TRACE(gt, "irq events:%x\n", events);
 
@@ -1911,7 +1911,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		rps->pm_iir |= events;
 
 		schedule_work(&rps->work);
-		spin_unlock(&gt->irq_lock);
+		spin_unlock(gt->irq_lock);
 	}
 
 	if (GRAPHICS_VER(gt->i915) >= 8)
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
index 8c5c519457cc..5516e9c363a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_sa_media.c
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
@@ -21,6 +21,7 @@ int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
 
 	uncore->gsi_offset = gsi_offset;
 
+	gt->irq_lock = to_gt(i915)->irq_lock;
 	intel_gt_common_init_early(gt);
 	intel_uncore_init_early(uncore, gt);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 24451d000a6a..bac06e3d6f2c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -82,9 +82,9 @@ static void gen9_reset_guc_interrupts(struct intel_guc *guc)
 
 	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen6_gt_pm_reset_iir(gt, gt->pm_guc_events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static void gen9_enable_guc_interrupts(struct intel_guc *guc)
@@ -93,11 +93,11 @@ static void gen9_enable_guc_interrupts(struct intel_guc *guc)
 
 	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	WARN_ON_ONCE(intel_uncore_read(gt->uncore, GEN8_GT_IIR(2)) &
 		     gt->pm_guc_events);
 	gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static void gen9_disable_guc_interrupts(struct intel_guc *guc)
@@ -106,11 +106,11 @@ static void gen9_disable_guc_interrupts(struct intel_guc *guc)
 
 	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 
 	gen6_gt_pm_disable_irq(gt, gt->pm_guc_events);
 
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 	intel_synchronize_irq(gt->i915);
 
 	gen9_reset_guc_interrupts(guc);
@@ -120,9 +120,9 @@ static void gen11_reset_guc_interrupts(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen11_gt_reset_one_iir(gt, 0, GEN11_GUC);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static void gen11_enable_guc_interrupts(struct intel_guc *guc)
@@ -130,25 +130,25 @@ static void gen11_enable_guc_interrupts(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	u32 events = REG_FIELD_PREP(ENGINE1_MASK, GUC_INTR_GUC2HOST);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GUC));
 	intel_uncore_write(gt->uncore,
 			   GEN11_GUC_SG_INTR_ENABLE, events);
 	intel_uncore_write(gt->uncore,
 			   GEN11_GUC_SG_INTR_MASK, ~events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static void gen11_disable_guc_interrupts(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 
 	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~0);
 	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
 
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 	intel_synchronize_irq(gt->i915);
 
 	gen11_reset_guc_interrupts(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0d56b615bf78..58679a1049b7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1532,8 +1532,8 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 	__reset_guc_busyness_stats(guc);
 
 	/* Flush IRQ handler */
-	spin_lock_irq(&guc_to_gt(guc)->irq_lock);
-	spin_unlock_irq(&guc_to_gt(guc)->irq_lock);
+	spin_lock_irq(guc_to_gt(guc)->irq_lock);
+	spin_unlock_irq(guc_to_gt(guc)->irq_lock);
 
 	guc_flush_submissions(guc);
 	guc_flush_destroyed_contexts(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index f2e7c82985ef..ac59dffc35b5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -245,9 +245,9 @@ static int guc_enable_communication(struct intel_guc *guc)
 	intel_guc_enable_interrupts(guc);
 
 	/* check for CT messages received before we enabled interrupts */
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	intel_guc_ct_event_handler(&guc->ct);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	drm_dbg(&i915->drm, "GuC communication enabled\n");
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e5c3cf5045d4..1da52df07788 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -370,7 +370,9 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_wopcm_init_early(&dev_priv->wopcm);
 
-	intel_root_gt_init_early(dev_priv);
+	ret = intel_root_gt_init_early(dev_priv);
+	if (ret < 0)
+		goto err_rootgt;
 
 	i915_drm_clients_init(&dev_priv->clients, dev_priv);
 
@@ -395,6 +397,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
 	i915_drm_clients_fini(&dev_priv->clients);
+err_rootgt:
 	intel_region_ttm_device_fini(dev_priv);
 err_ttm:
 	vlv_suspend_cleanup(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 515648cd1233..86a42d9e8041 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1104,9 +1104,9 @@ static void ivb_parity_work(struct work_struct *work)
 
 out:
 	drm_WARN_ON(&dev_priv->drm, dev_priv->l3_parity.which_slice);
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	mutex_unlock(&dev_priv->drm.struct_mutex);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 17109c513259..69cdaaddc4a9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -169,11 +169,11 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
 	 * We want to get the same effect as if we received a termination
 	 * interrupt, so just pretend that we did.
 	 */
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	intel_pxp_mark_termination_in_progress(pxp);
 	pxp->session_events |= PXP_TERMINATION_REQUEST;
 	queue_work(system_unbound_wq, &pxp->session_work);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 static bool pxp_component_bound(struct intel_pxp *pxp)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index e888b5124a07..4359e8be4101 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -47,9 +47,9 @@ static int pxp_terminate_set(void *data, u64 val)
 		return -ENODEV;
 
 	/* simulate a termination interrupt */
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	intel_pxp_irq_handler(pxp, GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	if (!wait_for_completion_timeout(&pxp->termination,
 					 msecs_to_jiffies(100)))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 04745f914407..c28be430718a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -25,7 +25,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
 		return;
 
-	lockdep_assert_held(&gt->irq_lock);
+	lockdep_assert_held(gt->irq_lock);
 
 	if (unlikely(!iir))
 		return;
@@ -55,16 +55,16 @@ static inline void __pxp_set_interrupts(struct intel_gt *gt, u32 interrupts)
 
 static inline void pxp_irq_reset(struct intel_gt *gt)
 {
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	gen11_gt_reset_one_iir(gt, 0, GEN11_KCR);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 void intel_pxp_irq_enable(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 
 	if (!pxp->irq_enabled)
 		WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_KCR));
@@ -72,7 +72,7 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
 	__pxp_set_interrupts(gt, GEN12_PXP_INTERRUPTS);
 	pxp->irq_enabled = true;
 
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 }
 
 void intel_pxp_irq_disable(struct intel_pxp *pxp)
@@ -88,12 +88,12 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
 	 */
 	GEM_WARN_ON(intel_pxp_is_active(pxp));
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 
 	pxp->irq_enabled = false;
 	__pxp_set_interrupts(gt, 0);
 
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 	intel_synchronize_irq(gt->i915);
 
 	pxp_irq_reset(gt);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 92b00b4de240..1bb5b5249157 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -144,9 +144,9 @@ void intel_pxp_session_work(struct work_struct *work)
 	intel_wakeref_t wakeref;
 	u32 events = 0;
 
-	spin_lock_irq(&gt->irq_lock);
+	spin_lock_irq(gt->irq_lock);
 	events = fetch_and_zero(&pxp->session_events);
-	spin_unlock_irq(&gt->irq_lock);
+	spin_unlock_irq(gt->irq_lock);
 
 	if (!events)
 		return;
-- 
2.37.2

