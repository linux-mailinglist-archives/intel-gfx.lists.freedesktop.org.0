Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B210ACCD234
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 19:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52EF10E66B;
	Thu, 18 Dec 2025 18:20:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGkR2avq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7084010E37D;
 Thu, 18 Dec 2025 18:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766082056; x=1797618056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G+HWrLbW/0dIn4/RcaDSJ4woeU2f/w1DPM/SMyttGk0=;
 b=mGkR2avq4prvuOYvQ8DRV2DIRvbp3zHKyAp4zaUHe5QOD/0gIq/poG7s
 NZKB/tHMlZcWDcxfhiixPdO+0MirZep0Ud6p3vY3BX1nRQJfaQY60rP8p
 MGHBP+yge+GYMMX95aVEhsDwd/c7Suj6ceQYsvS/HGRnnmHqBvCS4NlyO
 24envtLbdIgxkfMIQEgeJVgc12cKAdC6azK8Ivvzo24Q3tlcUg3kcH1VP
 DbbNy896FxoepvMdHYE3jV21dYoX7z8hSc8z1+PelIzyGSftIwWb6FIrU
 q1PT9xwJjRRXMyv0feXrKtHojMQLD1XszYvGe7hPpmSWUOgCgkIcEnV4J A==;
X-CSE-ConnectionGUID: ug3K20hZQSu6RJLi9GZeGQ==
X-CSE-MsgGUID: 4F6xJv2dTpG3Q39wd+sYGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="90701378"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="90701378"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 10:20:56 -0800
X-CSE-ConnectionGUID: P/oad6yyRPifuPl/rsplaA==
X-CSE-MsgGUID: rL1veabHRwGFNzJDNOLVwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203170819"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.97])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 10:20:54 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3] drm/i915/pc8: Add parent interface for PC8 forcewake tricks
Date: Thu, 18 Dec 2025 20:20:52 +0200
Message-ID: <20251218182052.18756-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
References: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
v3: Rebase due to shuffling

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_power.c    |  8 ++---
 drivers/gpu/drm/i915/display/intel_parent.c   | 17 ++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  4 +++
 drivers/gpu/drm/i915/i915_display_pc8.c       | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_display_pc8.h       |  9 ++++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  |  8 +++++
 8 files changed, 76 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.c
 create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f01b5d8a07c7..5f7b2bbe448c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 
 # core display adaptation
 i915-y += \
+	i915_display_pc8.o \
 	i915_hdcp_gsc.o \
 	i915_panic.o
 
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
index 9b1a84a439e9..72ae553f79a4 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -75,6 +75,23 @@ void intel_parent_panic_finish(struct intel_display *display, struct intel_panic
 	display->parent->panic->finish(panic);
 }
 
+/* pc8 */
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
 /* rps */
 bool intel_parent_rps_available(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index a2a631fba118..47cdc14f9aa2 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -32,6 +32,10 @@ struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
 int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
 
+/* pc8 */
+void intel_parent_pc8_block(struct intel_display *display);
+void intel_parent_pc8_unblock(struct intel_display *display);
+
 /* rps */
 bool intel_parent_rps_available(struct intel_display *display);
 void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
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
index 75f503e52e70..e025273e9ab1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -89,6 +89,7 @@
 #include "pxp/intel_pxp_pm.h"
 
 #include "i915_debugfs.h"
+#include "i915_display_pc8.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
@@ -765,6 +766,7 @@ static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
 	.irq = &i915_display_irq_interface,
 	.panic = &i915_display_panic_interface,
+	.pc8 = &i915_display_pc8_interface,
 	.rpm = &i915_display_rpm_interface,
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 55d4df714645..10c50b42844e 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -36,6 +36,11 @@ struct intel_display_panic_interface {
 	void (*finish)(struct intel_panic *panic);
 };
 
+struct intel_display_pc8_interface {
+	void (*block)(struct drm_device *drm);
+	void (*unblock)(struct drm_device *drm);
+};
+
 struct intel_display_rpm_interface {
 	struct ref_tracker *(*get)(const struct drm_device *drm);
 	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
@@ -96,6 +101,9 @@ struct intel_display_parent_interface {
 	/** @panic: Panic interface */
 	const struct intel_display_panic_interface *panic;
 
+	/** @pc8: PC8 interface. Optional. */
+	const struct intel_display_pc8_interface *pc8;
+
 	/** @rpm: Runtime PM functions */
 	const struct intel_display_rpm_interface *rpm;
 
-- 
2.51.2

