Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5493C2B2A88
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2D46E8C5;
	Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0386E884
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:40 +0000 (UTC)
IronPort-SDR: AZJZg4PtILL4fEx4xRJcZ+yNS6lfME+w0Uf2M82zNTjCNZ7VKbwRWwU4y2tqJGhVqqtbsNxQuX
 9EJYzhB5vvYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="158332213"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="158332213"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: iKT1IHetbQLimeRXcAVt3qAU5yA7dbYyxr2Fr19ecYW+RQbk2BVLb/mEBmZecJST/IwNBpjbW0
 C7QW3sjqF4pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524751"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:37 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:12 -0800
Message-Id: <20201114014537.25495-2-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 02/27] drm/i915/pxp: Enable PXP irq worker and
 callback stub
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Create the irq worker that serves as callback handler, those
callback stubs should be called while the hardware key teardown
occurs.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c |  4 ++
 drivers/gpu/drm/i915/i915_reg.h        |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c   | 95 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h   | 22 ++++++
 4 files changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 257063a57101..d64013d0afb5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -13,6 +13,7 @@
 #include "intel_gt_irq.h"
 #include "intel_uncore.h"
 #include "intel_rps.h"
+#include "pxp/intel_pxp.h"
 
 static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 {
@@ -106,6 +107,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 	if (instance == OTHER_GTPM_INSTANCE)
 		return gen11_rps_irq_handler(&gt->rps, iir);
 
+	if (instance == OTHER_KCR_INSTANCE)
+		return intel_pxp_irq_handler(gt, iir);
+
 	WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
 		  instance, iir);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7ea70b7ffcc6..faf6b06145fa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7941,6 +7941,7 @@ enum {
 /* irq instances for OTHER_CLASS */
 #define OTHER_GUC_INSTANCE	0
 #define OTHER_GTPM_INSTANCE	1
+#define OTHER_KCR_INSTANCE	4
 
 #define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index a469c55e3e54..d98bff4a0fde 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,15 +6,110 @@
 #include "i915_drv.h"
 #include "intel_pxp.h"
 
+static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
+{
+	WARN_ON(INTEL_GEN(i915) < 11);
+
+	/* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
+	intel_uncore_write(&i915->uncore, GEN11_CRYPTO_RSVD_INTR_MASK, mask << 16);
+}
+
+static void intel_pxp_unmask_irq(struct intel_gt *gt)
+{
+	lockdep_assert_held(&gt->irq_lock);
+
+	intel_pxp_write_irq_mask_reg(gt->i915, 0);
+}
+
+static void intel_pxp_mask_irq(struct intel_gt *gt, u32 mask)
+{
+	lockdep_assert_held(&gt->irq_lock);
+
+	intel_pxp_write_irq_mask_reg(gt->i915, mask);
+}
+
+static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
+{
+	drm_dbg(&i915->drm, "%s was called\n", __func__);
+
+	return 0;
+}
+
+static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private *i915)
+{
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	return 0;
+}
+
+static void intel_pxp_irq_work(struct work_struct *work)
+{
+	struct intel_pxp *pxp_ptr = container_of(work, typeof(*pxp_ptr), irq_work);
+	struct drm_i915_private *i915 = container_of(pxp_ptr, typeof(*i915), pxp);
+	u32 events = 0;
+
+	spin_lock_irq(&i915->gt.irq_lock);
+	events = fetch_and_zero(&pxp_ptr->current_events);
+	spin_unlock_irq(&i915->gt.irq_lock);
+
+	drm_dbg(&i915->drm, "%s was called with events=[%d]\n", __func__, events);
+
+	if (events & PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED ||
+	    events & PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ)
+		intel_pxp_teardown_required_callback(i915);
+
+	if (events & PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE)
+		intel_pxp_global_terminate_complete_callback(i915);
+
+	spin_lock_irq(&i915->gt.irq_lock);
+	intel_pxp_unmask_irq(&i915->gt);
+	spin_unlock_irq(&i915->gt.irq_lock);
+}
+
 int intel_pxp_init(struct drm_i915_private *i915)
 {
 	int ret;
 
 	drm_info(&i915->drm, "i915_pxp_init\n");
 
+	INIT_WORK(&i915->pxp.irq_work, intel_pxp_irq_work);
+
+	i915->pxp.handled_irr = (PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED |
+				 PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ |
+				 PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE);
+
 	return ret;
 }
 
 void intel_pxp_uninit(struct drm_i915_private *i915)
 {
 }
+
+/**
+ * intel_pxp_irq_handler - Proxies KCR interrupts to PXP.
+ * @gt: valid GT instance
+ * @iir: GT interrupt vector associated with the interrupt
+ *
+ * Dispatches each vector element into an IRQ to PXP.
+ */
+void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	const u32 events = iir & i915->pxp.handled_irr;
+
+	drm_dbg(&i915->drm, "%s was called with iir=[0x%04x]\n", __func__, iir);
+
+	lockdep_assert_held(&gt->irq_lock);
+
+	if (unlikely(!events)) {
+		drm_dbg(&i915->drm, "%s returned due to iir=[0x%04x]\n", __func__, iir);
+		goto end;
+	}
+
+	intel_pxp_mask_irq(gt, i915->pxp.handled_irr);
+
+	i915->pxp.current_events |= events;
+	schedule_work(&i915->pxp.irq_work);
+end:
+	return;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 578f1126bada..620774fc32e2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -8,14 +8,36 @@
 
 #include <drm/drm_file.h>
 
+#define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1)
+#define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
+#define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
+
+enum pxp_sm_session_req {
+	/* Request KMD to allocate session id and move it to IN INIT */
+	PXP_SM_REQ_SESSION_ID_INIT = 0x0,
+	/* Inform KMD that UMD has completed the initialization */
+	PXP_SM_REQ_SESSION_IN_PLAY,
+	/* Request KMD to terminate the session */
+	PXP_SM_REQ_SESSION_TERMINATE
+};
+
 struct pxp_context;
 
 struct intel_pxp {
+	struct work_struct irq_work;
+	u32 handled_irr;
+	u32 current_events;
+
 	struct pxp_context *r0ctx;
 };
 
+struct intel_gt;
 struct drm_i915_private;
 
+void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
+int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
+int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
+
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_uninit(struct drm_i915_private *i915);
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
