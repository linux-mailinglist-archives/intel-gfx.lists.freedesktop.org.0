Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB7CB39D6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 18:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658A410E789;
	Wed, 10 Dec 2025 17:26:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T3p2E1fw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C513010E789;
 Wed, 10 Dec 2025 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765387580; x=1796923580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L9q2lzRpODfR32TU66zYiEVAm3DH5DfMU8o7zM7qmxE=;
 b=T3p2E1fwBvvm2H262AT8ylPhKD2uZlnzUytNWBo1yas8x/647dTXxQqM
 pc2+22Gf/EelkKJ0FHKzOJWq9/HLbjrpKfEabJawFC/M6jsaROPTt/h4C
 iaFomrWJzh4SdOv2byOfR1tCESYBG4ZFGoZ+CWGMwSPMA/tSEiET68BQk
 nw78XJ0YX7Ik5L2gWYkBOEhv8pTDBLFc0KaHVAbE41vd/3F9WbUseHI0Q
 QwUBeXzPN540KTwMcq4N27IaEHuklKQvVN+k2UqPMXGVGTJ9t97DftLl7
 hfWMBd2JzwGXankExuVCaEFEBQW9v4OXpOICGYuYSk3CHgU0aPGG0gIam g==;
X-CSE-ConnectionGUID: W8cGWXXJR6q7OAQkJuAWUA==
X-CSE-MsgGUID: kpcQIpd0RkWTkFSM8CUAuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67412003"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="67412003"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 09:26:12 -0800
X-CSE-ConnectionGUID: q2gtvvsPQhisK1c3aLvC/Q==
X-CSE-MsgGUID: ZqTAC+bfSmuPuUt2P8pvvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="196470259"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 09:26:09 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915/pc8: Add parent interface for PC8 forcewake tricks
Date: Wed, 10 Dec 2025 19:26:06 +0200
Message-ID: <20251210172606.29729-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
References: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
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

v2: Mark the interface optional and warn if
    someone calls it when not provided (Jani)
    Include the header to make sure the extern
    declaration matches the definition (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_power.c    |  8 ++---
 drivers/gpu/drm/i915/display/intel_parent.c   | 17 ++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++
 drivers/gpu/drm/i915/i915_display_pc8.c       | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_display_pc8.h       |  9 ++++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  |  8 +++++
 8 files changed, 75 insertions(+), 4 deletions(-)
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
index 2ea310cc3509..ceb8ceea4ba4 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -17,6 +17,7 @@
  * function pointer interface.
  */
 
+#include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
 #include "intel_display_core.h"
@@ -56,6 +57,22 @@ void intel_parent_irq_synchronize(struct intel_display *display)
 	display->parent->irq->synchronize(display->drm);
 }
 
+void intel_parent_pc8_block(struct intel_display *display)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->pc8))
+		return;
+
+	display->parent->pc8->block(display->drm);
+}
+
+void intel_parent_pc8_unblock(struct intel_display *display)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->pc8))
+		return;
+
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
index 000000000000..2af5dbab20ef
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_display_pc8.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2025, Intel Corporation.
+ */
+
+#include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
+
+#include "i915_display_pc8.h"
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
index 61d1b22adc83..f07d265e90e5 100644
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
 
+	/** @pc8: PC8 interface. Optional. */
+	const struct intel_display_pc8_interface *pc8;
+
 	/** @rpm: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
-- 
2.51.2

