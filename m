Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E508ACAFB8F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA5210E1CB;
	Tue,  9 Dec 2025 11:11:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZwt58nZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F36510E1CB;
 Tue,  9 Dec 2025 11:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765278716; x=1796814716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a40wswZeVsBn9T05EDsMZAGGxr1cNEf1S6fAEl57t5k=;
 b=kZwt58nZ4svgEd3Aplvu4IN3jm3S0o3c+eZwV8F3bIiCfHfui6BDhEFB
 2tai04HlmaR4eBgs0eZ26BJZk3/sr46k0ksHLB3Stl+AzW0ANTbHnGmRz
 NU0BTryXzJn+h3Foc10en1TZpL3JQZG/yXYrHCymA5jqozKcQF7tRFj/S
 JZTAfIAgyI5OS97/mnM7MKfFuX6Me3hsmopF0oIIF9YtAEyE7g2gqCcmo
 yE8Gzm1Gs4sg4cCVeFWI9V1g8YuuSowurEFva7eK8aapePKJwHL9ZsYBw
 rb+KOhMc7jwvzm9gG57p2OoEKHYSY63ow/xHFaEEF0Ff+Kiq5ur3f6052 w==;
X-CSE-ConnectionGUID: tphFwNN/Tv6uFiLuIQyhkQ==
X-CSE-MsgGUID: t5y5o9+HRi+izdjKjT7qCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78593107"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78593107"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:11:56 -0800
X-CSE-ConnectionGUID: TWqDxPrnQ7SYqvW+NPO0iQ==
X-CSE-MsgGUID: k0aj+h6yTlKKxL/jP43p5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="233582943"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:11:55 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/pc8: Add parent interface for PC8 forcewake tricks
Date: Tue,  9 Dec 2025 13:11:50 +0200
Message-ID: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We use forcewake to prevent the SoC from actually entering
PC8 while performing the PC8 disable sequence. Hide that
behind a new parent interface to eliminate the naked
forcewake/uncore usage from the display power code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_power.c    |  8 ++---
 drivers/gpu/drm/i915/display/intel_parent.c   | 10 +++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++
 drivers/gpu/drm/i915/i915_display_pc8.c       | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_display_pc8.h       |  9 ++++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  |  8 +++++
 8 files changed, 67 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.c
 create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 175bd99e1d0d..b57e51d626b1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 
 # core display adaptation
 i915-y += \
+	i915_display_pc8.o \
 	i915_hdcp_gsc.o
 
 # "Graphics Technology" (aka we talk to the gpu)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9f323c39d798..47042a4c3a30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1339,10 +1339,10 @@ static void hsw_restore_lcpll(struct intel_display *display)
 		return;
 
 	/*
-	 * Make sure we're not on PC8 state before disabling PC8, otherwise
-	 * we'll hang the machine. To prevent PC8 state, just enable force_wake.
+	 * Make sure we're not on PC8 state before disabling
+	 * PC8, otherwise we'll hang the machine.
 	 */
-	intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
+	intel_parent_pc8_block(display);
 
 	if (val & LCPLL_POWER_DOWN_ALLOW) {
 		val &= ~LCPLL_POWER_DOWN_ALLOW;
@@ -1372,7 +1372,7 @@ static void hsw_restore_lcpll(struct intel_display *display)
 				"Switching back to LCPLL failed\n");
 	}
 
-	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
+	intel_parent_pc8_unblock(display);
 
 	intel_update_cdclk(display);
 	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 2ea310cc3509..9201d506c851 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -56,6 +56,16 @@ void intel_parent_irq_synchronize(struct intel_display *display)
 	display->parent->irq->synchronize(display->drm);
 }
 
+void intel_parent_pc8_block(struct intel_display *display)
+{
+	display->parent->pc8->block(display->drm);
+}
+
+void intel_parent_pc8_unblock(struct intel_display *display)
+{
+	display->parent->pc8->unblock(display->drm);
+}
+
 bool intel_parent_rps_available(struct intel_display *display)
 {
 	return display->parent->rps;
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 8f91a6f75c53..974a016ab3be 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -22,6 +22,9 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+void intel_parent_pc8_block(struct intel_display *display);
+void intel_parent_pc8_unblock(struct intel_display *display);
+
 bool intel_parent_rps_available(struct intel_display *display);
 void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
 void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
diff --git a/drivers/gpu/drm/i915/i915_display_pc8.c b/drivers/gpu/drm/i915/i915_display_pc8.c
new file mode 100644
index 000000000000..443935d282e3
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_display_pc8.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2025, Intel Corporation.
+ */
+
+#include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
+
+#include "i915_drv.h"
+#include "intel_uncore.h"
+
+static void i915_display_pc8_block(struct drm_device *drm)
+{
+	struct intel_uncore *uncore = &to_i915(drm)->uncore;
+
+	/* to prevent PC8 state, just enable force_wake */
+	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
+}
+
+static void i915_display_pc8_unblock(struct drm_device *drm)
+{
+	struct intel_uncore *uncore = &to_i915(drm)->uncore;
+
+	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
+}
+
+const struct intel_display_pc8_interface i915_display_pc8_interface = {
+	.block = i915_display_pc8_block,
+	.unblock = i915_display_pc8_unblock,
+};
diff --git a/drivers/gpu/drm/i915/i915_display_pc8.h b/drivers/gpu/drm/i915/i915_display_pc8.h
new file mode 100644
index 000000000000..717f313d2a21
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_display_pc8.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_DISPLAY_PC8_H__
+#define __I915_DISPLAY_PC8_H__
+
+extern const struct intel_display_pc8_interface i915_display_pc8_interface;
+
+#endif /* __I915_DISPLAY_PC8_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d98839427ef9..723cb424b2ba 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -89,6 +89,7 @@
 #include "pxp/intel_pxp_pm.h"
 
 #include "i915_debugfs.h"
+#include "i915_display_pc8.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
@@ -761,6 +762,7 @@ static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
+	.pc8 = &i915_display_pc8_interface,
 	.rps = &i915_display_rps_interface,
 	.vgpu_active = vgpu_active,
 	.has_fenced_regions = has_fenced_regions,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 61d1b22adc83..af43b213eafa 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -41,6 +41,11 @@ struct intel_display_irq_interface {
 	void (*synchronize)(struct drm_device *drm);
 };
 
+struct intel_display_pc8_interface {
+	void (*block)(struct drm_device *drm);
+	void (*unblock)(struct drm_device *drm);
+};
+
 struct intel_display_rps_interface {
 	void (*boost_if_not_started)(struct dma_fence *fence);
 	void (*mark_interactive)(struct drm_device *drm, bool interactive);
@@ -69,6 +74,9 @@ struct intel_display_parent_interface {
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
 
+	/** @pc8: PC8 interface */
+	const struct intel_display_pc8_interface *pc8;
+
 	/** @rpm: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
-- 
2.51.2

