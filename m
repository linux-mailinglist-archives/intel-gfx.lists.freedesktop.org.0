Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D76087EA35
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E102910F73C;
	Mon, 18 Mar 2024 13:38:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HewzNpNf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E6710EF0D;
 Mon, 18 Mar 2024 13:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769101; x=1742305101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qzHo0LqUfvw77QVxai1LSbWeFnr1GKPRs9LuIaf2R50=;
 b=HewzNpNfzJpDK1PTzTBJFKvek4+jP75TgwzayBQzO91arjZJeM8cUKCh
 KuOXeSSCpgsbRuDqDG6NAKf0q360dndS345WeNlneFEkj0jV3av1jQGmb
 FZi3shf1hmwQJIHS8mlxj1oGDhVuk2GOWOUi7H5DLbnbS6sTjiacoe6PG
 BrmmKlBmMHfa18TH5GSWi8fJaiDpFa+tX8UzfY7X83WpNUeXk0qvOYtpL
 U0npUS1nEnLKt3zMplmNjTAx0/sh4eDZse0+lVciw75sj56wpe6VexNee
 k4A4fKrG4Oh53CQ9F5BL7SwMjg51H3jROubQsM1oUj3XeZ9+vBrFcIkYZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16218020"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16218020"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13570048"
Received: from dcroitox-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.126])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:18 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
Date: Mon, 18 Mar 2024 15:37:54 +0200
Message-Id: <20240318133757.1479189-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240318133757.1479189-1-luciano.coelho@intel.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
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

In order to reduce the DC5->DC2 restore time, wakelocks have been
introduced in DMC so the driver can tell it when registers and other
memory areas are going to be accessed and keep their respective blocks
awake.

Implement this in the driver by adding the concept of DMC wakelocks.
When the driver needs to access memory which lies inside pre-defined
ranges, it will tell DMC to set the wakelock, access the memory, then
wait for a while and clear the wakelock.

The wakelock state is protected in the driver with spinlocks to
prevent concurrency issues.

BSpec: 71583
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |  97 +++++++-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_driver.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 226 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  30 +++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 8 files changed, 356 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3ef6ed41e62b..af83ea94c771 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -270,6 +270,7 @@ i915-y += \
 	display/intel_display_rps.o \
 	display/intel_display_wa.o \
 	display/intel_dmc.o \
+	display/intel_dmc_wl.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 42552d8c151e..6728a0077793 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -13,52 +13,125 @@
 static inline u32
 intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
-	return intel_uncore_read(&i915->uncore, reg);
+	u32 val;
+
+	intel_dmc_wl_get(i915, reg);
+
+	val = intel_uncore_read(&i915->uncore, reg);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return val;
 }
 
 static inline u8
 intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 {
-	return intel_uncore_read8(&i915->uncore, reg);
+	u8 val;
+
+	intel_dmc_wl_get(i915, reg);
+
+	val = intel_uncore_read8(&i915->uncore, reg);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return val;
 }
 
 static inline u64
 intel_de_read64_2x32(struct drm_i915_private *i915,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
 {
-	return intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
+	u64 val;
+
+	intel_dmc_wl_get(i915, lower_reg);
+	intel_dmc_wl_get(i915, upper_reg);
+
+	val = intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
+
+	intel_dmc_wl_put(i915, upper_reg);
+	intel_dmc_wl_put(i915, lower_reg);
+
+	return val;
 }
 
 static inline void
 intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
+	intel_dmc_wl_get(i915, reg);
+
 	intel_uncore_posting_read(&i915->uncore, reg);
+
+	intel_dmc_wl_put(i915, reg);
 }
 
 static inline void
 intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 {
+	intel_dmc_wl_get(i915, reg);
+
 	intel_uncore_write(&i915->uncore, reg, val);
+
+	intel_dmc_wl_put(i915, reg);
 }
 
 static inline u32
-intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
+__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
+		    u32 clear, u32 set)
 {
 	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
 }
 
+static inline u32
+intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
+{
+	u32 val;
+
+	intel_dmc_wl_get(i915, reg);
+
+	val = __intel_de_rmw_nowl(i915, reg, clear, set);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return val;
+}
+
+static inline int
+__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
+			       u32 mask, u32 value, unsigned int timeout)
+{
+	return intel_wait_for_register(&i915->uncore, reg, mask,
+				       value, timeout);
+}
+
 static inline int
 intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
 			   u32 mask, u32 value, unsigned int timeout)
 {
-	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
+	int ret;
+
+	intel_dmc_wl_get(i915, reg);
+
+	ret = __intel_wait_for_register_nowl(i915, reg, mask, value, timeout);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return ret;
 }
 
 static inline int
 intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
 			      u32 mask, u32 value, unsigned int timeout)
 {
-	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
+	int ret;
+
+	intel_dmc_wl_get(i915, reg);
+
+	ret = intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return ret;
 }
 
 static inline int
@@ -67,8 +140,16 @@ __intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
 			     unsigned int fast_timeout_us,
 			     unsigned int slow_timeout_ms, u32 *out_value)
 {
-	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
-					 fast_timeout_us, slow_timeout_ms, out_value);
+	int ret;
+
+	intel_dmc_wl_get(i915, reg);
+
+	ret = __intel_wait_for_register(&i915->uncore, reg, mask, value,
+					fast_timeout_us, slow_timeout_ms, out_value);
+
+	intel_dmc_wl_put(i915, reg);
+
+	return ret;
 }
 
 static inline int
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 2167dbee5eea..c40719073510 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -26,6 +26,7 @@
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
+#include "intel_dmc_wl.h"
 #include "intel_wm_types.h"
 
 struct task_struct;
@@ -534,6 +535,7 @@ struct intel_display {
 	struct intel_overlay *overlay;
 	struct intel_display_params params;
 	struct intel_vbt_data vbt;
+	struct intel_dmc_wl wl;
 	struct intel_wm wm;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 87dd07e0d138..e4015557af6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -198,6 +198,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
+	intel_dmc_wl_init(i915);
 }
 
 /* part #1: call before irq install */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 90d0dbb41cfe..1bf446f96a10 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -97,4 +97,10 @@
 #define TGL_DMC_DEBUG3		_MMIO(0x101090)
 #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
 
+#define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
+#define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
+#define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
+#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
+#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
+
 #endif /* __INTEL_DMC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
new file mode 100644
index 000000000000..5c3d8204ae7e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (C) 2023 Intel Corporation
+ */
+
+#include <linux/kernel.h>
+
+#include "intel_de.h"
+#include "intel_dmc_regs.h"
+#include "intel_dmc_wl.h"
+
+/**
+ * DOC: DMC wakelock support
+ *
+ * Wake lock is the mechanism to cause display engine to exit DC
+ * states to allow programming to registers that are powered down in
+ * those states. Previous projects exited DC states automatically when
+ * detecting programming. Now software controls the exit by
+ * programming the wake lock. This improves system performance and
+ * system interactions and better fits the flip queue style of
+ * programming. Wake lock is only required when DC5, DC6, or DC6v have
+ * been enabled in DC_STATE_EN and the wake lock mode of operation has
+ * been enabled.
+ *
+ * The wakelock mechanism in DMC allows the display engine to exit DC
+ * states explicitly before programming registers that may be powered
+ * down.  In earlier hardware, this was done automatically and
+ * implicitly when the display engine accessed a register.  With the
+ * wakelock implementation, the driver asserts a wakelock in DMC,
+ * which forces it to exit the DC state until the wakelock is
+ * deasserted.
+ *
+ * This improves system performance and system interactions and better
+ * fits the flip queue style of programming.  Wakelock is only
+ * required when DC5, DC6, or DC6v have been enabled in DC_STATE_EN
+ * and the wakelock feature enabled in the driver.
+ *
+ * The mechanism can be enabled and disabled by writing to the
+ * DMC_WAKELOCK_CFG register.  There are also 13 control registers
+ * that can be used to hold and release different wakelocks.  In the
+ * current implementation, we only need one wakelock, so only
+ * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
+ * potential future use.
+ */
+
+#define DMC_WAKELOCK_CTL_TIMEOUT 5
+#define DMC_WAKELOCK_HOLD_TIME 50
+
+struct intel_dmc_wl_range {
+	u32 start;
+	u32 end;
+};
+
+static struct intel_dmc_wl_range lnl_wl_range[] = {
+	{ .start = 0x60000, .end = 0x7ffff },
+};
+
+static void __intel_dmc_wl_release(struct drm_i915_private *i915)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+
+	WARN_ON(refcount_read(&wl->refcount));
+
+	queue_delayed_work(i915->unordered_wq, &wl->work,
+			   msecs_to_jiffies(DMC_WAKELOCK_HOLD_TIME));
+}
+
+static void intel_dmc_wl_work(struct work_struct *work)
+{
+	struct intel_dmc_wl *wl =
+		container_of(work, struct intel_dmc_wl, work.work);
+	struct drm_i915_private *i915 =
+		container_of(wl, struct drm_i915_private, display.wl);
+	unsigned long flags;
+
+	spin_lock_irqsave(&wl->lock, flags);
+
+	/* Bail out if refcount reached zero while waiting for the spinlock */
+	if (!refcount_read(&wl->refcount))
+		goto out_unlock;
+
+	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
+
+	WARN_RATELIMIT(__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
+						      DMC_WAKELOCK_CTL_ACK, 0,
+						      DMC_WAKELOCK_CTL_TIMEOUT),
+		       "DMC wakelock release timed out");
+
+out_unlock:
+	spin_unlock_irqrestore(&wl->lock, flags);
+}
+
+static bool intel_dmc_wl_check_range(u32 address)
+{
+	int i;
+	bool wl_needed = false;
+
+	for (i = 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
+		if (address >= lnl_wl_range[i].start &&
+		    address <= lnl_wl_range[i].end) {
+			wl_needed = true;
+			break;
+		}
+	}
+
+	return wl_needed;
+}
+
+void intel_dmc_wl_init(struct drm_i915_private *i915)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+
+	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
+	spin_lock_init(&wl->lock);
+	refcount_set(&wl->refcount, 0);
+}
+
+void intel_dmc_wl_enable(struct drm_i915_private *i915)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+	unsigned long flags;
+
+	spin_lock_irqsave(&wl->lock, flags);
+
+	if (wl->enabled)
+		goto out_unlock;
+
+	/*
+	 * Enable wakelock in DMC.  We shouldn't try to take the
+	 * wakelock, because we're just enabling it, so call the
+	 * non-locking version directly here.
+	 */
+	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
+
+	wl->enabled = true;
+
+out_unlock:
+	spin_unlock_irqrestore(&wl->lock, flags);
+}
+
+void intel_dmc_wl_disable(struct drm_i915_private *i915)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+	unsigned long flags;
+
+	flush_delayed_work(&wl->work);
+
+	spin_lock_irqsave(&wl->lock, flags);
+
+	if (!wl->enabled)
+		goto out_unlock;
+
+	drm_info(&i915->drm, "DMC_WAKELOCK_CFG refcount %d\n",
+		 refcount_read(&wl->refcount));
+
+	/* Disable wakelock in DMC */
+	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
+
+	drm_info(&i915->drm, "DMC_WAKELOCK_CFG read 0x%0x\n",
+		 intel_de_read(i915, DMC_WAKELOCK_CFG));
+
+	refcount_set(&wl->refcount, 0);
+	wl->enabled = false;
+
+out_unlock:
+	spin_unlock_irqrestore(&wl->lock, flags);
+}
+
+void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+	unsigned long flags;
+
+	if (!intel_dmc_wl_check_range(reg.reg))
+		return;
+
+	spin_lock_irqsave(&wl->lock, flags);
+
+	if (!wl->enabled)
+		goto out_unlock;
+
+	cancel_delayed_work(&wl->work);
+
+	if (refcount_inc_not_zero(&wl->refcount))
+		goto out_unlock;
+
+	refcount_set(&wl->refcount, 1);
+
+	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0, DMC_WAKELOCK_CTL_REQ);
+
+	WARN_RATELIMIT(__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
+						      DMC_WAKELOCK_CTL_ACK,
+						      DMC_WAKELOCK_CTL_ACK,
+						      DMC_WAKELOCK_CTL_TIMEOUT),
+		       "DMC wakelock ack timed out");
+
+out_unlock:
+	spin_unlock_irqrestore(&wl->lock, flags);
+}
+
+void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	struct intel_dmc_wl *wl = &i915->display.wl;
+	unsigned long flags;
+
+	if (!intel_dmc_wl_check_range(reg.reg))
+		return;
+
+	spin_lock_irqsave(&wl->lock, flags);
+
+	if (!wl->enabled)
+		goto out_unlock;
+
+	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
+			   "Tried to put wakelock with refcount zero\n"))
+		goto out_unlock;
+
+	if (refcount_dec_and_test(&wl->refcount)) {
+		__intel_dmc_wl_release(i915);
+
+		goto out_unlock;
+	}
+
+out_unlock:
+	spin_unlock_irqrestore(&wl->lock, flags);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
new file mode 100644
index 000000000000..b649a278be71
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (C) 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_WAKELOCK_H__
+#define __INTEL_WAKELOCK_H__
+
+#include <linux/types.h>
+#include <linux/workqueue.h>
+#include <linux/refcount.h>
+
+#include "i915_reg_defs.h"
+
+struct drm_i915_private;
+
+struct intel_dmc_wl {
+	spinlock_t lock; /* protects enabled and refcount */
+	bool enabled;
+	refcount_t refcount;
+	struct delayed_work work;
+};
+
+void intel_dmc_wl_init(struct drm_i915_private *i915);
+void intel_dmc_wl_enable(struct drm_i915_private *i915);
+void intel_dmc_wl_disable(struct drm_i915_private *i915);
+void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg);
+void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg);
+
+#endif /* __INTEL_WAKELOCK_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 3c3e67885559..a080c9e6f372 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -279,6 +279,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_vdsc.o \
 	i915-display/intel_vga.o \
 	i915-display/intel_vrr.o \
+	i915-display/intel_dmc_wl.o \
 	i915-display/intel_wm.o \
 	i915-display/skl_scaler.o \
 	i915-display/skl_universal_plane.o \
-- 
2.39.2

