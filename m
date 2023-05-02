Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CCC6F487C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5491F10E5AA;
	Tue,  2 May 2023 16:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5AC10E183;
 Tue,  2 May 2023 16:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683045558; x=1714581558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T/ZRNjUNceNOqoXwP8jwJDNLWPQ7zIA5JbsX6lph4pM=;
 b=Occh7nrNsbXZoD4SACfCpJ3nYc2gcfOkR7ZlaHoD9YNjuhbLBaGAEPEU
 Fym+7SsJklqMeL1KLQVhUPyckufLX73TPvzK8drn7avXBqDim80m6msTz
 jdKzsITPuYQGReGbPi0Lghg9x31YiCE+ciaHQQnqpH0ZgDSJIU+KqQhxw
 HrHmaq5D5r6AEeg+DvuxfXyG7NqGZ6hp9YFIf171TJKJufU8QpB323p/E
 i1we/0ZM88+vm+trSfyhJqJDw07WONNM4tA6nrQFTAJvVWUxSif3VXcNd
 DZ/LFBO/JWfW9dI7eTyU77xAWfla/zfH1odIh+MEiWF8VNDicpnl//wvY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411595966"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="411595966"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="1026160929"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="1026160929"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:10 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 09:38:54 -0700
Message-Id: <20230502163854.317653-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
References: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/gsc: add support for GSC proxy
 interrupt
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GSC notifies us of a proxy request via the HECI2 interrupt. The
interrupt must be enabled both in the HECI layer and in our usual gt irq
programming; for the latter, the interrupt is enabled via the same enable
register as the GSC CS, but it does have its own mask register. When the
interrupt is received, we also need to de-assert it in both layers.

The handling of the proxy request is deferred to the same worker that we
use for GSC load. New flags have been added to distinguish between the
init case and the proxy interrupt.

v2: Make sure not to set the reset bit when enabling/disabling the GSC
interrupts, fix defines (Alan)

v3: rebase on proxy status register check

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       | 22 ++++++-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h      |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c | 44 +++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c    | 61 ++++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h    |  3 +
 6 files changed, 112 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index c0f3ff4746ad..95e59ed6651d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -16,6 +16,7 @@
 #include "intel_uncore.h"
 #include "intel_rps.h"
 #include "pxp/intel_pxp_irq.h"
+#include "uc/intel_gsc_proxy.h"
 
 static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 {
@@ -82,6 +83,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 	if (instance == OTHER_GSC_INSTANCE)
 		return intel_gsc_irq_handler(gt, iir);
 
+	if (instance == OTHER_GSC_HECI_2_INSTANCE)
+		return intel_gsc_proxy_irq_handler(&gt->uc.gsc, iir);
+
 	WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
 		  instance, iir);
 }
@@ -101,6 +105,8 @@ static struct intel_gt *pick_gt(struct intel_gt *gt, u8 class, u8 instance)
 	case VIDEO_ENHANCEMENT_CLASS:
 		return media_gt;
 	case OTHER_CLASS:
+		if (instance == OTHER_GSC_HECI_2_INSTANCE)
+			return media_gt;
 		if (instance == OTHER_GSC_INSTANCE && HAS_ENGINE(media_gt, GSC0))
 			return media_gt;
 		fallthrough;
@@ -257,6 +263,7 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	u32 irqs = GT_RENDER_USER_INTERRUPT;
 	u32 guc_mask = intel_uc_wants_guc(&gt->uc) ? GUC_INTR_GUC2HOST : 0;
 	u32 gsc_mask = 0;
+	u32 heci_mask = 0;
 	u32 dmask;
 	u32 smask;
 
@@ -268,10 +275,16 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	dmask = irqs << 16 | irqs;
 	smask = irqs << 16;
 
-	if (HAS_ENGINE(gt, GSC0))
+	if (HAS_ENGINE(gt, GSC0)) {
+		/*
+		 * the heci2 interrupt is enabled via the same register as the
+		 * GSC interrupt, but it has its own mask register.
+		 */
 		gsc_mask = irqs;
-	else if (HAS_HECI_GSC(gt->i915))
+		heci_mask = GSC_IRQ_INTF(1); /* HECI2 IRQ for SW Proxy*/
+	} else if (HAS_HECI_GSC(gt->i915)) {
 		gsc_mask = GSC_IRQ_INTF(0) | GSC_IRQ_INTF(1);
+	}
 
 	BUILD_BUG_ON(irqs & 0xffff0000);
 
@@ -281,7 +294,7 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	if (CCS_MASK(gt))
 		intel_uncore_write(uncore, GEN12_CCS_RSVD_INTR_ENABLE, smask);
 	if (gsc_mask)
-		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_ENABLE, gsc_mask);
+		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_ENABLE, gsc_mask | heci_mask);
 
 	/* Unmask irqs on RCS, BCS, VCS and VECS engines. */
 	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~smask);
@@ -309,6 +322,9 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 		intel_uncore_write(uncore, GEN12_CCS2_CCS3_INTR_MASK, ~dmask);
 	if (gsc_mask)
 		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_MASK, ~gsc_mask);
+	if (heci_mask)
+		intel_uncore_write(uncore, GEN12_HECI2_RSVD_INTR_MASK,
+				   ~REG_FIELD_PREP(ENGINE1_MASK, heci_mask));
 
 	if (guc_mask) {
 		/* the enable bit is common for both GTs but the masks are separate */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index af80d2fe739b..b8a39c219b60 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1596,6 +1596,7 @@
 
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
 #define   GEN11_CSME				(31)
+#define   GEN12_HECI_2				(30)
 #define   GEN11_GUNIT				(28)
 #define   GEN11_GUC				(25)
 #define   MTL_MGUC				(24)
@@ -1637,6 +1638,7 @@
 /* irq instances for OTHER_CLASS */
 #define   OTHER_GUC_INSTANCE			0
 #define   OTHER_GTPM_INSTANCE			1
+#define   OTHER_GSC_HECI_2_INSTANCE		3
 #define   OTHER_KCR_INSTANCE			4
 #define   OTHER_GSC_INSTANCE			6
 #define   OTHER_MEDIA_GUC_INSTANCE		16
@@ -1652,6 +1654,7 @@
 #define GEN12_VCS6_VCS7_INTR_MASK		_MMIO(0x1900b4)
 #define GEN11_VECS0_VECS1_INTR_MASK		_MMIO(0x1900d0)
 #define GEN12_VECS2_VECS3_INTR_MASK		_MMIO(0x1900d4)
+#define GEN12_HECI2_RSVD_INTR_MASK		_MMIO(0x1900e4)
 #define GEN11_GUC_SG_INTR_MASK			_MMIO(0x1900e8)
 #define MTL_GUC_MGUC_INTR_MASK			_MMIO(0x1900e8) /* MTL+ */
 #define GEN11_GPM_WGBOXPERF_INTR_MASK		_MMIO(0x1900ec)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index 0513ac8d03ec..f41976758ae3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -14,6 +14,7 @@
 #include "intel_gsc_uc.h"
 #include "intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 
 /*
  * GSC proxy:
@@ -274,17 +275,49 @@ int intel_gsc_proxy_request_handler(struct intel_gsc_uc *gsc)
 		gt_err(gt, "GSC proxy worker called without the component being bound!\n");
 		err = -EIO;
 	} else {
+		/*
+		 * write the status bit to clear it and allow new proxy
+		 * interrupts to be generated while we handle the current
+		 * request, but be sure not to write the reset bit
+		 */
+		intel_uncore_rmw(gt->uncore, HECI_H_CSR(MTL_GSC_HECI2_BASE),
+				 HECI_H_CSR_RST, HECI_H_CSR_IS);
 		err = proxy_query(gsc);
 	}
 	mutex_unlock(&gsc->proxy.mutex);
 	return err;
 }
 
+void intel_gsc_proxy_irq_handler(struct intel_gsc_uc *gsc, u32 iir)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+
+	if (unlikely(!iir))
+		return;
+
+	lockdep_assert_held(gt->irq_lock);
+
+	if (!gsc->proxy.component) {
+		gt_err(gt, "GSC proxy irq received without the component being bound!\n");
+		return;
+	}
+
+	gsc->gsc_work_actions |= GSC_ACTION_SW_PROXY;
+	queue_work(gsc->wq, &gsc->work);
+}
+
 static int i915_gsc_proxy_component_bind(struct device *i915_kdev,
 					 struct device *mei_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_gsc_uc *gsc = &i915->media_gt->uc.gsc;
+	struct intel_gt *gt = i915->media_gt;
+	struct intel_gsc_uc *gsc = &gt->uc.gsc;
+	intel_wakeref_t wakeref;
+
+	/* enable HECI2 IRQs */
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		intel_uncore_rmw(gt->uncore, HECI_H_CSR(MTL_GSC_HECI2_BASE),
+				 HECI_H_CSR_RST, HECI_H_CSR_IE);
 
 	mutex_lock(&gsc->proxy.mutex);
 	gsc->proxy.component = data;
@@ -298,11 +331,18 @@ static void i915_gsc_proxy_component_unbind(struct device *i915_kdev,
 					    struct device *mei_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_gsc_uc *gsc = &i915->media_gt->uc.gsc;
+	struct intel_gt *gt = i915->media_gt;
+	struct intel_gsc_uc *gsc = &gt->uc.gsc;
+	intel_wakeref_t wakeref;
 
 	mutex_lock(&gsc->proxy.mutex);
 	gsc->proxy.component = NULL;
 	mutex_unlock(&gsc->proxy.mutex);
+
+	/* disable HECI2 IRQs */
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		intel_uncore_rmw(gt->uncore, HECI_H_CSR(MTL_GSC_HECI2_BASE),
+				 HECI_H_CSR_IE | HECI_H_CSR_RST, 0);
 }
 
 static const struct component_ops i915_gsc_proxy_component_ops = {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h
index 1f27cb6e62ba..fc5aef10bfb4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h
@@ -13,5 +13,6 @@ struct intel_gsc_uc;
 int intel_gsc_proxy_init(struct intel_gsc_uc *gsc);
 void intel_gsc_proxy_fini(struct intel_gsc_uc *gsc);
 int intel_gsc_proxy_request_handler(struct intel_gsc_uc *gsc);
+void intel_gsc_proxy_irq_handler(struct intel_gsc_uc *gsc, u32 iir);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index b234bb585ad3..fb0984f875f9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -17,28 +17,49 @@ static void gsc_work(struct work_struct *work)
 	struct intel_gsc_uc *gsc = container_of(work, typeof(*gsc), work);
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 	intel_wakeref_t wakeref;
+	u32 actions;
 	int ret;
 
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 
-	ret = intel_gsc_uc_fw_upload(gsc);
-	if (ret)
-		goto out_put;
-
-	ret = intel_gsc_proxy_request_handler(gsc);
-	if (ret)
-		goto out_put;
+	spin_lock_irq(gt->irq_lock);
+	actions = gsc->gsc_work_actions;
+	gsc->gsc_work_actions = 0;
+	spin_unlock_irq(gt->irq_lock);
+
+	if (actions & GSC_ACTION_FW_LOAD) {
+		ret = intel_gsc_uc_fw_upload(gsc);
+		if (ret == -EEXIST) /* skip proxy if not a new load */
+			actions &= ~GSC_ACTION_FW_LOAD;
+		else if (ret)
+			goto out_put;
+	}
 
-	/*
-	 * If there is a proxy establishment error, the GSC might still
-	 * complete the request handling cleanly, so we need to check the
-	 * status register to check if the proxy init was actually successful
-	 */
-	if (intel_gsc_uc_fw_proxy_init_done(gsc)) {
-		drm_dbg(&gt->i915->drm, "GSC Proxy initialized\n");
-		intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_RUNNING);
-	} else {
-		drm_err(&gt->i915->drm, "GSC status reports proxy init not complete\n");
+	if (actions & (GSC_ACTION_FW_LOAD | GSC_ACTION_SW_PROXY)) {
+		if (!intel_gsc_uc_fw_init_done(gsc)) {
+			gt_err(gt, "Proxy request received with GSC not loaded!\n");
+			goto out_put;
+		}
+
+		ret = intel_gsc_proxy_request_handler(gsc);
+		if (ret)
+			goto out_put;
+
+		/* mark the GSC FW init as done the first time we run this */
+		if (actions & GSC_ACTION_FW_LOAD) {
+			/*
+			 * If there is a proxy establishment error, the GSC might still
+			 * complete the request handling cleanly, so we need to check the
+			 * status register to check if the proxy init was actually successful
+			 */
+			if (intel_gsc_uc_fw_proxy_init_done(gsc)) {
+				drm_dbg(&gt->i915->drm, "GSC Proxy initialized\n");
+				intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_RUNNING);
+			} else {
+				drm_err(&gt->i915->drm,
+					"GSC status reports proxy init not complete\n");
+			}
+		}
 	}
 
 out_put:
@@ -186,11 +207,17 @@ void intel_gsc_uc_resume(struct intel_gsc_uc *gsc)
 
 void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
 {
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+
 	if (!intel_uc_fw_is_loadable(&gsc->fw))
 		return;
 
 	if (intel_gsc_uc_fw_init_done(gsc))
 		return;
 
+	spin_lock_irq(gt->irq_lock);
+	gsc->gsc_work_actions |= GSC_ACTION_FW_LOAD;
+	spin_unlock_irq(gt->irq_lock);
+
 	queue_work(gsc->wq, &gsc->work);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index 023bded10dde..a2a0813b8a76 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -23,6 +23,9 @@ struct intel_gsc_uc {
 	/* for delayed load and proxy handling */
 	struct workqueue_struct *wq;
 	struct work_struct work;
+	u32 gsc_work_actions; /* protected by gt->irq_lock */
+#define GSC_ACTION_FW_LOAD BIT(0)
+#define GSC_ACTION_SW_PROXY BIT(1)
 
 	struct {
 		struct i915_gsc_proxy_component *component;
-- 
2.40.0

