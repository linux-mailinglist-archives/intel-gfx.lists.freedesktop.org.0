Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5994BFF4A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9201A10E8D1;
	Tue, 22 Feb 2022 16:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AED10E8BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548708; x=1677084708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KFdy9gQDqllA6U4pIVf5FBy85oXnsauFmkunnS8zO3U=;
 b=mxRhqm2jVBSdn//TB2WSfZxnviPteH4GisWzRyHAkjc2/81/MEOnjhTH
 1QwPmJKOQniGyo7spkeSax3/TKul5PbV0IcketUHqkBXXLM2jSn04+9Qj
 ePe/44Q9dEYe25vvUHOsBKst8vQn/QwSx3Zw1EzTRwuavp3Dx48vQHiNe
 DO1RbA/lrVJnj0l2O/Q9yZc9pbKRSApxh6/OXjXZ7aRntAlCB0VDkAw3L
 xftnL528h8iwgcsB5ApBs7qmuX2jakryiafefqg9RacYpT2Llv5Nrjm0R
 powkZF19lU5fIf/Zz/KY2vVbCggH9VJlCGRTHyf/PSIMSStcCQqXOXyYk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985520"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985520"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828304"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:46 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:34 +0200
Message-Id: <20220222165137.1004194-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Move power well
 get/put/enable/disable functions to a new file
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the power well get/put/enable/disable hooks to the new
intel_display_power_well.c file. The motivation is to reduce the clutter
in intel_display_power.c, keeping the functionality related to power
domains in that file and moving the low-level power well functionality
to intel_display_power_well.c.

No functional change.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_power.c    | 127 +-----------------
 .../i915/display/intel_display_power_well.c   |  41 ++++++
 .../i915/display/intel_display_power_well.h   | 115 ++++++++++++++++
 4 files changed, 158 insertions(+), 126 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_well.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_well.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9d588d936e3dc..1a771ee5b1d01 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -212,6 +212,7 @@ i915-y += \
 	display/intel_cursor.o \
 	display/intel_display.o \
 	display/intel_display_power.o \
+	display/intel_display_power_well.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 32e4fc6a451e3..a18895a9aa42f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -11,6 +11,7 @@
 #include "intel_crt.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
+#include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dpio_phy.h"
@@ -26,98 +27,6 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
-struct i915_power_well_regs {
-	i915_reg_t bios;
-	i915_reg_t driver;
-	i915_reg_t kvmr;
-	i915_reg_t debug;
-};
-
-struct i915_power_well_ops {
-	const struct i915_power_well_regs *regs;
-	/*
-	 * Synchronize the well's hw state to match the current sw state, for
-	 * example enable/disable it based on the current refcount. Called
-	 * during driver init and resume time, possibly after first calling
-	 * the enable/disable handlers.
-	 */
-	void (*sync_hw)(struct drm_i915_private *dev_priv,
-			struct i915_power_well *power_well);
-	/*
-	 * Enable the well and resources that depend on it (for example
-	 * interrupts located on the well). Called after the 0->1 refcount
-	 * transition.
-	 */
-	void (*enable)(struct drm_i915_private *dev_priv,
-		       struct i915_power_well *power_well);
-	/*
-	 * Disable the well and resources that depend on it. Called after
-	 * the 1->0 refcount transition.
-	 */
-	void (*disable)(struct drm_i915_private *dev_priv,
-			struct i915_power_well *power_well);
-	/* Returns the hw enabled state. */
-	bool (*is_enabled)(struct drm_i915_private *dev_priv,
-			   struct i915_power_well *power_well);
-};
-
-/* Power well structure for haswell */
-struct i915_power_well_desc {
-	const char *name;
-	bool always_on;
-	u64 domains;
-	/* unique identifier for this power well */
-	enum i915_power_well_id id;
-	/*
-	 * Arbitraty data associated with this power well. Platform and power
-	 * well specific.
-	 */
-	union {
-		struct {
-			/*
-			 * request/status flag index in the PUNIT power well
-			 * control/status registers.
-			 */
-			u8 idx;
-		} vlv;
-		struct {
-			enum dpio_phy phy;
-		} bxt;
-		struct {
-			/*
-			 * request/status flag index in the power well
-			 * constrol/status registers.
-			 */
-			u8 idx;
-			/* Mask of pipes whose IRQ logic is backed by the pw */
-			u8 irq_pipe_mask;
-			/*
-			 * Instead of waiting for the status bit to ack enables,
-			 * just wait a specific amount of time and then consider
-			 * the well enabled.
-			 */
-			u16 fixed_enable_delay;
-			/* The pw is backing the VGA functionality */
-			bool has_vga:1;
-			bool has_fuses:1;
-			/*
-			 * The pw is for an ICL+ TypeC PHY port in
-			 * Thunderbolt mode.
-			 */
-			bool is_tc_tbt:1;
-		} hsw;
-	};
-	const struct i915_power_well_ops *ops;
-};
-
-struct i915_power_well {
-	const struct i915_power_well_desc *desc;
-	/* power well enable/disable usage count */
-	int count;
-	/* cached hw enabled state */
-	bool hw_enabled;
-};
-
 bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id);
 
@@ -259,40 +168,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 	}
 }
 
-static void intel_power_well_enable(struct drm_i915_private *dev_priv,
-				    struct i915_power_well *power_well)
-{
-	drm_dbg_kms(&dev_priv->drm, "enabling %s\n", power_well->desc->name);
-	power_well->desc->ops->enable(dev_priv, power_well);
-	power_well->hw_enabled = true;
-}
-
-static void intel_power_well_disable(struct drm_i915_private *dev_priv,
-				     struct i915_power_well *power_well)
-{
-	drm_dbg_kms(&dev_priv->drm, "disabling %s\n", power_well->desc->name);
-	power_well->hw_enabled = false;
-	power_well->desc->ops->disable(dev_priv, power_well);
-}
-
-static void intel_power_well_get(struct drm_i915_private *dev_priv,
-				 struct i915_power_well *power_well)
-{
-	if (!power_well->count++)
-		intel_power_well_enable(dev_priv, power_well);
-}
-
-static void intel_power_well_put(struct drm_i915_private *dev_priv,
-				 struct i915_power_well *power_well)
-{
-	drm_WARN(&dev_priv->drm, !power_well->count,
-		 "Use count on power well %s is already zero",
-		 power_well->desc->name);
-
-	if (!--power_well->count)
-		intel_power_well_disable(dev_priv, power_well);
-}
-
 /**
  * __intel_display_power_is_enabled - unlocked check for a power domain
  * @dev_priv: i915 device instance
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
new file mode 100644
index 0000000000000..e21190854fa0f
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_display_power_well.h"
+
+void intel_power_well_enable(struct drm_i915_private *i915,
+			     struct i915_power_well *power_well)
+{
+	drm_dbg_kms(&i915->drm, "enabling %s\n", power_well->desc->name);
+	power_well->desc->ops->enable(i915, power_well);
+	power_well->hw_enabled = true;
+}
+
+void intel_power_well_disable(struct drm_i915_private *i915,
+			      struct i915_power_well *power_well)
+{
+	drm_dbg_kms(&i915->drm, "disabling %s\n", power_well->desc->name);
+	power_well->hw_enabled = false;
+	power_well->desc->ops->disable(i915, power_well);
+}
+
+void intel_power_well_get(struct drm_i915_private *i915,
+			  struct i915_power_well *power_well)
+{
+	if (!power_well->count++)
+		intel_power_well_enable(i915, power_well);
+}
+
+void intel_power_well_put(struct drm_i915_private *i915,
+			  struct i915_power_well *power_well)
+{
+	drm_WARN(&i915->drm, !power_well->count,
+		 "Use count on power well %s is already zero",
+		 power_well->desc->name);
+
+	if (!--power_well->count)
+		intel_power_well_disable(i915, power_well);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
new file mode 100644
index 0000000000000..bc77de3a8d4fc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -0,0 +1,115 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+#ifndef __INTEL_DISPLAY_POWER_WELL_H__
+#define __INTEL_DISPLAY_POWER_WELL_H__
+
+#include <linux/types.h>
+
+#include "intel_display.h"
+#include "intel_display_power.h"
+
+struct drm_i915_private;
+
+struct i915_power_well_regs {
+	i915_reg_t bios;
+	i915_reg_t driver;
+	i915_reg_t kvmr;
+	i915_reg_t debug;
+};
+
+struct i915_power_well_ops {
+	const struct i915_power_well_regs *regs;
+	/*
+	 * Synchronize the well's hw state to match the current sw state, for
+	 * example enable/disable it based on the current refcount. Called
+	 * during driver init and resume time, possibly after first calling
+	 * the enable/disable handlers.
+	 */
+	void (*sync_hw)(struct drm_i915_private *i915,
+			struct i915_power_well *power_well);
+	/*
+	 * Enable the well and resources that depend on it (for example
+	 * interrupts located on the well). Called after the 0->1 refcount
+	 * transition.
+	 */
+	void (*enable)(struct drm_i915_private *i915,
+		       struct i915_power_well *power_well);
+	/*
+	 * Disable the well and resources that depend on it. Called after
+	 * the 1->0 refcount transition.
+	 */
+	void (*disable)(struct drm_i915_private *i915,
+			struct i915_power_well *power_well);
+	/* Returns the hw enabled state. */
+	bool (*is_enabled)(struct drm_i915_private *i915,
+			   struct i915_power_well *power_well);
+};
+
+struct i915_power_well_desc {
+	const char *name;
+	bool always_on;
+	u64 domains;
+	/* unique identifier for this power well */
+	enum i915_power_well_id id;
+	/*
+	 * Arbitraty data associated with this power well. Platform and power
+	 * well specific.
+	 */
+	union {
+		struct {
+			/*
+			 * request/status flag index in the PUNIT power well
+			 * control/status registers.
+			 */
+			u8 idx;
+		} vlv;
+		struct {
+			enum dpio_phy phy;
+		} bxt;
+		struct {
+			/*
+			 * request/status flag index in the power well
+			 * constrol/status registers.
+			 */
+			u8 idx;
+			/* Mask of pipes whose IRQ logic is backed by the pw */
+			u8 irq_pipe_mask;
+			/*
+			 * Instead of waiting for the status bit to ack enables,
+			 * just wait a specific amount of time and then consider
+			 * the well enabled.
+			 */
+			u16 fixed_enable_delay;
+			/* The pw is backing the VGA functionality */
+			bool has_vga:1;
+			bool has_fuses:1;
+			/*
+			 * The pw is for an ICL+ TypeC PHY port in
+			 * Thunderbolt mode.
+			 */
+			bool is_tc_tbt:1;
+		} hsw;
+	};
+	const struct i915_power_well_ops *ops;
+};
+
+struct i915_power_well {
+	const struct i915_power_well_desc *desc;
+	/* power well enable/disable usage count */
+	int count;
+	/* cached hw enabled state */
+	bool hw_enabled;
+};
+
+void intel_power_well_enable(struct drm_i915_private *i915,
+			     struct i915_power_well *power_well);
+void intel_power_well_disable(struct drm_i915_private *i915,
+			      struct i915_power_well *power_well);
+void intel_power_well_get(struct drm_i915_private *i915,
+			  struct i915_power_well *power_well);
+void intel_power_well_put(struct drm_i915_private *i915,
+			  struct i915_power_well *power_well);
+
+#endif
-- 
2.27.0

