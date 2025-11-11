Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C043BC4C1F8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 08:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1E210E4E6;
	Tue, 11 Nov 2025 07:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0Als8xQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B816E10E331;
 Tue, 11 Nov 2025 07:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762846455; x=1794382455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vcxG4NQKruL3biIdrWVI97qyTfC4R2+tluGjFyrGLCk=;
 b=E0Als8xQp1RdRncH2T5+jz7HbypauTfDllof3synpnCgALAoBjndrir7
 T0cjwgkKujeA3hXHFasoT/JzI4GajQoeonXAsZfR2M+IwMejAZX5T0dh3
 6kFPHlG5h/31fhXSI3L6otvgnanUq0NfRTVIuaRwtVF+9S54Gw2Wl9tTU
 +0teNq5iLEuhj7pdSLP0uXMgvhcIEnUZqRsUk0nnpIcDohO6vHubqPHng
 b7bscKn64P8iPsudZvZe4Cd5hQcwPpn4WEIO7OthNdRUPpwSObJe7NkA+
 jIpBPfk7MRodtiKjfMAssubKM5e1hfs8PjrKvS1JbZLmYoJvbuJ2HzqYu Q==;
X-CSE-ConnectionGUID: wBLXd9Z4Qga3jrhZw4PWMw==
X-CSE-MsgGUID: Cg/jiQgYTLquLLmY/U3QVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76359528"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="76359528"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 23:34:15 -0800
X-CSE-ConnectionGUID: h1bxlhKaTMyBEfYLIoAkEA==
X-CSE-MsgGUID: KmtnRxyTQDWUl64XKaOi5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188657729"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 23:34:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/3] drm/{i915,
 xe}/display: duplicate gen2 irq/error init/reset in display irq
Date: Tue, 11 Nov 2025 09:34:02 +0200
Message-ID: <cf235460bbb11bde65cca4e65b7d6904adfe146c.1762846363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762846363.git.jani.nikula@intel.com>
References: <cover.1762846363.git.jani.nikula@intel.com>
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

Duplicate gen2_irq_reset(), gen2_assert_iir_is_zero(), gen2_irq_init(),
gen2_error_reset(), and gen2_error_init() in intel_display_irq.c.

This allows us to drop the duplicates from xe, and prepares for future
cleanups. Although duplication is undesirable in general, in this case
the local duplicates lead to a cleaner end result.

There's a slight wrinkle in gen2_assert_iir_is_zero(). We need to use
non-device based logging until we pass in struct intel_display in a
separate change.

v2:
- Keep xe compat stuff due to series reorder and rebase
- Keep the WARN as regular WARN
- Rename the functions in the same go

Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Note: 'git show --color-moved' helps review
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 82 +++++++++++++++++--
 drivers/gpu/drm/xe/display/ext/i915_irq.c     | 67 ---------------
 2 files changed, 73 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 43b27deb4a26..acfaff13c3ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -33,6 +33,72 @@
 #include "intel_psr_regs.h"
 #include "intel_uncore.h"
 
+static void irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
+{
+	intel_uncore_write(uncore, regs.imr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.imr);
+
+	intel_uncore_write(uncore, regs.ier, 0);
+
+	/* IIR can theoretically queue up two events. Be paranoid. */
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+}
+
+/*
+ * We should clear IMR at preinstall/uninstall, and just check at postinstall.
+ */
+static void assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+{
+	u32 val = intel_uncore_read(uncore, reg);
+
+	if (val == 0)
+		return;
+
+	WARN(1,
+		 "Interrupt register 0x%x is not zero: 0x%08x\n",
+		 i915_mmio_reg_offset(reg), val);
+	intel_uncore_write(uncore, reg, 0xffffffff);
+	intel_uncore_posting_read(uncore, reg);
+	intel_uncore_write(uncore, reg, 0xffffffff);
+	intel_uncore_posting_read(uncore, reg);
+}
+
+static void irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+		     u32 imr_val, u32 ier_val)
+{
+	assert_iir_is_zero(uncore, regs.iir);
+
+	intel_uncore_write(uncore, regs.ier, ier_val);
+	intel_uncore_write(uncore, regs.imr, imr_val);
+	intel_uncore_posting_read(uncore, regs.imr);
+}
+
+static void error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
+{
+	intel_uncore_write(uncore, regs.emr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.emr);
+
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+}
+
+static void error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
+		       u32 emr_val)
+{
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+
+	intel_uncore_write(uncore, regs.emr, emr_val);
+	intel_uncore_posting_read(uncore, regs.emr);
+}
+
 static void
 intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs regs,
 			    u32 imr_val, u32 ier_val)
@@ -41,7 +107,7 @@ intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_get(display, regs.ier);
 	intel_dmc_wl_get(display, regs.iir);
 
-	gen2_irq_init(to_intel_uncore(display->drm), regs, imr_val, ier_val);
+	irq_init(to_intel_uncore(display->drm), regs, imr_val, ier_val);
 
 	intel_dmc_wl_put(display, regs.iir);
 	intel_dmc_wl_put(display, regs.ier);
@@ -55,7 +121,7 @@ intel_display_irq_regs_reset(struct intel_display *display, struct i915_irq_regs
 	intel_dmc_wl_get(display, regs.ier);
 	intel_dmc_wl_get(display, regs.iir);
 
-	gen2_irq_reset(to_intel_uncore(display->drm), regs);
+	irq_reset(to_intel_uncore(display->drm), regs);
 
 	intel_dmc_wl_put(display, regs.iir);
 	intel_dmc_wl_put(display, regs.ier);
@@ -67,7 +133,7 @@ intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display, i915_re
 {
 	intel_dmc_wl_get(display, reg);
 
-	gen2_assert_iir_is_zero(to_intel_uncore(display->drm), reg);
+	assert_iir_is_zero(to_intel_uncore(display->drm), reg);
 
 	intel_dmc_wl_put(display, reg);
 }
@@ -1918,8 +1984,7 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 	else
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
-	gen2_error_reset(to_intel_uncore(display->drm),
-			 VLV_ERROR_REGS);
+	error_reset(to_intel_uncore(display->drm), VLV_ERROR_REGS);
 
 	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
 	intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
@@ -2014,8 +2079,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
 			       DPINVGTT_STATUS_MASK_VLV |
 			       DPINVGTT_EN_MASK_VLV);
 
-	gen2_error_init(to_intel_uncore(display->drm),
-			VLV_ERROR_REGS, ~vlv_error_mask());
+	error_init(to_intel_uncore(display->drm), VLV_ERROR_REGS, ~vlv_error_mask());
 
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
@@ -2054,7 +2118,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
 	if (HAS_PCH_NOP(display))
 		return;
 
-	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
+	irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
 
 	if (HAS_PCH_CPT(display) || HAS_PCH_LPT(display))
 		intel_de_write(display, SERR_INT, 0xffffffff);
@@ -2064,7 +2128,7 @@ void ilk_display_irq_reset(struct intel_display *display)
 {
 	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 
-	gen2_irq_reset(uncore, DE_IRQ_REGS);
+	irq_reset(uncore, DE_IRQ_REGS);
 	display->irq.ilk_de_imr_mask = ~0u;
 
 	if (DISPLAY_VER(display) == 7)
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index 3c6bca66ddab..1011c1c754d0 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -7,73 +7,6 @@
 #include "i915_reg.h"
 #include "intel_uncore.h"
 
-void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
-{
-	intel_uncore_write(uncore, regs.imr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.imr);
-
-	intel_uncore_write(uncore, regs.ier, 0);
-
-	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
-}
-
-/*
- * We should clear IMR at preinstall/uninstall, and just check at postinstall.
- */
-void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
-{
-	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
-	u32 val = intel_uncore_read(uncore, reg);
-
-	if (val == 0)
-		return;
-
-	drm_WARN(&xe->drm, 1,
-		 "Interrupt register 0x%x is not zero: 0x%08x\n",
-		 i915_mmio_reg_offset(reg), val);
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
-}
-
-void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
-		   u32 imr_val, u32 ier_val)
-{
-	gen2_assert_iir_is_zero(uncore, regs.iir);
-
-	intel_uncore_write(uncore, regs.ier, ier_val);
-	intel_uncore_write(uncore, regs.imr, imr_val);
-	intel_uncore_posting_read(uncore, regs.imr);
-}
-
-void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
-{
-	intel_uncore_write(uncore, regs.emr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.emr);
-
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-}
-
-void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
-		     u32 emr_val)
-{
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-
-	intel_uncore_write(uncore, regs.emr, emr_val);
-	intel_uncore_posting_read(uncore, regs.emr);
-}
-
 bool intel_irqs_enabled(struct xe_device *xe)
 {
 	return atomic_read(&xe->irq.enabled);
-- 
2.47.3

