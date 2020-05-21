Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F356A1DC3E9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B5EF6E8F2;
	Thu, 21 May 2020 00:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633C96E8D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:13 +0000 (UTC)
IronPort-SDR: DcGRUwIhFmYCJRRgFW/6pvlL9ZH7RE4evpCot/uRragEC89ap520H4rrW2tX5NgpN2kkP9oTWt
 S/msF0xpWeog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:13 -0700
IronPort-SDR: PQbm9RzLI4qUmQVKbkEZyyjU1qAj7tZdN6F0qXAKnj3SinqDV+sGfHXxl8uS2e0B22j/m6U13k
 egiS6xA3Iqaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720938"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:52 -0700
Message-Id: <20200521003803.18936-27-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/37] drm/i915/dg1: Handle GRF/IC ECC error irq
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fernando Pacheco <fernando.pacheco@intel.com>

The error detection and correction capability
for GRF and instruction cache (IC) will utilize
the new interrupt and error handling infrastructure
for dgfx products. The GFX device can generate
a number of classes of error under the new
infrastructure: correctable, non-fatal, and
fatal errors.

The non-fatal and fatal error classes distinguish
between levels of severity for uncorrectable errors.
All ECC uncorrectable errors will be reported as
fatal to produce the desired system response. Fatal
errors are expected to route as PCIe error messages
which should result in OS issuing a GFX device FLR.
But the option exists to route fatal errors as
interrupts.

Driver will only handle logging of errors. Anything
more will be handled at system level.

For errors that will route as interrupts, three
bits in the Master Interrupt Register will be used
to convey the class of error.

For each class of error:
1. Determine source of error (IP block) by reading
   the Device Error Source Register (RW1C) that
   corresponds to the class of error being serviced.
2. If the generating IP block is GT, read and log the
   GT Error Register (RW1C) that corresponds to the
   class of error being serviced. Non-GT errors will
   be logged in aggregate for now.

Bspec: 50875

Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Fernando Pacheco <fernando.pacheco@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 121 ++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h |  28 ++++++++
 2 files changed, 149 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ebc80e8b1599..17e679b910da 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2515,6 +2515,124 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
+static const char *
+hardware_error_type_to_str(const enum hardware_error hw_err)
+{
+	switch (hw_err) {
+	case HARDWARE_ERROR_CORRECTABLE:
+		return "CORRECTABLE";
+	case HARDWARE_ERROR_NONFATAL:
+		return "NONFATAL";
+	case HARDWARE_ERROR_FATAL:
+		return "FATAL";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+static void
+gen12_gt_hw_error_handler(struct drm_i915_private * const i915,
+			  const enum hardware_error hw_err)
+{
+	void __iomem * const regs = i915->uncore.regs;
+	const char *hw_err_str = hardware_error_type_to_str(hw_err);
+	u32 other_errors = ~(EU_GRF_ERROR | EU_IC_ERROR);
+	u32 errstat;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	errstat = raw_reg_read(regs, ERR_STAT_GT_REG(hw_err));
+
+	if (unlikely(!errstat)) {
+		DRM_ERROR("ERR_STAT_GT_REG_%s blank!\n", hw_err_str);
+		return;
+	}
+
+	/*
+	 * TODO: The GT Non Fatal Error Status Register
+	 * only has reserved bitfields defined.
+	 * Remove once there is something to service.
+	 */
+	if (hw_err == HARDWARE_ERROR_NONFATAL) {
+		DRM_ERROR("detected Non-Fatal hardware error\n");
+		raw_reg_write(regs, ERR_STAT_GT_REG(hw_err), errstat);
+		return;
+	}
+
+	if (errstat & EU_GRF_ERROR)
+		DRM_ERROR("detected EU GRF %s hardware error\n", hw_err_str);
+
+	if (errstat & EU_IC_ERROR)
+		DRM_ERROR("detected EU IC %s hardware error\n", hw_err_str);
+
+	/*
+	 * TODO: The remaining GT errors don't have a
+	 * need for targeted logging at the moment. We
+	 * still want to log detection of these errors, but
+	 * let's aggregate them until someone has a need for them.
+	 */
+	if (errstat & other_errors)
+		DRM_ERROR("detected hardware error(s) in ERR_STAT_GT_REG_%s: 0x%08x\n",
+			  hw_err_str, errstat & other_errors);
+
+	raw_reg_write(regs, ERR_STAT_GT_REG(hw_err), errstat);
+}
+
+static void
+gen12_hw_error_source_handler(struct drm_i915_private * const i915,
+			      const enum hardware_error hw_err)
+{
+	void __iomem * const regs = i915->uncore.regs;
+	const char *hw_err_str = hardware_error_type_to_str(hw_err);
+	u32 errsrc;
+
+	spin_lock(&i915->irq_lock);
+	errsrc = raw_reg_read(regs, DEV_ERR_STAT_REG(hw_err));
+
+	if (unlikely(!errsrc)) {
+		DRM_ERROR("DEV_ERR_STAT_REG_%s blank!\n", hw_err_str);
+		goto out_unlock;
+	}
+
+	if (errsrc & DEV_ERR_STAT_GT_ERROR)
+		gen12_gt_hw_error_handler(i915, hw_err);
+
+	if (errsrc & ~DEV_ERR_STAT_GT_ERROR)
+		DRM_ERROR("non-GT hardware error(s) in DEV_ERR_STAT_REG_%s: 0x%08x\n",
+			  hw_err_str, errsrc & ~DEV_ERR_STAT_GT_ERROR);
+
+	raw_reg_write(regs, DEV_ERR_STAT_REG(hw_err), errsrc);
+
+out_unlock:
+	spin_unlock(&i915->irq_lock);
+}
+
+/*
+ * GEN12+ adds three Error bits to the Master Interrupt
+ * Register to support dgfx card error handling.
+ * These three bits are used to convey the class of error:
+ * FATAL, NONFATAL, or CORRECTABLE.
+ *
+ * To process an interrupt:
+ *	1. Determine source of error (IP block) by reading
+ *	   the Device Error Source Register (RW1C) that
+ *	   corresponds to the class of error being serviced.
+ *	2. For GT as the generating IP block, read and log
+ *	   the GT Error Register (RW1C) that corresponds to
+ *	   the class of error being serviced.
+ */
+static void
+gen12_hw_error_irq_handler(struct drm_i915_private * const i915,
+			   const u32 master_ctl)
+{
+	enum hardware_error hw_err;
+
+	for (hw_err = 0; hw_err < HARDWARE_ERROR_MAX; hw_err++) {
+		if (master_ctl & GEN12_ERROR_IRQ(hw_err))
+			gen12_hw_error_source_handler(i915, hw_err);
+	}
+}
+
 static u32
 gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
 {
@@ -2597,6 +2715,9 @@ __gen11_irq_handler(struct drm_i915_private * const i915,
 	/* Find, queue (onto bottom-halves), then clear each source */
 	gen11_gt_irq_handler(gt, master_ctl);
 
+	if (IS_DG1(i915))
+		gen12_hw_error_irq_handler(i915, master_ctl);
+
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & GEN11_DISPLAY_IRQ)
 		gen11_display_irq_handler(i915);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e0bd9e02c3d1..40cb361b4254 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7647,6 +7647,10 @@ enum {
 #define  GEN11_MASTER_IRQ		(1 << 31)
 #define  GEN11_PCU_IRQ			(1 << 30)
 #define  GEN11_GU_MISC_IRQ		(1 << 29)
+#define  GEN12_FATAL_ERROR_IRQ		(1 << 28)
+#define  GEN12_NON_FATAL_ERROR_IRQ	(1 << 27)
+#define  GEN12_CORRECTABLE_ERROR_IRQ	(1 << 26)
+#define  GEN12_ERROR_IRQ(x)		(1 << (26 + (x)))
 #define  GEN11_DISPLAY_IRQ		(1 << 16)
 #define  GEN11_GT_DW_IRQ(x)		(1 << (x))
 #define  GEN11_GT_DW1_IRQ		(1 << 1)
@@ -7738,6 +7742,30 @@ enum {
 
 #define GEN11_IIR_REG_SELECTOR(x)	_MMIO(0x190070 + ((x) * 4))
 
+enum hardware_error {
+	HARDWARE_ERROR_CORRECTABLE = 0,
+	HARDWARE_ERROR_NONFATAL = 1,
+	HARDWARE_ERROR_FATAL = 2,
+	HARDWARE_ERROR_MAX,
+};
+
+#define _DEV_ERR_STAT_FATAL		0x100174
+#define _DEV_ERR_STAT_NONFATAL		0x100178
+#define _DEV_ERR_STAT_CORRECTABLE	0x10017c
+#define DEV_ERR_STAT_REG(x)		_MMIO(_PICK_EVEN((x), \
+						_DEV_ERR_STAT_CORRECTABLE, \
+						_DEV_ERR_STAT_NONFATAL))
+#define  DEV_ERR_STAT_GT_ERROR		(1 << 0)
+
+#define _ERR_STAT_GT_COR		0x100160
+#define _ERR_STAT_GT_NONFATAL		0x100164
+#define _ERR_STAT_GT_FATAL		0x100168
+#define ERR_STAT_GT_REG(x)		_MMIO(_PICK_EVEN((x), \
+						_ERR_STAT_GT_COR, \
+						_ERR_STAT_GT_NONFATAL))
+#define  EU_GRF_ERROR			(1 << 15)
+#define  EU_IC_ERROR			(1 << 14)
+
 #define GEN11_RENDER_COPY_INTR_ENABLE	_MMIO(0x190030)
 #define GEN11_VCS_VECS_INTR_ENABLE	_MMIO(0x190034)
 #define GEN11_GUC_SG_INTR_ENABLE	_MMIO(0x190038)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
