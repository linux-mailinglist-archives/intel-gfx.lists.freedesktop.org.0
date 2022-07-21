Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EA757D716
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 00:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E745D113632;
	Thu, 21 Jul 2022 22:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEEE10E862
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 22:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658443902; x=1689979902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XQdkzDCijji7fd9rkbtbDaogFbAy16SB9mr0kSmKD9E=;
 b=T28T9zXuk31Jz2r6xyJ65QdSz6yK2dFd/hCbZVFdbOBy1Ly9SEYFuXCq
 tguOG/M98O+WmwzQbxQuDstT2oSYav/xvwIRXqnxR+qfvdRBK4Tpm3Nxz
 qOIm8w+VYBGdL++p05GQlu2YM2W7PTtncD38XJ72hjnnUJf6aDmlptAdy
 9MHnQWbJzx7JGmf45St6SH351ci3FvW/wwtwMqsxwuoNIOGi1Qswn1X64
 EL08548jI0RyUSiMyVycfk+q0MAwirpbLBaxWkscBotGGHvl1k9YNMFVm
 3JDQeU2xpl2bu61hjOjrvGcxEDsbtSe+s2J7R/ollNnEUGY/t2J/OErJO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="351183487"
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="351183487"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 15:51:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="656958337"
Received: from anushasr-mobl7.ra.intel.com ([10.72.60.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 15:51:41 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:51:00 -0700
Message-Id: <20220721225100.693589-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct instead
 of gt for gen11_gu_misc_irq_handler/ack()
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

gen11_gu_misc_irq_handler() and gen11_gu_misc_ack() do nothing tile
specific.

v2: gen11_gu_misc_irq_ack() tile agnostic like gen11_gu_misc_irq_handler()
(Tvrtko)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 73cebc6aa650..eb37b6bacaac 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2653,9 +2653,9 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 }
 
 static u32
-gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
+gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
-	void __iomem * const regs = gt->uncore->regs;
+	void __iomem * const regs = i915->uncore.regs;
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
@@ -2669,10 +2669,10 @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
 }
 
 static void
-gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
+gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 {
 	if (iir & GEN11_GU_MISC_GSE)
-		intel_opregion_asle_intr(gt->i915);
+		intel_opregion_asle_intr(i915);
 }
 
 static inline u32 gen11_master_intr_disable(void __iomem * const regs)
@@ -2736,11 +2736,11 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 	if (master_ctl & GEN11_DISPLAY_IRQ)
 		gen11_display_irq_handler(i915);
 
-	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
+	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
 
 	gen11_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
@@ -2801,11 +2801,11 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	if (master_ctl & GEN11_DISPLAY_IRQ)
 		gen11_display_irq_handler(i915);
 
-	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
+	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
 
 	dg1_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
-- 
2.25.1

