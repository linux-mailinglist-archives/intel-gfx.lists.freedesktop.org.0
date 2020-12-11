Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95A02D70E1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 08:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FE46EC73;
	Fri, 11 Dec 2020 07:29:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5183F6EC69
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:46 +0000 (UTC)
IronPort-SDR: tY/fXWRAU1puYs/rQmxQSIoD0B4f7/6+7A1x/HmJZHO5KiPSjvR8h90I6EAZOZVhzXaVtmpDSI
 MSyGctv1uuQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="174506399"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="174506399"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 23:29:44 -0800
IronPort-SDR: snzJDBKFyzWRR3sk08cyvulBSheOjFQCS7myUaQk4VJN/BOReOnilJohZIa+7TU13Xpfhd4ekT
 A1YgFv8d7uDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="409063283"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga001.jf.intel.com with ESMTP; 10 Dec 2020 23:29:44 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 23:28:56 -0800
Message-Id: <20201211072911.27403-7-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201211072911.27403-1-sean.z.huang@intel.com>
References: <20201211072911.27403-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v7 06/21] drm/i915/pxp: Enable PXP irq worker and
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create the irq worker that serves as callback handler, those
callback stubs should be called while the hardware key teardown
occurs.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       |   4 +
 drivers/gpu/drm/i915/i915_reg.h              |   3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 101 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  27 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   1 +
 6 files changed, 137 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 9830342aa6f4..b92072554ab3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -14,6 +14,7 @@
 #include "intel_lrc_reg.h"
 #include "intel_uncore.h"
 #include "intel_rps.h"
+#include "pxp/intel_pxp.h"
 
 static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 {
@@ -107,6 +108,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 	if (instance == OTHER_GTPM_INSTANCE)
 		return gen11_rps_irq_handler(&gt->rps, iir);
 
+	if (instance == OTHER_KCR_INSTANCE)
+		return intel_pxp_irq_handler(&gt->pxp, iir);
+
 	WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
 		  instance, iir);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0023c023f472..1e8dfe435ca8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7944,6 +7944,7 @@ enum {
 /* irq instances for OTHER_CLASS */
 #define OTHER_GUC_INSTANCE	0
 #define OTHER_GTPM_INSTANCE	1
+#define OTHER_KCR_INSTANCE	4
 
 #define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
 
@@ -7966,7 +7967,7 @@ enum {
 #define GEN11_VECS0_VECS1_INTR_MASK	_MMIO(0x1900d0)
 #define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
 #define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
-#define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
+#define GEN11_CRYPTO_INTR_MASK		_MMIO(0x1900f0) /* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
 #define GEN11_GUNIT_CSME_INTR_MASK	_MMIO(0x1900f4)
 
 #define   ENGINE1_MASK			REG_GENMASK(31, 16)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 67bdaeb79b40..9bcb170b34f1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -14,6 +14,70 @@
 /* Setting KCR Init bit is required after system boot */
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
+static void intel_pxp_write_irq_mask_reg(struct intel_gt *gt, u32 mask)
+{
+	lockdep_assert_held(&gt->irq_lock);
+
+	intel_uncore_write(gt->uncore, GEN11_CRYPTO_INTR_MASK, mask << 16);
+}
+
+static int intel_pxp_teardown_required_callback(struct intel_pxp *pxp)
+{
+	int ret;
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	pxp->ctx.global_state_attacked = true;
+
+	mutex_unlock(&pxp->ctx.mutex);
+
+	return ret;
+}
+
+static int intel_pxp_global_terminate_complete_callback(struct intel_pxp *pxp)
+{
+	int ret = 0;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	if (pxp->ctx.global_state_attacked) {
+		pxp->ctx.global_state_attacked = false;
+
+		/* Re-create the arb session after teardown handle complete */
+		ret = intel_pxp_arb_create_session(pxp);
+		if (ret) {
+			drm_err(&gt->i915->drm, "Failed to create arb session\n");
+			goto end;
+		}
+	}
+end:
+	mutex_unlock(&pxp->ctx.mutex);
+	return ret;
+}
+
+static void intel_pxp_irq_work(struct work_struct *work)
+{
+	struct intel_pxp *pxp = container_of(work, typeof(*pxp), irq_work);
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+	u32 events = 0;
+
+	spin_lock_irq(&gt->irq_lock);
+	events = fetch_and_zero(&pxp->current_events);
+	spin_unlock_irq(&gt->irq_lock);
+
+	if (events & PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED ||
+	    events & PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ)
+		intel_pxp_teardown_required_callback(pxp);
+
+	if (events & PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE)
+		intel_pxp_global_terminate_complete_callback(pxp);
+
+	spin_lock_irq(&gt->irq_lock);
+	intel_pxp_write_irq_mask_reg(gt, 0);
+	spin_unlock_irq(&gt->irq_lock);
+}
+
 int intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
@@ -28,6 +92,12 @@ int intel_pxp_init(struct intel_pxp *pxp)
 
 	intel_pxp_tee_component_init(pxp);
 
+	INIT_WORK(&pxp->irq_work, intel_pxp_irq_work);
+
+	pxp->handled_irr = (PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED |
+			    PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ |
+			    PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE);
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 
 	return 0;
@@ -39,3 +109,34 @@ void intel_pxp_uninit(struct intel_pxp *pxp)
 
 	intel_pxp_ctx_fini(&pxp->ctx);
 }
+
+/**
+ * intel_pxp_irq_handler - Proxies KCR interrupts to PXP.
+ * @pxp: pointer to pxp struct
+ * @iir: GT interrupt vector associated with the interrupt
+ *
+ * Dispatches each vector element into an IRQ to PXP.
+ */
+void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
+{
+	struct drm_i915_private *i915;
+	const u32 events = iir & pxp->handled_irr;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	if (!gt || !gt->i915 || INTEL_GEN(i915) < 12)
+		return;
+
+	i915 = gt->i915;
+
+	lockdep_assert_held(&gt->irq_lock);
+
+	if (unlikely(!events)) {
+		drm_err(&i915->drm, "%s returned due to iir=[0x%04x]\n", __func__, iir);
+		return;
+	}
+
+	intel_pxp_write_irq_mask_reg(gt, pxp->handled_irr);
+
+	pxp->current_events |= events;
+	schedule_work(&pxp->irq_work);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 1841a9aa972d..ddcc3faa4ea3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -6,8 +6,13 @@
 #ifndef __INTEL_PXP_H__
 #define __INTEL_PXP_H__
 
+#include <linux/workqueue.h>
 #include "intel_pxp_context.h"
 
+#define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1)
+#define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
+#define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -25,13 +30,35 @@ enum pxp_protection_modes {
 };
 
 struct intel_pxp {
+	struct work_struct irq_work;
+	u32 handled_irr;
+	u32 current_events;
+
 	struct pxp_context ctx;
 };
 
 #ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
+int i915_pxp_teardown_required_callback(struct intel_pxp *pxp);
+int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
+
 int intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_uninit(struct intel_pxp *pxp);
 #else
+static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
+{
+}
+
+static inline int i915_pxp_teardown_required_callback(struct intel_pxp *pxp)
+{
+	return 0;
+}
+
+static inline int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp)
+{
+	return 0;
+}
+
 static inline int intel_pxp_init(struct intel_pxp *pxp)
 {
 	return 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
index 5ffaf55dc7df..d00f4e0b88ba 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -14,6 +14,8 @@ void intel_pxp_ctx_init(struct pxp_context *ctx)
 {
 	get_random_bytes(&ctx->id, sizeof(ctx->id));
 
+	ctx->global_state_attacked = false;
+
 	mutex_init(&ctx->mutex);
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index b1d0bc905320..3ba891f9ac26 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -19,6 +19,7 @@ struct pxp_context {
 
 	int id;
 
+	bool global_state_attacked;
 	bool flag_display_hm_surface_keys;
 };
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
