Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713AFA1595E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D4210EB80;
	Fri, 17 Jan 2025 22:08:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwnrOoZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C397D10E345;
 Fri, 17 Jan 2025 22:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151690; x=1768687690;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wTNFuz1/VOk3L+aI9JJfg7jJuLxOf8eiQj4il5TQtRM=;
 b=TwnrOoZxRrrsnK6WRAPjWHbvIlLmHT/4U8CQEn+/4QgAeK8/TDdBS0mT
 zXfQIGRtoB5cUGt0YHhYEg6f/S8f+zI5GbIeoitDT+SLddjVlVwC2eSG7
 v3aTxhiuvUAmMZ9LUWMY/EPsErCcXqr8sf0J6O2BzvUtyIs87mCdeuty+
 Z/DYMWnP1nPAgtqM+wRug4mVsmVlj8xD/chYHbvyEbXj2xQZSsgnumHIQ
 T3GfzFdi3Fv27Iwzrv0iFa9kz4GhBjC943r+AQlNTdXkr2qGl35+Sb5Ux
 sn+B24HDdPk6QTmSAuC/uPqHMPaUc6DDFdY1G1KFzFMR+rUSOxDHmu8rs w==;
X-CSE-ConnectionGUID: JJiOimHHQK2Uq+vlM6BlmA==
X-CSE-MsgGUID: BBVsccgnRBSJvOP18lv7+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48188789"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48188789"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:10 -0800
X-CSE-ConnectionGUID: 3SXmVJXCRdGMCQBhzskyMw==
X-CSE-MsgGUID: g6ZeH0qXR4CpUrfaW30L/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110915383"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
Date: Fri, 17 Jan 2025 19:06:53 -0300
Message-ID: <20250117220747.87927-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250117220747.87927-1-gustavo.sousa@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

The DMC wakelock code needs to keep track of register offsets that need
the wakelock for proper access. If one of the necessary offsets are
missed, then the failure in asserting the wakelock is very likely to
cause problems down the road.

A miss could happen for at least two different reasons:

- We might have forgotten to add the offset (or range) to the relevant
  tables tracked by the driver in the first place.

- Or updates to either the DMC firmware or the display IP that require
  new offsets to be tracked and we fail to realize that.

To help capture these cases, let's introduce a debugfs interface for the
DMC wakelock.

In this part, we export a buffer containing offsets of registers that
were considered not needing the wakelock by our driver. In an upcoming
change we will also allow defining an extra set of offset ranges to be
tracked by our driver.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
 .../drm/i915/display/intel_dmc_wl_debugfs.c   | 251 ++++++++++++++++++
 .../drm/i915/display/intel_dmc_wl_debugfs.h   |  29 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 7 files changed, 290 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3dda9f0eda82..ac1ab79de9c8 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -251,6 +251,7 @@ i915-y += \
 	display/intel_display_wa.o \
 	display/intel_dmc.o \
 	display/intel_dmc_wl.o \
+	display/intel_dmc_wl_debugfs.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f1d76484025a..b032535f4830 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -26,6 +26,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
+#include "intel_dmc_wl_debugfs.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
@@ -883,6 +884,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 
 	intel_bios_debugfs_register(display);
 	intel_cdclk_debugfs_register(display);
+	intel_dmc_wl_debugfs_register(display);
 	intel_dmc_debugfs_register(display);
 	intel_dp_test_debugfs_register(display);
 	intel_fbc_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 330b43a72e08..3686d4e90167 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -338,6 +338,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	spin_lock_init(&wl->lock);
 	refcount_set(&wl->refcount,
 		     display->params.enable_dmc_wl == ENABLE_DMC_WL_ALWAYS_LOCKED ? 1 : 0);
+	intel_dmc_wl_debugfs_init(display);
 }
 
 /* Must only be called as part of enabling dynamic DC states. */
@@ -444,8 +445,10 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	spin_lock_irqsave(&wl->lock, flags);
 
 	if (i915_mmio_reg_valid(reg) &&
-	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
+	    !intel_dmc_wl_check_range(display, reg, wl->dc_state)) {
+		intel_dmc_wl_debugfs_log_untracked(display, i915_mmio_reg_offset(reg));
 		goto out_unlock;
+	}
 
 	if (!wl->enabled) {
 		if (!refcount_inc_not_zero(&wl->refcount))
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index 5488fbdf29b8..d11b0ab50b3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -11,6 +11,7 @@
 #include <linux/refcount.h>
 
 #include "i915_reg_defs.h"
+#include "intel_dmc_wl_debugfs.h"
 
 struct intel_display;
 
@@ -27,6 +28,7 @@ struct intel_dmc_wl {
 	 */
 	u32 dc_state;
 	struct delayed_work work;
+	struct intel_dmc_wl_dbg dbg;
 };
 
 void intel_dmc_wl_init(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
new file mode 100644
index 000000000000..41e59d775fe5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
@@ -0,0 +1,251 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (C) 2025 Intel Corporation
+ */
+
+#include <linux/debugfs.h>
+
+#include <drm/drm_device.h>
+#include <drm/drm_managed.h>
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_dmc_wl_debugfs.h"
+
+#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
+
+/*
+ * DOC: DMC wakelock debugfs
+ *
+ * The DMC wakelock code needs to keep track of register offsets that need the
+ * wakelock for proper access. If one of the necessary offsets are missed, then
+ * the failure in asserting the wakelock is very likely to cause problems down
+ * the road.
+ *
+ * A miss could happen for at least two different reasons:
+ *
+ * - We might have forgotten to add the offset (or range) to the relevant
+ *   tables tracked by the driver in the first place.
+ *
+ * - Or updates to either the DMC firmware or the display IP that require new
+ *   offsets to be tracked and we fail to realize that.
+ *
+ * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
+ * which exports a buffer of untracked register offsets.
+ *
+ * Untracked offsets
+ * -----------------
+ *
+ * This is a buffer that records every register offset that went through the
+ * DMC wakelock check and was deemed not needing the wakelock for MMIO access.
+ *
+ * To activate the logging of offsets into such a buffer, one can do::
+ *
+ *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ * This will create a buffer with the maximum number of entries allowed
+ * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used instead to
+ * define a different size:
+ *
+ *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ * Every write to untracked_size will cause the buffer to be reset.
+ *
+ * It is also possible to read untracked_size in order to get the current
+ * value.
+ *
+ * After enabled, the buffer starts getting filled with offsets as MMIOs are
+ * performed by the driver.
+ *
+ * In order to view the content of the buffer, one can do::
+ *
+ *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
+ *   0x000c4000
+ *   0x0016fe50
+ *   0x000c7200
+ *   0x000c7204
+ *   0x00045230
+ *   0x00046440
+ *   0x00045234
+ *   0x0016fa48
+ *   0x0016fa40
+ *   0x0016fa5c
+ *   (...)
+ *
+ * The order of those offsets does not reflect the order the checks were done
+ * (some recently seen offsets are skipped to save space).
+ *
+ * Once done with it, the logging can be disabled with::
+ *
+ *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ */
+
+static int untracked_size_get(void *data, u64 *val)
+{
+	struct intel_display *display = data;
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dbg->lock, flags);
+	*val = dbg->untracked.size;
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	return 0;
+}
+
+static int untracked_size_set(void *data, u64 val)
+{
+	struct intel_display *display = data;
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	s64 new_size;
+	u32 *old_offsets;
+	u32 *new_offsets;
+	unsigned long flags;
+
+	new_size = (s64)val;
+
+	if (new_size == -1) {
+		new_size = DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
+	} else if (new_size < 0) {
+		drm_err(display->drm,
+			"%lld is invalid for untracked_size, the only negative value allowed is -1\n",
+			new_size);
+		return -EINVAL;
+	} else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
+		drm_err(display->drm,
+			"%lld too big for untracked_size, maximum allowed value is %d\n",
+			new_size,
+			DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
+		return -EINVAL;
+	}
+
+	if (new_size == 0) {
+		new_offsets = NULL;
+	} else {
+		new_offsets = drmm_kmalloc_array(display->drm, new_size, sizeof(*new_offsets),
+						 GFP_KERNEL);
+
+		if (!new_offsets)
+			return -ENOMEM;
+	}
+
+	spin_lock_irqsave(&dbg->lock, flags);
+	old_offsets = dbg->untracked.offsets;
+	dbg->untracked.offsets = new_offsets;
+	dbg->untracked.size = new_size;
+	dbg->untracked.head = 0;
+	dbg->untracked.len = 0;
+	dbg->untracked.overflow = false;
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	if (old_offsets)
+		drmm_kfree(display->drm, old_offsets);
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
+			       untracked_size_get,
+			       untracked_size_set,
+			       "%lld\n");
+
+static int untracked_show(struct seq_file *m, void *data)
+{
+	struct intel_display *display = m->private;
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	unsigned long flags;
+	size_t remaining;
+	size_t i;
+
+	spin_lock_irqsave(&dbg->lock, flags);
+
+	remaining = dbg->untracked.len;
+	i = dbg->untracked.head;
+
+	while (remaining--) {
+		if (i == 0)
+			i = dbg->untracked.size;
+
+		seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
+	}
+
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(untracked);
+
+void intel_dmc_wl_debugfs_init(struct intel_display *display)
+{
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+
+	spin_lock_init(&dbg->lock);
+}
+
+void intel_dmc_wl_debugfs_register(struct intel_display *display)
+{
+	struct dentry *dir;
+
+	if (!HAS_DMC_WAKELOCK(display))
+		return;
+
+	dir = debugfs_create_dir("intel_dmc_wl", display->drm->debugfs_root);
+	if (IS_ERR(dir))
+		return;
+
+	debugfs_create_file("untracked_size", 0644, dir, display,
+			    &untracked_size_fops);
+	debugfs_create_file("untracked", 0644, dir, display,
+			    &untracked_fops);
+}
+
+static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
+{
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	int look_back = 32;
+	size_t i;
+
+	if (look_back > dbg->untracked.len)
+		look_back = dbg->untracked.len;
+
+	i = dbg->untracked.head;
+
+	while (look_back--) {
+		if (i == 0)
+			i = dbg->untracked.size;
+
+		if (dbg->untracked.offsets[--i] == offset)
+			return true;
+	}
+
+	return false;
+}
+
+void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset)
+{
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dbg->lock, flags);
+
+	if (!dbg->untracked.size)
+		goto out_unlock;
+
+	/* Save some space by not repeating recent offsets. */
+	if (untracked_has_recent_offset(display, offset))
+		goto out_unlock;
+
+	dbg->untracked.offsets[dbg->untracked.head] = offset;
+	dbg->untracked.head = (dbg->untracked.head + 1) % dbg->untracked.size;
+	if (dbg->untracked.len < dbg->untracked.size)
+		dbg->untracked.len++;
+
+	if (dbg->untracked.len == dbg->untracked.size && !dbg->untracked.overflow) {
+		dbg->untracked.overflow = true;
+		drm_warn(display->drm, "Overflow detected in DMC wakelock debugfs untracked offsets\n");
+	}
+
+out_unlock:
+	spin_unlock_irqrestore(&dbg->lock, flags);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
new file mode 100644
index 000000000000..9437c324966f
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (C) 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_DMC_WL_DEBUGFS_H__
+#define __INTEL_DMC_WL_DEBUGFS_H__
+
+#include <linux/types.h>
+#include <linux/spinlock.h>
+
+struct intel_display;
+
+struct intel_dmc_wl_dbg {
+	spinlock_t lock; /* protects everything below */
+	struct {
+		u32 *offsets;
+		size_t head;
+		size_t len;
+		size_t size;
+		bool overflow;
+	} untracked;
+};
+
+void intel_dmc_wl_debugfs_init(struct intel_display *display);
+void intel_dmc_wl_debugfs_register(struct intel_display *display);
+void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
+
+#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 81f63258a7e1..f03fbdbcb1a4 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_wa.o \
 	i915-display/intel_dkl_phy.o \
 	i915-display/intel_dmc.o \
+	i915-display/intel_dmc_wl_debugfs.o \
 	i915-display/intel_dp.o \
 	i915-display/intel_dp_aux.o \
 	i915-display/intel_dp_aux_backlight.o \
-- 
2.48.0

