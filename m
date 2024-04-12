Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA478A2B66
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 11:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8058510F555;
	Fri, 12 Apr 2024 09:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpQyeWv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6923910F546;
 Fri, 12 Apr 2024 09:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712914924; x=1744450924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3nqukYTAFYcOtAa+z3Ag5bIwiJwC1bbB5vEWvSUOKuk=;
 b=mpQyeWv9mJnWUb/W4QQKfU0/V+MRCalESopfVXjk00XSALWmzMWy6YeE
 26mvpNMIbAFms8zp6rfoh3vwzktZrZDOH/J+kYpzBZQooydPKJqKdnMkW
 +lgPSJ8nDzVBEheR6mdggFHQ6r5Po+tukUzTmAcK2ybimlfDYRrXtaHcq
 8d0OfR5PEYnkeRZJ+hDk0OqCeiBCL5Kh8/vgMxtxS7jW2Znd57iVXAgk4
 LQlHGD54+uiYJQq2Lf2RdebbOgIorZGNz3wNbwHA7oXkkQnCO4dE4lv/q
 ZprHhjpIFnXzV4gb0RkBRo8jxWiFMyLtufL8urYGP027bYr8Z9zeRIgVF A==;
X-CSE-ConnectionGUID: rZ52nc82RFykeTBoMTLSHA==
X-CSE-MsgGUID: JR95q1oQQlSXyfrHbXVv+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12156398"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12156398"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:04 -0700
X-CSE-ConnectionGUID: fKrFyy2BRb6B8+rlxJ5wlw==
X-CSE-MsgGUID: 4ugGiLwOR3iqBvA9gZ0r4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25841371"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.215.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:01 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
Date: Fri, 12 Apr 2024 12:41:45 +0300
Message-Id: <20240412094148.808179-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240412094148.808179-1-luciano.coelho@intel.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
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
 Documentation/gpu/i915.rst                    |   9 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |  97 +++++++-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 234 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 +++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 8 files changed, 373 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 0ca1550fd9dc..17261ba18313 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -204,6 +204,15 @@ DMC Firmware Support
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
    :internal:
 
+DMC wakelock support
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
+   :doc: DMC wakelock support
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
+   :internal:
+
 Video BIOS Table (VBT)
 ----------------------
 
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index af9e871daf1d..7cad944b825c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -266,6 +266,7 @@ i915-y += \
 	display/intel_display_rps.o \
 	display/intel_display_wa.o \
 	display/intel_dmc.o \
+	display/intel_dmc_wl.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index ba7a1c6ebc2a..0a0fba81e7af 100644
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
 intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
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
 intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
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
@@ -67,8 +140,16 @@ intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
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
index db9b6492758e..9d89828e87df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -26,6 +26,7 @@
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
+#include "intel_dmc_wl.h"
 #include "intel_wm_types.h"
 
 struct task_struct;
@@ -546,6 +547,7 @@ struct intel_display {
 	struct intel_overlay *overlay;
 	struct intel_display_params params;
 	struct intel_vbt_data vbt;
+	struct intel_dmc_wl wl;
 	struct intel_wm wm;
 };
 
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
index 000000000000..abe875690e70
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -0,0 +1,234 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (C) 2024 Intel Corporation
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
+	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
+					   DMC_WAKELOCK_CTL_ACK, 0,
+					   DMC_WAKELOCK_CTL_TIMEOUT)) {
+		WARN_RATELIMIT(1, "DMC wakelock release timed out");
+		goto out_unlock;
+	}
+
+	wl->taken = false;
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
+	wl->taken = false;
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
+	/* Disable wakelock in DMC */
+	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
+
+	refcount_set(&wl->refcount, 0);
+	wl->enabled = false;
+	wl->taken = false;
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
+	/*
+	 * Only try to take the wakelock if it's not marked as taken
+	 * yet.  It may be already taken at this point if we have
+	 * already released the last reference, but the work has not
+	 * run yet.
+	 */
+	if (!wl->taken) {
+		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
+				    DMC_WAKELOCK_CTL_REQ);
+
+		if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
+						   DMC_WAKELOCK_CTL_ACK,
+						   DMC_WAKELOCK_CTL_ACK,
+						   DMC_WAKELOCK_CTL_TIMEOUT)) {
+			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
+			goto out_unlock;
+		}
+
+		wl->taken = true;
+	}
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
index 000000000000..6fb86b05b437
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (C) 2024 Intel Corporation
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
+	spinlock_t lock; /* protects enabled, taken  and refcount */
+	bool enabled;
+	bool taken;
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
index 6015c9e41f24..23eeda2b4910 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -280,6 +280,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_vdsc.o \
 	i915-display/intel_vga.o \
 	i915-display/intel_vrr.o \
+	i915-display/intel_dmc_wl.o \
 	i915-display/intel_wm.o \
 	i915-display/skl_scaler.o \
 	i915-display/skl_universal_plane.o \
-- 
2.39.2

