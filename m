Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C389357899D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 20:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBF010EC2C;
	Mon, 18 Jul 2022 18:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A77E10EB19
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 18:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658169313; x=1689705313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4u6aSf79rX7z+mvTusBw+3D0TfTOBflGLvsQnIqEYWY=;
 b=bcFJ1fnNKZr4OpFFfg2xZSGsVkRmU3AsJwgICJHQd0iqdtwQq05akRBJ
 HqfuLeuPnKGVo+Ir6QoJpBMw5kI40+hu6YX1HzK68m9aUpf1CyCs1cxDI
 aHuUMrvzvM6zey8HDtA1s8JPt77wmPZDudGQVJ1tPwJm5E9NY7rFRXKS9
 LlQPENrzKpAcbNcWCyNzv4iTHrBMsfToVcIR9rZNqJSKtiD3nQVp/FVZl
 ERdY73ddzm7Ea4h7vhK5RJaPbBDhupm76IQHU4B7Egiap5Rj3Nwhin9Y9
 gF2q/SZZi+ja4SoLtZZvFAdMnD9+RuNxJ+nf6Q6G/uUAc9o697wUW+EIB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="347982590"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="347982590"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 11:35:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="665122153"
Received: from pdefnet-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.212.212.212])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 11:35:10 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jul 2022 11:34:24 -0700
Message-Id: <20220718183424.149988-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct instead
 of gt for gen11_gu_misc_irq_handler()
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

gen11_gu_misc_irq_handler() does not do anything tile specific.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 73cebc6aa650..c304af777d58 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
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
@@ -2740,7 +2740,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 
 	gen11_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
@@ -2805,7 +2805,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 
 	dg1_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
-- 
2.25.1

