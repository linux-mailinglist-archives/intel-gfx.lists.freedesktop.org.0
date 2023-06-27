Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD51473F919
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 11:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D9C10E2CC;
	Tue, 27 Jun 2023 09:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E79810E2CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 09:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687859509; x=1719395509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RtKaQPvaVUAZFVk0vavAkN4kO3VwrF38WxpXETN6LII=;
 b=mwr/m5oZrjUfnRL7Nc97ExjfEgcTo2COe7+mLsGHUM2bzgu8wL2VV/MW
 Cd6O45eo+J/0DufgtV0CuYgUkZm9ETmstqs9Vrxo+sRsVNyxn4538GVt6
 X23JlQaBUJ0CjF6i8wHYCCjU6+Qij7An0zCnZkyE9dCkCKPhyrVnrZwe3
 qcV0Ey921wSkFya6Wp5A6LI1tTyd5cD3TNagnJEQI9RiSRNthrHsyDZWO
 PkxeZjHl5k30R8XFVlSQAQ+eYtdNYWOWDW0DkA0cs03EgOYqqh49N3q43
 uz9VrNL2rbs0fP/ZsjId8vX0qkldatx9ZMXq35TuCRnK1zpCgNh81D2Z2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341118196"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="341118196"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:51:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666637659"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666637659"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:51:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 12:51:28 +0300
Message-Id: <20230627095128.208071-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uncore: add intel_uncore_regs() helper
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper for accessing uncore->regs instead of doing it
directly. This will help display code reuse with the xe driver.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

The other attempt failed, here's another one.

https://lore.kernel.org/r/87leg5tk82.fsf@intel.com
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  4 ++--
 .../drm/i915/gt/intel_execlists_submission.c  |  6 +++---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_sa_media.c      |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 20 +++++++++----------
 drivers/gpu/drm/i915/intel_uncore.h           |  5 +++++
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  2 +-
 7 files changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index ae98c99c5378..e6f172cc665a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1149,7 +1149,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
-	void __iomem * const regs = i915->uncore.regs;
+	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
@@ -1170,7 +1170,7 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
 {
-	void __iomem * const regs = i915->uncore.regs;
+	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 2ebd937f3b4c..d85b5a6d981f 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3556,16 +3556,16 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	lrc_init_wa_ctx(engine);
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
-		execlists->submit_reg = uncore->regs +
+		execlists->submit_reg = intel_uncore_regs(uncore) +
 			i915_mmio_reg_offset(RING_EXECLIST_SQ_CONTENTS(base));
-		execlists->ctrl_reg = uncore->regs +
+		execlists->ctrl_reg = intel_uncore_regs(uncore) +
 			i915_mmio_reg_offset(RING_EXECLIST_CONTROL(base));
 
 		engine->fw_domain = intel_uncore_forcewake_for_reg(engine->uncore,
 				    RING_EXECLIST_CONTROL(engine->mmio_base),
 				    FW_REG_WRITE);
 	} else {
-		execlists->submit_reg = uncore->regs +
+		execlists->submit_reg = intel_uncore_regs(uncore) +
 			i915_mmio_reg_offset(RING_ELSP(base));
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 62fd00c9e519..77fb57223465 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -31,7 +31,7 @@ static u32
 gen11_gt_engine_identity(struct intel_gt *gt,
 			 const unsigned int bank, const unsigned int bit)
 {
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 timeout_ts;
 	u32 ident;
 
@@ -148,7 +148,7 @@ gen11_gt_identity_handler(struct intel_gt *gt, const u32 identity)
 static void
 gen11_gt_bank_handler(struct intel_gt *gt, const unsigned int bank)
 {
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	unsigned long intr_dw;
 	unsigned int bit;
 
@@ -183,7 +183,7 @@ void gen11_gt_irq_handler(struct intel_gt *gt, const u32 master_ctl)
 bool gen11_gt_reset_one_iir(struct intel_gt *gt,
 			    const unsigned int bank, const unsigned int bit)
 {
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 dw;
 
 	lockdep_assert_held(gt->irq_lock);
@@ -404,7 +404,7 @@ void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 
 void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
 {
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 iir;
 
 	if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
index e8f3d18c12b8..8c1dbcbcbc4f 100644
--- a/drivers/gpu/drm/i915/gt/intel_sa_media.c
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
@@ -29,7 +29,7 @@ int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
 	 * Standalone media shares the general MMIO space with the primary
 	 * GT.  We'll re-use the primary GT's mapping.
 	 */
-	uncore->regs = i915->uncore.regs;
+	uncore->regs = intel_uncore_regs(&i915->uncore);
 	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))
 		return -EIO;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 82fbabcdd7a5..512fc0ef94a4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -423,7 +423,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 static irqreturn_t ilk_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	void __iomem * const regs = i915->uncore.regs;
+	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
 	irqreturn_t ret = IRQ_NONE;
 
@@ -511,7 +511,7 @@ static inline void gen8_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen8_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	void __iomem * const regs = dev_priv->uncore.regs;
+	void __iomem * const regs = intel_uncore_regs(&dev_priv->uncore);
 	u32 master_ctl;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -561,7 +561,7 @@ static inline void gen11_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen11_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	void __iomem * const regs = i915->uncore.regs;
+	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	struct intel_gt *gt = to_gt(i915);
 	u32 master_ctl;
 	u32 gu_misc_iir;
@@ -619,7 +619,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private * const i915 = arg;
 	struct intel_gt *gt = to_gt(i915);
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 master_tile_ctl, master_ctl;
 	u32 gu_misc_iir;
 
@@ -711,7 +711,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen8_master_intr_disable(uncore->regs);
+	gen8_master_intr_disable(intel_uncore_regs(uncore));
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
@@ -727,7 +727,7 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 
-	gen11_master_intr_disable(dev_priv->uncore.regs);
+	gen11_master_intr_disable(intel_uncore_regs(&dev_priv->uncore));
 
 	gen11_gt_irq_reset(gt);
 	gen11_display_irq_reset(dev_priv);
@@ -742,7 +742,7 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_gt *gt;
 	unsigned int i;
 
-	dg1_master_intr_disable(dev_priv->uncore.regs);
+	dg1_master_intr_disable(intel_uncore_regs(&dev_priv->uncore));
 
 	for_each_gt(gt, dev_priv, i)
 		gen11_gt_irq_reset(gt);
@@ -836,7 +836,7 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 	gen8_de_irq_postinstall(dev_priv);
 
-	gen8_master_intr_enable(dev_priv->uncore.regs);
+	gen8_master_intr_enable(intel_uncore_regs(&dev_priv->uncore));
 }
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -853,7 +853,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
 
-	gen11_master_intr_enable(uncore->regs);
+	gen11_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
 }
 
@@ -880,7 +880,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 				   GEN11_DISPLAY_IRQ_ENABLE);
 	}
 
-	dg1_master_intr_enable(uncore->regs);
+	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 9ea1f4864a3a..f419c311a0de 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -496,6 +496,11 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 	return (reg_val & mask) != expected_val ? -EINVAL : 0;
 }
 
+static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
+{
+	return uncore->regs;
+}
+
 /*
  * The raw_reg_{read,write} macros are intended as a micro-optimization for
  * interrupt handlers so that the pointer indirection on uncore->regs can
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index e4281508d580..03ea75cd84dd 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -210,7 +210,7 @@ static int live_forcewake_ops(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		i915_reg_t mmio = _MMIO(engine->mmio_base + r->offset);
-		u32 __iomem *reg = uncore->regs + engine->mmio_base + r->offset;
+		u32 __iomem *reg = intel_uncore_regs(uncore) + engine->mmio_base + r->offset;
 		enum forcewake_domains fw_domains;
 		u32 val;
 
-- 
2.39.2

