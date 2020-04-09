Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F201A2D23
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 02:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D386EB28;
	Thu,  9 Apr 2020 00:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E826B6EB26
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 00:57:27 +0000 (UTC)
IronPort-SDR: v0Po1Bf9vi5Ibob7hbrV3jdqsqKahA9Q62KbOFl84G/n51Pz5v5HAmH2bYk86TAVSQEp3stG6q
 f9r6nJrqj+Uw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 17:57:27 -0700
IronPort-SDR: QsTdrQak+D/+S7n2bPR7hDn3GEbDaWRB4RJfbcCdaBTG28S+59y2xit8IYlnHN79kPTRXXbMsd
 rplKzMm1Vung==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; d="scan'208";a="244185370"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2020 17:57:27 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 17:56:56 -0700
Message-Id: <20200409005658.12262-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
References: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/guc: drop gt.pm_guc_events
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

We always set it to the same value, so there is no need to actually have
a variable for it and we can just use the value directly.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h   | 2 --
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h | 3 +++
 drivers/gpu/drm/i915/i915_irq.c            | 4 ----
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 96890dd12b5f..81691cf1d411 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -85,8 +85,6 @@ struct intel_gt {
 	u32 pm_ier;
 	u32 pm_imr;
 
-	u32 pm_guc_events;
-
 	struct intel_engine_cs *engine[I915_NUM_ENGINES];
 	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
 					    [MAX_ENGINE_INSTANCE + 1];
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5134d544bf4c..eadea9d47e31 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -85,7 +85,7 @@ static void gen9_reset_guc_interrupts(struct intel_guc *guc)
 	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
 
 	spin_lock_irq(&gt->irq_lock);
-	gen6_gt_pm_reset_iir(gt, gt->pm_guc_events);
+	gen6_gt_pm_reset_iir(gt, GEN9_GUC_INTR_BIT(GUC2HOST));
 	spin_unlock_irq(&gt->irq_lock);
 }
 
@@ -98,9 +98,9 @@ static void gen9_enable_guc_interrupts(struct intel_guc *guc)
 	spin_lock_irq(&gt->irq_lock);
 	if (!guc->interrupts.enabled) {
 		WARN_ON_ONCE(intel_uncore_read(gt->uncore, GEN8_GT_IIR(2)) &
-			     gt->pm_guc_events);
+			     GEN9_GUC_INTR_BIT(GUC2HOST));
 		guc->interrupts.enabled = true;
-		gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
+		gen6_gt_pm_enable_irq(gt, GEN9_GUC_INTR_BIT(GUC2HOST));
 	}
 	spin_unlock_irq(&gt->irq_lock);
 }
@@ -114,7 +114,7 @@ static void gen9_disable_guc_interrupts(struct intel_guc *guc)
 	spin_lock_irq(&gt->irq_lock);
 	guc->interrupts.enabled = false;
 
-	gen6_gt_pm_disable_irq(gt, gt->pm_guc_events);
+	gen6_gt_pm_disable_irq(gt, GEN9_GUC_INTR_BIT(GUC2HOST));
 
 	spin_unlock_irq(&gt->irq_lock);
 	intel_synchronize_irq(gt->i915);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index 1949346e714e..ae785a757316 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -143,4 +143,7 @@ struct guc_doorbell_info {
 #define GUC_INTR_SW_INT_1		BIT(1)
 #define GUC_INTR_SW_INT_0		BIT(0)
 
+/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
+#define GEN9_GUC_INTR_BIT(x) (GUC_INTR_##x << 16)
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1502ab44f1a5..a224a05b0551 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3942,10 +3942,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	for (i = 0; i < MAX_L3_SLICES; ++i)
 		dev_priv->l3_parity.remap_info[i] = NULL;
 
-	/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
-	if (HAS_GT_UC(dev_priv) && INTEL_GEN(dev_priv) < 11)
-		dev_priv->gt.pm_guc_events = GUC_INTR_GUC2HOST << 16;
-
 	dev->vblank_disable_immediate = true;
 
 	/* Most platforms treat the display irq block as an always-on
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
