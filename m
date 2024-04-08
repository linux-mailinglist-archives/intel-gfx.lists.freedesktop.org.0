Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FA489BF87
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 14:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4219711255D;
	Mon,  8 Apr 2024 12:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHBCw9Wp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6A0112559;
 Mon,  8 Apr 2024 12:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712580894; x=1744116894;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xXa1Ebs9MxoYeD8rfQ7TS3QQxP9BvArMNbfEfXqiRbY=;
 b=XHBCw9WpxDWqaFIIF5FPxB5aQG1R/A7227fI/nLmT4YYy64mPe8kjCyu
 NMkhfm+NpXwwCMCliNJ9q88CCzdO6lkNQ2trnu5NO7rkYNQVuDp0MduA+
 NldDJWYuAxeTW2/MOeu9hCPykv2yCkA3hwG4rhkr+YW+8NqOLlP4qnmwp
 qwtWJsIr9E9GjAeKfyiB1UYc/UIZtYmOb77W9FDGtlcXbWczCtvk7MThj
 1SJDwPBtxd7peDgK60Gr0F1uPAYz1b9uI6poEM64609ZzBOKfsEeZ2miT
 M9Rvw2hp0CdVE2RVhl3R2HMSb2M8Lf8PY8fZhxIaJU3TuJRE2ATPeR/je A==;
X-CSE-ConnectionGUID: 1heCIMEmQeKm0Loxc85lqA==
X-CSE-MsgGUID: exR5EzPpSl+DM9NobDaijg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7976495"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7976495"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:54:53 -0700
X-CSE-ConnectionGUID: osWqTaEZSSm4zl2BePzitQ==
X-CSE-MsgGUID: 5t7VJZnHTQ+3sMHd3PvLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="50864248"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:54:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 1/2] drm/i915/display: remove small micro-optimizations in irq
 handling
Date: Mon,  8 Apr 2024 15:54:44 +0300
Message-Id: <20240408125445.3227678-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The raw register reads/writes are there as micro-optimizations to avoid
multiple pointer indirections on uncore->regs. Presumably this is useful
when there are plenty of register reads/writes in the same
function. However, the display irq handling only has a few raw
reads/writes. Remove them for simplification.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f846c5b108b5..d4ae9139be39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
-	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
 		return 0;
 
-	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
+	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
 	if (likely(iir))
-		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
+		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
 
 	return iir;
 }
@@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
 {
-	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
-	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
+	u32 disp_ctl;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	/*
 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
 	 * for the display related bits.
 	 */
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
+	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
+
+	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
 	gen8_de_irq_handler(i915, disp_ctl);
-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
-		      GEN11_DISPLAY_IRQ_ENABLE);
+	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
-- 
2.39.2

