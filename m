Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6301C490F5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 20:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAE010E374;
	Mon, 10 Nov 2025 19:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cV7iaFic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD4710E463;
 Mon, 10 Nov 2025 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762803119; x=1794339119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zzXy+2ZGqWS8jqjLPJxyPsBPqSBV5cUKNHe6bs3688Y=;
 b=cV7iaFic2/YnhW6DFynbzNWCpBSneuw9Xn7TlU0u+DOObyoWnLfEmlKG
 EKlqDg6HQLUjW+Yz6YLgQjlc+JyXGFyx6I5hsdnFJLFZZQ9fyxMU0TzBf
 EdvVtsp8FFNiXjVpgJtWbAoi5ZjiQjcBbeuhxYPXSKD16KoN+zEuZGwfi
 a/tUc5vKTHyQ2kKkMz/HYt25qcFLDSWpRLyj1l0ArDo5KQW2PjwvbiaOv
 x4AHKJKbOqKa0zkU0a+1dsm+B+Zp3QWJ5OHK+I2Wopbbn/X3fEDHnaBQQ
 oztppNW9LoE4O8Zs+3/cXW1VfxOjo+x07lqyDaXvWfxbnEJ1FO+qdHRvt A==;
X-CSE-ConnectionGUID: BilDgHQlRFOZCVhusFFw7Q==
X-CSE-MsgGUID: 8fiAp3+9Ts2Fhg8WLmd6rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68709952"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68709952"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:59 -0800
X-CSE-ConnectionGUID: qf2xoM9AScOA5mP+kmmolw==
X-CSE-MsgGUID: GaaUSDViS0SeT+jTo0qolw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193135161"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915/display: convert the display irq interfaces to
 struct intel_display
Date: Mon, 10 Nov 2025 21:31:38 +0200
Message-ID: <9be115626eb4b82227c9c54bba8d3fbb2754cadd.1762803004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762803004.git.jani.nikula@intel.com>
References: <cover.1762803004.git.jani.nikula@intel.com>
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

Convert the gen2_* irq interfaces from struct intel_uncore to struct
intel_display, and drop the dependency on intel_uncore.h.

Drop the gen2_ prefix while at.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 93 +++++++++----------
 1 file changed, 43 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 62f11fac47bb..c9e7814479f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -30,74 +30,71 @@
 #include "intel_pmdemand.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
-#include "intel_uncore.h"
 
-static void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
+static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
 {
-	intel_uncore_write(uncore, regs.imr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.imr);
+	intel_de_write(display, regs.imr, 0xffffffff);
+	intel_de_posting_read(display, regs.imr);
 
-	intel_uncore_write(uncore, regs.ier, 0);
+	intel_de_write(display, regs.ier, 0);
 
 	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
+	intel_de_write(display, regs.iir, 0xffffffff);
+	intel_de_posting_read(display, regs.iir);
+	intel_de_write(display, regs.iir, 0xffffffff);
+	intel_de_posting_read(display, regs.iir);
 }
 
 /*
  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
  */
-static void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+static void assert_iir_is_zero(struct intel_display *display, i915_reg_t reg)
 {
-	u32 val = intel_uncore_read(uncore, reg);
+	u32 val = intel_de_read(display, reg);
 
 	if (val == 0)
 		return;
 
-#if 0	/* FIXME */
-	drm_WARN(&uncore->i915->drm, 1,
+	drm_WARN(display->drm, 1,
 		 "Interrupt register 0x%x is not zero: 0x%08x\n",
 		 i915_mmio_reg_offset(reg), val);
-#endif
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
+	intel_de_write(display, reg, 0xffffffff);
+	intel_de_posting_read(display, reg);
+	intel_de_write(display, reg, 0xffffffff);
+	intel_de_posting_read(display, reg);
 }
 
-static void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
-			  u32 imr_val, u32 ier_val)
+static void irq_init(struct intel_display *display, struct i915_irq_regs regs,
+		     u32 imr_val, u32 ier_val)
 {
-	gen2_assert_iir_is_zero(uncore, regs.iir);
+	assert_iir_is_zero(display, regs.iir);
 
-	intel_uncore_write(uncore, regs.ier, ier_val);
-	intel_uncore_write(uncore, regs.imr, imr_val);
-	intel_uncore_posting_read(uncore, regs.imr);
+	intel_de_write(display, regs.ier, ier_val);
+	intel_de_write(display, regs.imr, imr_val);
+	intel_de_posting_read(display, regs.imr);
 }
 
-static void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
+static void error_reset(struct intel_display *display, struct i915_error_regs regs)
 {
-	intel_uncore_write(uncore, regs.emr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.emr);
+	intel_de_write(display, regs.emr, 0xffffffff);
+	intel_de_posting_read(display, regs.emr);
 
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
+	intel_de_write(display, regs.eir, 0xffffffff);
+	intel_de_posting_read(display, regs.eir);
+	intel_de_write(display, regs.eir, 0xffffffff);
+	intel_de_posting_read(display, regs.eir);
 }
 
-static void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
-			    u32 emr_val)
+static void error_init(struct intel_display *display, struct i915_error_regs regs,
+		       u32 emr_val)
 {
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
+	intel_de_write(display, regs.eir, 0xffffffff);
+	intel_de_posting_read(display, regs.eir);
+	intel_de_write(display, regs.eir, 0xffffffff);
+	intel_de_posting_read(display, regs.eir);
 
-	intel_uncore_write(uncore, regs.emr, emr_val);
-	intel_uncore_posting_read(uncore, regs.emr);
+	intel_de_write(display, regs.emr, emr_val);
+	intel_de_posting_read(display, regs.emr);
 }
 
 static void
@@ -108,7 +105,7 @@ intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_get(display, regs.ier);
 	intel_dmc_wl_get(display, regs.iir);
 
-	gen2_irq_init(to_intel_uncore(display->drm), regs, imr_val, ier_val);
+	irq_init(display, regs, imr_val, ier_val);
 
 	intel_dmc_wl_put(display, regs.iir);
 	intel_dmc_wl_put(display, regs.ier);
@@ -122,7 +119,7 @@ intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_get(display, regs.ier);
 	intel_dmc_wl_get(display, regs.iir);
 
-	gen2_irq_reset(to_intel_uncore(display->drm), regs);
+	irq_reset(display, regs);
 
 	intel_dmc_wl_put(display, regs.iir);
 	intel_dmc_wl_put(display, regs.ier);
@@ -134,7 +131,7 @@ intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display, i915_re
 {
 	intel_dmc_wl_get(display, reg);
 
-	gen2_assert_iir_is_zero(to_intel_uncore(display->drm), reg);
+	assert_iir_is_zero(display, reg);
 
 	intel_dmc_wl_put(display, reg);
 }
@@ -1979,8 +1976,7 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 	else
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
-	gen2_error_reset(to_intel_uncore(display->drm),
-			 VLV_ERROR_REGS);
+	error_reset(display, VLV_ERROR_REGS);
 
 	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
 	intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
@@ -2075,8 +2071,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
 			       DPINVGTT_STATUS_MASK_VLV |
 			       DPINVGTT_EN_MASK_VLV);
 
-	gen2_error_init(to_intel_uncore(display->drm),
-			VLV_ERROR_REGS, ~vlv_error_mask());
+	error_init(display, VLV_ERROR_REGS, ~vlv_error_mask());
 
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
@@ -2115,7 +2110,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
 	if (HAS_PCH_NOP(display))
 		return;
 
-	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
+	irq_reset(display, SDE_IRQ_REGS);
 
 	if (HAS_PCH_CPT(display) || HAS_PCH_LPT(display))
 		intel_de_write(display, SERR_INT, 0xffffffff);
@@ -2123,9 +2118,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
 
 void ilk_display_irq_reset(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
-	gen2_irq_reset(uncore, DE_IRQ_REGS);
+	irq_reset(display, DE_IRQ_REGS);
 	display->irq.ilk_de_imr_mask = ~0u;
 
 	if (DISPLAY_VER(display) == 7)
-- 
2.47.3

