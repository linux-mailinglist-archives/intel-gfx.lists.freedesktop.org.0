Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5E11DC3CC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF7A6E8D4;
	Thu, 21 May 2020 00:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A58D6E8CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:11 +0000 (UTC)
IronPort-SDR: EhQkwVq+GPjueNBHB4XFP3eXJqSdapubD6Bvmo41J9SwYJaDsxkAlGfnQriW/73w+G2hTK4NzJ
 v1gSSZn1XrNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:11 -0700
IronPort-SDR: IqOFiutTHaHnFjMT44h3qNwSjB2BNXEemaVZY1ZGUjuGUoUUNJZJDFs+fhbNvNViZl/55Kp6fg
 Xa8EYMg99PQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720908"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:44 -0700
Message-Id: <20200521003803.18936-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/37] drm/i915/dg1: add support for the master
 unit interrupt
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

DG1 has master unit interrupt register which is used to indicate the
correct source of interrupt.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Daniele Spurio Ceraolo <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c |  4 +++
 drivers/gpu/drm/i915/i915_irq.c     | 56 +++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h     |  4 +++
 3 files changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index bca036ac6621..4e13f7d7dc5d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -492,6 +492,10 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 		seq_printf(m, "PCU interrupt enable:\t%08x\n",
 			   I915_READ(GEN8_PCU_IER));
 	} else if (INTEL_GEN(dev_priv) >= 11) {
+		if (HAS_MASTER_UNIT_IRQ(dev_priv))
+			seq_printf(m, "Master Unit Interrupt Control:  %08x\n",
+				   I915_READ(DG1_MSTR_UNIT_INTR));
+
 		seq_printf(m, "Master Interrupt Control:  %08x\n",
 			   I915_READ(GEN11_GFX_MSTR_IRQ));
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 95996db46939..2e950387c179 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2583,6 +2583,46 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 				   gen11_master_intr_enable);
 }
 
+static u32 dg1_master_intr_disable_and_ack(void __iomem * const regs)
+{
+	u32 val;
+
+	/* First disable interrupts */
+	raw_reg_write(regs, DG1_MSTR_UNIT_INTR, 0);
+
+	/* Get the indication levels and ack the master unit */
+	val = raw_reg_read(regs, DG1_MSTR_UNIT_INTR);
+	if (unlikely(!val))
+		return 0;
+
+	raw_reg_write(regs, DG1_MSTR_UNIT_INTR, val);
+
+	/*
+	 * Now with master disabled, get a sample of level indications
+	 * for this interrupt and ack them right away - we keep GEN11_MASTER_IRQ
+	 * out as this bit doesn't exist anymore for DG1
+	 */
+	val = raw_reg_read(regs, GEN11_GFX_MSTR_IRQ) & ~GEN11_MASTER_IRQ;
+	if (unlikely(!val))
+		return 0;
+
+	raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, val);
+
+	return val;
+}
+
+static inline void dg1_master_intr_enable(void __iomem * const regs)
+{
+	raw_reg_write(regs, DG1_MSTR_UNIT_INTR, DG1_MSTR_IRQ);
+}
+
+static irqreturn_t dg1_irq_handler(int irq, void *arg)
+{
+	return __gen11_irq_handler(arg,
+				   dg1_master_intr_disable_and_ack,
+				   dg1_master_intr_enable);
+}
+
 /* Called from drm generic code, passed 'crtc' which
  * we use as a pipe index
  */
@@ -2917,7 +2957,10 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen11_master_intr_disable(dev_priv->uncore.regs);
+	if (HAS_MASTER_UNIT_IRQ(dev_priv))
+		dg1_master_intr_disable_and_ack(dev_priv->uncore.regs);
+	else
+		gen11_master_intr_disable(dev_priv->uncore.regs);
 
 	gen11_gt_irq_reset(&dev_priv->gt);
 	gen11_display_irq_reset(dev_priv);
@@ -3511,8 +3554,13 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	I915_WRITE(GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
-	gen11_master_intr_enable(uncore->regs);
-	POSTING_READ(GEN11_GFX_MSTR_IRQ);
+	if (HAS_MASTER_UNIT_IRQ(dev_priv)) {
+		dg1_master_intr_enable(uncore->regs);
+		POSTING_READ(DG1_MSTR_UNIT_INTR);
+	} else {
+		gen11_master_intr_enable(uncore->regs);
+		POSTING_READ(GEN11_GFX_MSTR_IRQ);
+	}
 }
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -4037,6 +4085,8 @@ static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
 		else
 			return i8xx_irq_handler;
 	} else {
+		if (HAS_MASTER_UNIT_IRQ(dev_priv))
+			return dg1_irq_handler;
 		if (INTEL_GEN(dev_priv) >= 11)
 			return gen11_irq_handler;
 		else if (INTEL_GEN(dev_priv) >= 8)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 95e903c01b2b..c1fde43867dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7651,6 +7651,10 @@ enum {
 #define  GEN11_GT_DW1_IRQ		(1 << 1)
 #define  GEN11_GT_DW0_IRQ		(1 << 0)
 
+#define DG1_MSTR_UNIT_INTR		_MMIO(0x190008)
+#define  DG1_MSTR_IRQ			(1 << 31)
+#define  DG1_MSTR_UNIT(u)		(1 << (u))
+
 #define GEN11_DISPLAY_INT_CTL		_MMIO(0x44200)
 #define  GEN11_DISPLAY_IRQ_ENABLE	(1 << 31)
 #define  GEN11_AUDIO_CODEC_IRQ		(1 << 24)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
