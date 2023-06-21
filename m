Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19047738EF3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 20:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75E510E345;
	Wed, 21 Jun 2023 18:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F4710E34D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 18:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687372697; x=1718908697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p+Ur86SSexkd9Q4TLQVCXQUe+8ocNzeOYrggEnpee10=;
 b=IfZJwJD3RXaQjQTseiW/nQuVqmacxLQUFT1K5iVb8f4bqCcgFln2+rTp
 9MIl+HvIDc+H2YPhRyduhvEgrpuT17daqAZ3hBfZpFNU15El5S6PXAd6n
 dusyOtrH7xa9y3mhKQazPpz1lCOlSBiy7NsqjowdcPAqot+a+V0P/78nI
 ixzZCHkeFg8DZ8Ltdw1Oo8wzwrlES6YRraTuRcSTIFaYJ+l/GNf5CsWpr
 qXutXvPlGLCtv8ZlwteL72RiHvQNJmFXRhF82NhdR/+VZAAtqJ69lhVKt
 fR7UBojAUmr8YpJORMeod5XZFrMUq9YN31Sk8Fjd+sstg0T57eMQpNurG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="339883608"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="339883608"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 11:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="779937105"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="779937105"
Received: from afedotov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.24])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 11:38:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 21:38:05 +0300
Message-Id: <20230621183805.251128-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: remove display raw reg
 read/write micro-optimizations
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

Convert the raw_reg_read() and raw_reg_write() calls in display GU MISC
and INT CTL handling to regular intel_uncore_read() and
intel_uncore_write(). These were neglible micro-optimizations, and
removing them helps the display code reuse in the Xe driver.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index ae98c99c5378..fda06f6c4a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1149,15 +1149,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
-	void __iomem * const regs = i915->uncore.regs;
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
 		return 0;
 
-	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
+	iir = intel_uncore_read(&i915->uncore, GEN11_GU_MISC_IIR);
 	if (likely(iir))
-		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
+		intel_uncore_write(&i915->uncore, GEN11_GU_MISC_IIR, iir);
 
 	return iir;
 }
@@ -1170,18 +1169,19 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
 {
-	void __iomem * const regs = i915->uncore.regs;
-	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
+	u32 disp_ctl;
+
+	disp_ctl = intel_uncore_read(&i915->uncore, GEN11_DISPLAY_INT_CTL);
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	/*
 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
 	 * for the display related bits.
 	 */
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
+	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL, 0x0);
 	gen8_de_irq_handler(i915, disp_ctl);
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
-		      GEN11_DISPLAY_IRQ_ENABLE);
+	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
+			   GEN11_DISPLAY_IRQ_ENABLE);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
-- 
2.39.2

