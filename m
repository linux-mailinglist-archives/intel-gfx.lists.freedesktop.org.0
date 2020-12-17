Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBA92DCA9A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 02:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C098B89CC9;
	Thu, 17 Dec 2020 01:39:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5658941E
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 01:39:50 +0000 (UTC)
IronPort-SDR: s/JQ6fT1NGZ+ag7UMM9z2t84/pDy+NA+Gh9GrkBfKPXcP6Y/AJFV76mtoo/eVLQtNr1CdATl14
 qLSnZUb8hyag==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="259894831"
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="259894831"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 17:39:50 -0800
IronPort-SDR: Mnzn2pbzYTmtQsnYdZFzjzg9Bkxa797x8qciP3RJPL912vt2Sx44LtKaD4r9S7Qp0YV67bKGmR
 iOFFoWYK9JbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="337934391"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga003.jf.intel.com with ESMTP; 16 Dec 2020 17:39:41 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 17:39:33 -0800
Message-Id: <20201217013940.21263-7-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201217013940.21263-1-sean.z.huang@intel.com>
References: <20201217013940.21263-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v10 06/13] drm/i915/pxp: Enable PXP irq worker and
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
 drivers/gpu/drm/i915/pxp/intel_pxp.h         |  24 ++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   1 -
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   7 ++
 7 files changed, 140 insertions(+), 3 deletions(-)

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
index 2203464c76bc..f1bcfdc716ec 100644
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
 void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
@@ -27,6 +91,12 @@ void intel_pxp_init(struct intel_pxp *pxp)
 
 	intel_pxp_tee_component_init(pxp);
 
+	INIT_WORK(&pxp->irq_work, intel_pxp_irq_work);
+
+	pxp->handled_irr = (PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED |
+			    PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ |
+			    PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE);
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 }
 
@@ -36,3 +106,34 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 
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
index 8fc91e900b16..cdaa6ce6fdca 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -6,8 +6,13 @@
 #ifndef __INTEL_PXP_H__
 #define __INTEL_PXP_H__
 
+#include <linux/workqueue.h>
 #include "intel_pxp_types.h"
 
+#define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1)
+#define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
+#define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -25,14 +30,31 @@ enum pxp_protection_modes {
 };
 
 #ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
+int i915_pxp_teardown_required_callback(struct intel_pxp *pxp);
+int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
+
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
 #else
-static inline void intel_pxp_init(struct intel_pxp *pxp)
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
 {
 	return 0;
 }
 
+static inline void intel_pxp_init(struct intel_pxp *pxp)
+{
+}
+
 static inline void intel_pxp_fini(struct intel_pxp *pxp)
 {
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
index 2be6bf2f0d0f..4e820258b7ae 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -11,7 +11,10 @@
  */
 void intel_pxp_ctx_init(struct pxp_context *ctx)
 {
+	ctx->global_state_attacked = false;
+
 	mutex_init(&ctx->mutex);
+
 	ctx->inited = true;
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
index bf2feb4aaf6d..f51021c33d45 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -8,7 +8,6 @@
 
 #include <linux/mutex.h>
 #include "intel_pxp_types.h"
-#include "intel_pxp_arb.h"
 
 void intel_pxp_ctx_init(struct pxp_context *ctx);
 void intel_pxp_ctx_fini(struct pxp_context *ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index a8985d91cfef..ac0eb9346781 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_PXP_TYPES_H__
 #define __INTEL_PXP_TYPES_H__
 
+#include <linux/workqueue.h>
+
 /**
  * struct pxp_protected_session - structure to track all active sessions.
  */
@@ -38,9 +40,14 @@ struct pxp_context {
 	u32 arb_session_pxp_tag;
 
 	bool flag_display_hm_surface_keys;
+	bool global_state_attacked;
 };
 
 struct intel_pxp {
+	struct work_struct irq_work;
+	u32 handled_irr;
+	u32 current_events;
+
 	struct pxp_context ctx;
 };
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
