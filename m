Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB07B96444
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE1610E637;
	Tue, 23 Sep 2025 14:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZuA74i8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8812110E632;
 Tue, 23 Sep 2025 14:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637899; x=1790173899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQ5JOfzCYpZAJJrvzhxzteCX41by9+n8DYMWyqcV9As=;
 b=MZuA74i89JR9cNCbbHl5pNxOmJnGmonr50dFWrZtj9rNo59ph6s7kQK1
 +wZjRGbBwGIBYCBGuVWrHQg4bZN4Sjxf/DcU9TKXrWVHMMxfsb5s2eNCk
 itds/G9hll//aYkPPyTOmRVXEyaZSivXUuFW4KFnSKqZ0ytJ6crPLc2qQ
 kQHcjsGciIwUsa/s2j+FV4eDTz478qTnjYFk16XXKWltBMLQHvLRigrpH
 U4bUwLj+Ps1WRuWDY8oZvnb8mxboSFY7Fp0zDInHF4IzRsFOGawLpUIKC
 pKI7LK0gfQX5XaCsTlsjR6JUrDge9YAkGyIFgHOUP5alHwqmiT63U6T2h g==;
X-CSE-ConnectionGUID: sbcgWjiCR9mB30134GRkZA==
X-CSE-MsgGUID: dUqUaDqATNe0QufFfonLgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60836123"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60836123"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:38 -0700
X-CSE-ConnectionGUID: ilHQ+y5ATRylUWAX3wlsTA==
X-CSE-MsgGUID: LKZ2LfhVReGepIw+pYabTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176720812"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/5] drm/i915/irq: split ILK display irq handling
Date: Tue, 23 Sep 2025 17:31:08 +0300
Message-ID: <e8ea7c985c3f3a80870f3333bde2e1bf30d653b0.1758637773.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758637773.git.jani.nikula@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
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

Split out display irq handling on ilk. Since the master IRQ enable is in
DEIIR, we'll need to do this in two parts. First, add
ilk_display_irq_master_disable() to disable master and south interrupts,
and second, add (repurposed) ilk_display_irq_handler() to finish display
irq handling.

It's not the prettiest thing you ever saw, but improves separation of
display irq handling. And removes HAS_PCH_NOP() and DISPLAY_VER() checks
from core irq code.

v2:
- Separate ilk_display_irq_master_enable() (Ville)
- Use _fw mmio accessors (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 51 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 +-
 drivers/gpu/drm/i915/i915_irq.c               | 31 +++--------
 3 files changed, 58 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 4d51900123ea..e1a812f6159b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -872,7 +872,7 @@ static void ilk_gtt_fault_irq_handler(struct intel_display *display)
 	}
 }
 
-void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
+static void _ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 {
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
@@ -923,7 +923,7 @@ void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 		ilk_display_rps_irq_handler(display);
 }
 
-void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
+static void _ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 {
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
@@ -972,6 +972,53 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 	}
 }
 
+void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier)
+{
+	/* disable master interrupt before clearing iir  */
+	*de_ier = intel_de_read_fw(display, DEIER);
+	intel_de_write_fw(display, DEIER, *de_ier & ~DE_MASTER_IRQ_CONTROL);
+
+	/*
+	 * Disable south interrupts. We'll only write to SDEIIR once, so further
+	 * interrupts will be stored on its back queue, and then we'll be able
+	 * to process them after we restore SDEIER (as soon as we restore it,
+	 * we'll get an interrupt if SDEIIR still has something to process due
+	 * to its back queue).
+	 */
+	if (!HAS_PCH_NOP(display)) {
+		*sde_ier = intel_de_read_fw(display, SDEIER);
+		intel_de_write_fw(display, SDEIER, 0);
+	} else {
+		*sde_ier = 0;
+	}
+}
+
+void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier)
+{
+	intel_de_write_fw(display, DEIER, de_ier);
+
+	if (sde_ier)
+		intel_de_write_fw(display, SDEIER, sde_ier);
+}
+
+bool ilk_display_irq_handler(struct intel_display *display)
+{
+	u32 de_iir;
+	bool handled = false;
+
+	de_iir = intel_de_read_fw(display, DEIIR);
+	if (de_iir) {
+		intel_de_write_fw(display, DEIIR, de_iir);
+		if (DISPLAY_VER(display) >= 7)
+			_ivb_display_irq_handler(display, de_iir);
+		else
+			_ilk_display_irq_handler(display, de_iir);
+		handled = true;
+	}
+
+	return handled;
+}
+
 static u32 gen8_de_port_aux_mask(struct intel_display *display)
 {
 	u32 mask;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index e44d88e0d7e7..84acd31948cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -47,8 +47,9 @@ void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
 
-void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
-void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
+void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
+void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier);
+bool ilk_display_irq_handler(struct intel_display *display);
 void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
 void gen11_display_irq_handler(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 90174ce9195c..11a727b74849 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -414,7 +414,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_display *display = i915->display;
 	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
-	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
+	u32 gt_iir, de_ier = 0, sde_ier = 0;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (unlikely(!intel_irqs_enabled(i915)))
@@ -423,19 +423,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
-	/* disable master interrupt before clearing iir  */
-	de_ier = raw_reg_read(regs, DEIER);
-	raw_reg_write(regs, DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);
-
-	/* Disable south interrupts. We'll only write to SDEIIR once, so further
-	 * interrupts will will be stored on its back queue, and then we'll be
-	 * able to process them after we restore SDEIER (as soon as we restore
-	 * it, we'll get an interrupt if SDEIIR still has something to process
-	 * due to its back queue). */
-	if (!HAS_PCH_NOP(display)) {
-		sde_ier = raw_reg_read(regs, SDEIER);
-		raw_reg_write(regs, SDEIER, 0);
-	}
+	/* Disable master and south interrupts */
+	ilk_display_irq_master_disable(display, &de_ier, &sde_ier);
 
 	/* Find, clear, then process each source of interrupt */
 
@@ -449,15 +438,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
-	de_iir = raw_reg_read(regs, DEIIR);
-	if (de_iir) {
-		raw_reg_write(regs, DEIIR, de_iir);
-		if (DISPLAY_VER(display) >= 7)
-			ivb_display_irq_handler(display, de_iir);
-		else
-			ilk_display_irq_handler(display, de_iir);
+	if (ilk_display_irq_handler(display))
 		ret = IRQ_HANDLED;
-	}
 
 	if (GRAPHICS_VER(i915) >= 6) {
 		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
@@ -468,9 +450,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		}
 	}
 
-	raw_reg_write(regs, DEIER, de_ier);
-	if (sde_ier)
-		raw_reg_write(regs, SDEIER, sde_ier);
+	/* Re-enable master and south interrupts */
+	ilk_display_irq_master_enable(display, de_ier, sde_ier);
 
 	pmu_irq_stats(i915, ret);
 
-- 
2.47.3

