Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1C6B88A8C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D5410E97D;
	Fri, 19 Sep 2025 09:52:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DD3DLhcU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8A510E97E;
 Fri, 19 Sep 2025 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275548; x=1789811548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9sQM5WNyWrIPL8T9z7amjGI5BZlpPj0hB8pKU+hh+OU=;
 b=DD3DLhcURzn9IqCfSXiRcWKj+/vn7yT7Y5EXLiVWXCNJFhBzIEhnvZ9B
 lrxoy4MUznggiKbqfzvgu5teboi6Y2nZOXfS6iC51q1nPALpKur5R2uGD
 LDTFK/ffPrE5fhf8oaRRdiImhUWW0rxYXa67y4m5qK2wPKfogQgBbGhHT
 Z0tAVI3x0GaBy0ossJZaHoSeIWXOLx2uXIvWXX6T05XCG91jSOUhj3SDS
 tEqsbpYbP2ItRb+vDLg+/k2HIZCfGN4IObH+1zp0FFaTif9wslQTJ7fx2
 K71QILAeMBAfvgLXM6UqJOxx9NstY+jtjM61MIIH+AZwhlO3/cLzKX6Kd g==;
X-CSE-ConnectionGUID: PE+T5Aa/QRSgFkvcV5C2dQ==
X-CSE-MsgGUID: 3noO4ukvScOJUw3IaVJpHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316202"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316202"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:27 -0700
X-CSE-ConnectionGUID: bcwh7zcMRzWlK7O2RqI9QA==
X-CSE-MsgGUID: GIBZCVBzRaeUiWXgRqq70A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554320"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 6/6] drm/i915/irq: split ILK display irq handling
Date: Fri, 19 Sep 2025 12:51:49 +0300
Message-ID: <f549e6d2a50bcaf0a4ca559f867828357f3927aa.1758275448.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758275448.git.jani.nikula@intel.com>
References: <cover.1758275448.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 48 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  4 +-
 drivers/gpu/drm/i915/i915_irq.c               | 30 ++----------
 3 files changed, 52 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 4d51900123ea..c2320c1718f7 100644
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
@@ -972,6 +972,50 @@ void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 	}
 }
 
+void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier)
+{
+	/* disable master interrupt before clearing iir  */
+	*de_ier = intel_de_read(display, DEIER);
+	intel_de_write(display, DEIER, *de_ier & ~DE_MASTER_IRQ_CONTROL);
+
+	/*
+	 * Disable south interrupts. We'll only write to SDEIIR once, so further
+	 * interrupts will be stored on its back queue, and then we'll be able
+	 * to process them after we restore SDEIER (as soon as we restore it,
+	 * we'll get an interrupt if SDEIIR still has something to process due
+	 * to its back queue).
+	 */
+	if (!HAS_PCH_NOP(display)) {
+		*sde_ier = intel_de_read(display, SDEIER);
+		intel_de_write(display, SDEIER, 0);
+	} else {
+		*sde_ier = 0;
+	}
+}
+
+bool ilk_display_irq_handler(struct intel_display *display, u32 de_ier, u32 sde_ier)
+{
+	u32 de_iir;
+	bool handled = false;
+
+	de_iir = intel_de_read(display, DEIIR);
+	if (de_iir) {
+		intel_de_write(display, DEIIR, de_iir);
+		if (DISPLAY_VER(display) >= 7)
+			_ivb_display_irq_handler(display, de_iir);
+		else
+			_ilk_display_irq_handler(display, de_iir);
+		handled = true;
+	}
+
+	intel_de_write(display, DEIER, de_ier);
+
+	if (sde_ier)
+		intel_de_write(display, SDEIER, sde_ier);
+
+	return handled;
+}
+
 static u32 gen8_de_port_aux_mask(struct intel_display *display)
 {
 	u32 mask;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index e44d88e0d7e7..778195bd6052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -47,8 +47,8 @@ void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
 
-void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
-void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
+void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
+bool ilk_display_irq_handler(struct intel_display *display, u32 de_ier, u32 sde_ier);
 void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
 void gen11_display_irq_handler(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 312f7e42931a..65aa35866a5a 100644
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
 
@@ -458,19 +447,8 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		}
 	}
 
-	de_iir = raw_reg_read(regs, DEIIR);
-	if (de_iir) {
-		raw_reg_write(regs, DEIIR, de_iir);
-		if (DISPLAY_VER(display) >= 7)
-			ivb_display_irq_handler(display, de_iir);
-		else
-			ilk_display_irq_handler(display, de_iir);
+	if (ilk_display_irq_handler(display, de_ier, sde_ier))
 		ret = IRQ_HANDLED;
-	}
-
-	raw_reg_write(regs, DEIER, de_ier);
-	if (sde_ier)
-		raw_reg_write(regs, SDEIER, sde_ier);
 
 	pmu_irq_stats(i915, ret);
 
-- 
2.47.3

