Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAE01DC3D9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402366E8D9;
	Thu, 21 May 2020 00:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53CC6E8D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:13 +0000 (UTC)
IronPort-SDR: fZGCEFV/hrev4CWDYJjQhoDGWDo+9gFihj/p4u0J+oi+xpc9IkGS8Y15eXB3Pw4mHr3pVEGScT
 8XFDe1WWB5PA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:13 -0700
IronPort-SDR: 0R8b9cUK738ColqdYDr1lej9tJ7/oCmkjB3Y5m4J8GJ0A16XYTBCFjCuCqKIUwZHgUg9hlc5js
 CnHkgWpNvdvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720941"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:53 -0700
Message-Id: <20200521003803.18936-28-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/37] drm/i915/dg1: Log counter on SLM ECC error
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

Correctable and uncorrectable Shared Local Memory (SLM)
ECC errors will be counted in two different Thread Dispatch
Logic (TDL) registers. GuC will receive a message
from TDL when the first correctable/uncorrectable error is
detected by SLM (first after a reset or register clear). This
message is then forwarded to the appropriate severity register.

Correctable errors will route to kernel driver and uncorrectable errors
are expected to route as PCIe Error. Although the option exists to route
both as interrupts.

Service the interrupt and read TDL registers for error count.

Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Fernando Pacheco <fernando.pacheco@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 10 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h |  7 +++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 17e679b910da..ca35edef492d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2536,7 +2536,7 @@ gen12_gt_hw_error_handler(struct drm_i915_private * const i915,
 {
 	void __iomem * const regs = i915->uncore.regs;
 	const char *hw_err_str = hardware_error_type_to_str(hw_err);
-	u32 other_errors = ~(EU_GRF_ERROR | EU_IC_ERROR);
+	u32 other_errors = ~(EU_GRF_ERROR | EU_IC_ERROR | SLM_ERROR);
 	u32 errstat;
 
 	lockdep_assert_held(&i915->irq_lock);
@@ -2565,6 +2565,14 @@ gen12_gt_hw_error_handler(struct drm_i915_private * const i915,
 	if (errstat & EU_IC_ERROR)
 		DRM_ERROR("detected EU IC %s hardware error\n", hw_err_str);
 
+	if (errstat & SLM_ERROR) {
+		struct drm_i915_private *dev_priv = i915;
+
+		DRM_ERROR("detected %u SLM %s hardware error(s)\n",
+			  I915_READ(SLM_ECC_ERROR_CNTR(hw_err)),
+			  hw_err_str);
+	}
+
 	/*
 	 * TODO: The remaining GT errors don't have a
 	 * need for targeted logging at the moment. We
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 40cb361b4254..b9c142f86611 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7765,6 +7765,13 @@ enum hardware_error {
 						_ERR_STAT_GT_NONFATAL))
 #define  EU_GRF_ERROR			(1 << 15)
 #define  EU_IC_ERROR			(1 << 14)
+#define  SLM_ERROR			(1 << 13)
+
+#define _SLM_ECC_ERROR_CNT		0xe7f4
+#define _SLM_UNCORR_ECC_ERROR_CNT	0xe7c0
+#define SLM_ECC_ERROR_CNTR(x)		_MMIO((x) == HARDWARE_ERROR_CORRECTABLE ? \
+						_SLM_ECC_ERROR_CNT : \
+						_SLM_UNCORR_ECC_ERROR_CNT)
 
 #define GEN11_RENDER_COPY_INTR_ENABLE	_MMIO(0x190030)
 #define GEN11_VCS_VECS_INTR_ENABLE	_MMIO(0x190034)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
