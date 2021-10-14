Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D761242D721
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 12:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9071A6EC65;
	Thu, 14 Oct 2021 10:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF366EC65
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 10:29:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227607007"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="227607007"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491893946"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 Oct 2021 13:28:57 +0300
Message-Id: <185deb18eb739e5ae019e27834b9997dcc1347bc.1634207064.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634207064.git.jani.nikula@intel.com>
References: <cover.1634207064.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: split out intel_pcode.[ch] to
 separate file
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

The snb+ pcode mailbox code is not sideband, so split it out to a
separate file. As can be seen from the #include changes, very few places
use both sideband and pcode.

Code movement only.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   2 +-
 drivers/gpu/drm/i915/gt/intel_llc.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +-
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 drivers/gpu/drm/i915/intel_dram.c             |   2 +-
 drivers/gpu/drm/i915/intel_pcode.c            | 235 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h            |  26 ++
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 drivers/gpu/drm/i915/intel_sideband.c         | 228 -----------------
 drivers/gpu/drm/i915/intel_sideband.h         |  13 -
 17 files changed, 277 insertions(+), 255 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_pcode.c
 create mode 100644 drivers/gpu/drm/i915/intel_pcode.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d50d2b144fc6..e44c72533a8c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -47,6 +47,7 @@ i915-y += i915_drv.o \
 	  intel_dram.o \
 	  intel_memory_region.o \
 	  intel_pch.o \
+	  intel_pcode.o \
 	  intel_pm.o \
 	  intel_region_ttm.o \
 	  intel_runtime_pm.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4b94256d7319..8d9d888e9316 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -9,8 +9,8 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_pcode.h"
 #include "intel_pm.h"
-#include "intel_sideband.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 44bb18773509..9e466d829019 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -28,8 +28,8 @@
 #include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_pcode.h"
 #include "intel_psr.h"
-#include "intel_sideband.h"
 #include "vlv_sideband.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3602fdb2a549..b070cdcb3674 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -88,14 +88,15 @@
 #include "intel_dp_link_training.h"
 #include "intel_dpt.h"
 #include "intel_fbc.h"
-#include "intel_fdi.h"
 #include "intel_fbdev.h"
+#include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_overlay.h"
 #include "intel_panel.h"
+#include "intel_pcode.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 709569211c85..1672604f9ef7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -15,9 +15,9 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
+#include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
-#include "intel_sideband.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9b9fd9d13043..4509fe7438e8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -17,12 +17,12 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "intel_display_power.h"
+#include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
-#include "intel_sideband.h"
-#include "intel_connector.h"
+#include "intel_pcode.h"
 
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 1e00fa6fbf27..b3ddb9106125 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -13,10 +13,10 @@
 #include "intel_gt_pm.h"
 #include "intel_gt_pm_debugfs.h"
 #include "intel_llc.h"
+#include "intel_pcode.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_runtime_pm.h"
-#include "intel_sideband.h"
 #include "intel_uncore.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index d6c6b8b0a1e6..08d7d5ae263a 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -9,7 +9,7 @@
 #include "i915_drv.h"
 #include "intel_gt.h"
 #include "intel_llc.h"
-#include "intel_sideband.h"
+#include "intel_pcode.h"
 
 struct ia_constants {
 	unsigned int min_gpu_freq;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 799d382eea79..43093dd2d0c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -9,8 +9,8 @@
 #include "i915_vgpu.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
+#include "intel_pcode.h"
 #include "intel_rc6.h"
-#include "intel_sideband.h"
 
 /**
  * DOC: RC6
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index c47024dbe246..5e275f8dda8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -11,8 +11,8 @@
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_irq.h"
 #include "intel_gt_pm_irq.h"
+#include "intel_pcode.h"
 #include "intel_rps.h"
-#include "intel_sideband.h"
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index c65c3742887a..b18a250e5d2e 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -84,9 +84,9 @@
 #include "intel_dram.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
+#include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
-#include "intel_sideband.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver driver;
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 30a0cab5eff4..da3ad59d2b88 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -5,7 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_dram.h"
-#include "intel_sideband.h"
+#include "intel_pcode.h"
 
 struct dram_dimm_info {
 	u16 size;
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
new file mode 100644
index 000000000000..e8c886e4e78d
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2013-2021 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_pcode.h"
+
+static int gen6_check_mailbox_status(u32 mbox)
+{
+	switch (mbox & GEN6_PCODE_ERROR_MASK) {
+	case GEN6_PCODE_SUCCESS:
+		return 0;
+	case GEN6_PCODE_UNIMPLEMENTED_CMD:
+		return -ENODEV;
+	case GEN6_PCODE_ILLEGAL_CMD:
+		return -ENXIO;
+	case GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
+	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
+		return -EOVERFLOW;
+	case GEN6_PCODE_TIMEOUT:
+		return -ETIMEDOUT;
+	default:
+		MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
+		return 0;
+	}
+}
+
+static int gen7_check_mailbox_status(u32 mbox)
+{
+	switch (mbox & GEN6_PCODE_ERROR_MASK) {
+	case GEN6_PCODE_SUCCESS:
+		return 0;
+	case GEN6_PCODE_ILLEGAL_CMD:
+		return -ENXIO;
+	case GEN7_PCODE_TIMEOUT:
+		return -ETIMEDOUT;
+	case GEN7_PCODE_ILLEGAL_DATA:
+		return -EINVAL;
+	case GEN11_PCODE_ILLEGAL_SUBCOMMAND:
+		return -ENXIO;
+	case GEN11_PCODE_LOCKED:
+		return -EBUSY;
+	case GEN11_PCODE_REJECTED:
+		return -EACCES;
+	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
+		return -EOVERFLOW;
+	default:
+		MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
+		return 0;
+	}
+}
+
+static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
+				  u32 mbox, u32 *val, u32 *val1,
+				  int fast_timeout_us,
+				  int slow_timeout_ms,
+				  bool is_read)
+{
+	struct intel_uncore *uncore = &i915->uncore;
+
+	lockdep_assert_held(&i915->sb_lock);
+
+	/*
+	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
+	 * intel_uncore_read/write_fw variants to reduce the amount of work
+	 * required when reading/writing.
+	 */
+
+	if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
+		return -EAGAIN;
+
+	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
+	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
+	intel_uncore_write_fw(uncore,
+			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);
+
+	if (__intel_wait_for_register_fw(uncore,
+					 GEN6_PCODE_MAILBOX,
+					 GEN6_PCODE_READY, 0,
+					 fast_timeout_us,
+					 slow_timeout_ms,
+					 &mbox))
+		return -ETIMEDOUT;
+
+	if (is_read)
+		*val = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA);
+	if (is_read && val1)
+		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
+
+	if (GRAPHICS_VER(i915) > 6)
+		return gen7_check_mailbox_status(mbox);
+	else
+		return gen6_check_mailbox_status(mbox);
+}
+
+int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
+			   u32 *val, u32 *val1)
+{
+	int err;
+
+	mutex_lock(&i915->sb_lock);
+	err = __sandybridge_pcode_rw(i915, mbox, val, val1,
+				     500, 20,
+				     true);
+	mutex_unlock(&i915->sb_lock);
+
+	if (err) {
+		drm_dbg(&i915->drm,
+			"warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
+			mbox, __builtin_return_address(0), err);
+	}
+
+	return err;
+}
+
+int sandybridge_pcode_write_timeout(struct drm_i915_private *i915,
+				    u32 mbox, u32 val,
+				    int fast_timeout_us,
+				    int slow_timeout_ms)
+{
+	int err;
+
+	mutex_lock(&i915->sb_lock);
+	err = __sandybridge_pcode_rw(i915, mbox, &val, NULL,
+				     fast_timeout_us, slow_timeout_ms,
+				     false);
+	mutex_unlock(&i915->sb_lock);
+
+	if (err) {
+		drm_dbg(&i915->drm,
+			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
+			val, mbox, __builtin_return_address(0), err);
+	}
+
+	return err;
+}
+
+static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
+				  u32 request, u32 reply_mask, u32 reply,
+				  u32 *status)
+{
+	*status = __sandybridge_pcode_rw(i915, mbox, &request, NULL,
+					 500, 0,
+					 true);
+
+	return *status || ((request & reply_mask) == reply);
+}
+
+/**
+ * skl_pcode_request - send PCODE request until acknowledgment
+ * @i915: device private
+ * @mbox: PCODE mailbox ID the request is targeted for
+ * @request: request ID
+ * @reply_mask: mask used to check for request acknowledgment
+ * @reply: value used to check for request acknowledgment
+ * @timeout_base_ms: timeout for polling with preemption enabled
+ *
+ * Keep resending the @request to @mbox until PCODE acknowledges it, PCODE
+ * reports an error or an overall timeout of @timeout_base_ms+50 ms expires.
+ * The request is acknowledged once the PCODE reply dword equals @reply after
+ * applying @reply_mask. Polling is first attempted with preemption enabled
+ * for @timeout_base_ms and if this times out for another 50 ms with
+ * preemption disabled.
+ *
+ * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
+ * other error as reported by PCODE.
+ */
+int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
+		      u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	u32 status;
+	int ret;
+
+	mutex_lock(&i915->sb_lock);
+
+#define COND \
+	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
+
+	/*
+	 * Prime the PCODE by doing a request first. Normally it guarantees
+	 * that a subsequent request, at most @timeout_base_ms later, succeeds.
+	 * _wait_for() doesn't guarantee when its passed condition is evaluated
+	 * first, so send the first request explicitly.
+	 */
+	if (COND) {
+		ret = 0;
+		goto out;
+	}
+	ret = _wait_for(COND, timeout_base_ms * 1000, 10, 10);
+	if (!ret)
+		goto out;
+
+	/*
+	 * The above can time out if the number of requests was low (2 in the
+	 * worst case) _and_ PCODE was busy for some reason even after a
+	 * (queued) request and @timeout_base_ms delay. As a workaround retry
+	 * the poll with preemption disabled to maximize the number of
+	 * requests. Increase the timeout from @timeout_base_ms to 50ms to
+	 * account for interrupts that could reduce the number of these
+	 * requests, and for any quirks of the PCODE firmware that delays
+	 * the request completion.
+	 */
+	drm_dbg_kms(&i915->drm,
+		    "PCODE timeout, retrying with preemption disabled\n");
+	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
+	preempt_disable();
+	ret = wait_for_atomic(COND, 50);
+	preempt_enable();
+
+out:
+	mutex_unlock(&i915->sb_lock);
+	return ret ? ret : status;
+#undef COND
+}
+
+int intel_pcode_init(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	if (!IS_DGFX(i915))
+		return ret;
+
+	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
+				DG1_UNCORE_GET_INIT_STATUS,
+				DG1_UNCORE_INIT_STATUS_COMPLETE,
+				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
+
+	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
+
+	if (ret)
+		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
new file mode 100644
index 000000000000..50806649d4b6
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2013-2021 Intel Corporation
+ */
+
+#ifndef _INTEL_PCODE_H_
+#define _INTEL_PCODE_H_
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+
+int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
+			   u32 *val, u32 *val1);
+int sandybridge_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox,
+				    u32 val, int fast_timeout_us,
+				    int slow_timeout_ms);
+#define sandybridge_pcode_write(i915, mbox, val)	\
+	sandybridge_pcode_write_timeout(i915, mbox, val, 500, 0)
+
+int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
+		      u32 reply_mask, u32 reply, int timeout_base_ms);
+
+int intel_pcode_init(struct drm_i915_private *i915);
+
+#endif /* _INTEL_PCODE_H */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e4e0d7f9cb60..ecbb3d141632 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -47,8 +47,8 @@
 #include "i915_fixed.h"
 #include "i915_irq.h"
 #include "i915_trace.h"
+#include "intel_pcode.h"
 #include "intel_pm.h"
-#include "intel_sideband.h"
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
index 59ef67216c15..1d30273b35c1 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sideband.c
@@ -90,231 +90,3 @@ void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
 {
 	intel_sbi_rw(i915, reg, destination, &value, false);
 }
-
-static int gen6_check_mailbox_status(u32 mbox)
-{
-	switch (mbox & GEN6_PCODE_ERROR_MASK) {
-	case GEN6_PCODE_SUCCESS:
-		return 0;
-	case GEN6_PCODE_UNIMPLEMENTED_CMD:
-		return -ENODEV;
-	case GEN6_PCODE_ILLEGAL_CMD:
-		return -ENXIO;
-	case GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
-	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
-		return -EOVERFLOW;
-	case GEN6_PCODE_TIMEOUT:
-		return -ETIMEDOUT;
-	default:
-		MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
-		return 0;
-	}
-}
-
-static int gen7_check_mailbox_status(u32 mbox)
-{
-	switch (mbox & GEN6_PCODE_ERROR_MASK) {
-	case GEN6_PCODE_SUCCESS:
-		return 0;
-	case GEN6_PCODE_ILLEGAL_CMD:
-		return -ENXIO;
-	case GEN7_PCODE_TIMEOUT:
-		return -ETIMEDOUT;
-	case GEN7_PCODE_ILLEGAL_DATA:
-		return -EINVAL;
-	case GEN11_PCODE_ILLEGAL_SUBCOMMAND:
-		return -ENXIO;
-	case GEN11_PCODE_LOCKED:
-		return -EBUSY;
-	case GEN11_PCODE_REJECTED:
-		return -EACCES;
-	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
-		return -EOVERFLOW;
-	default:
-		MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
-		return 0;
-	}
-}
-
-static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
-				  u32 mbox, u32 *val, u32 *val1,
-				  int fast_timeout_us,
-				  int slow_timeout_ms,
-				  bool is_read)
-{
-	struct intel_uncore *uncore = &i915->uncore;
-
-	lockdep_assert_held(&i915->sb_lock);
-
-	/*
-	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
-	 * intel_uncore_read/write_fw variants to reduce the amount of work
-	 * required when reading/writing.
-	 */
-
-	if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
-		return -EAGAIN;
-
-	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
-	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
-	intel_uncore_write_fw(uncore,
-			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);
-
-	if (__intel_wait_for_register_fw(uncore,
-					 GEN6_PCODE_MAILBOX,
-					 GEN6_PCODE_READY, 0,
-					 fast_timeout_us,
-					 slow_timeout_ms,
-					 &mbox))
-		return -ETIMEDOUT;
-
-	if (is_read)
-		*val = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA);
-	if (is_read && val1)
-		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
-
-	if (GRAPHICS_VER(i915) > 6)
-		return gen7_check_mailbox_status(mbox);
-	else
-		return gen6_check_mailbox_status(mbox);
-}
-
-int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
-			   u32 *val, u32 *val1)
-{
-	int err;
-
-	mutex_lock(&i915->sb_lock);
-	err = __sandybridge_pcode_rw(i915, mbox, val, val1,
-				     500, 20,
-				     true);
-	mutex_unlock(&i915->sb_lock);
-
-	if (err) {
-		drm_dbg(&i915->drm,
-			"warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
-			mbox, __builtin_return_address(0), err);
-	}
-
-	return err;
-}
-
-int sandybridge_pcode_write_timeout(struct drm_i915_private *i915,
-				    u32 mbox, u32 val,
-				    int fast_timeout_us,
-				    int slow_timeout_ms)
-{
-	int err;
-
-	mutex_lock(&i915->sb_lock);
-	err = __sandybridge_pcode_rw(i915, mbox, &val, NULL,
-				     fast_timeout_us, slow_timeout_ms,
-				     false);
-	mutex_unlock(&i915->sb_lock);
-
-	if (err) {
-		drm_dbg(&i915->drm,
-			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
-			val, mbox, __builtin_return_address(0), err);
-	}
-
-	return err;
-}
-
-static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
-				  u32 request, u32 reply_mask, u32 reply,
-				  u32 *status)
-{
-	*status = __sandybridge_pcode_rw(i915, mbox, &request, NULL,
-					 500, 0,
-					 true);
-
-	return *status || ((request & reply_mask) == reply);
-}
-
-/**
- * skl_pcode_request - send PCODE request until acknowledgment
- * @i915: device private
- * @mbox: PCODE mailbox ID the request is targeted for
- * @request: request ID
- * @reply_mask: mask used to check for request acknowledgment
- * @reply: value used to check for request acknowledgment
- * @timeout_base_ms: timeout for polling with preemption enabled
- *
- * Keep resending the @request to @mbox until PCODE acknowledges it, PCODE
- * reports an error or an overall timeout of @timeout_base_ms+50 ms expires.
- * The request is acknowledged once the PCODE reply dword equals @reply after
- * applying @reply_mask. Polling is first attempted with preemption enabled
- * for @timeout_base_ms and if this times out for another 50 ms with
- * preemption disabled.
- *
- * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
- * other error as reported by PCODE.
- */
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms)
-{
-	u32 status;
-	int ret;
-
-	mutex_lock(&i915->sb_lock);
-
-#define COND \
-	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
-
-	/*
-	 * Prime the PCODE by doing a request first. Normally it guarantees
-	 * that a subsequent request, at most @timeout_base_ms later, succeeds.
-	 * _wait_for() doesn't guarantee when its passed condition is evaluated
-	 * first, so send the first request explicitly.
-	 */
-	if (COND) {
-		ret = 0;
-		goto out;
-	}
-	ret = _wait_for(COND, timeout_base_ms * 1000, 10, 10);
-	if (!ret)
-		goto out;
-
-	/*
-	 * The above can time out if the number of requests was low (2 in the
-	 * worst case) _and_ PCODE was busy for some reason even after a
-	 * (queued) request and @timeout_base_ms delay. As a workaround retry
-	 * the poll with preemption disabled to maximize the number of
-	 * requests. Increase the timeout from @timeout_base_ms to 50ms to
-	 * account for interrupts that could reduce the number of these
-	 * requests, and for any quirks of the PCODE firmware that delays
-	 * the request completion.
-	 */
-	drm_dbg_kms(&i915->drm,
-		    "PCODE timeout, retrying with preemption disabled\n");
-	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
-	preempt_disable();
-	ret = wait_for_atomic(COND, 50);
-	preempt_enable();
-
-out:
-	mutex_unlock(&i915->sb_lock);
-	return ret ? ret : status;
-#undef COND
-}
-
-int intel_pcode_init(struct drm_i915_private *i915)
-{
-	int ret = 0;
-
-	if (!IS_DGFX(i915))
-		return ret;
-
-	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
-				DG1_UNCORE_GET_INIT_STATUS,
-				DG1_UNCORE_INIT_STATUS_COMPLETE,
-				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
-
-	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
-
-	if (ret)
-		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
-
-	return ret;
-}
diff --git a/drivers/gpu/drm/i915/intel_sideband.h b/drivers/gpu/drm/i915/intel_sideband.h
index 914ffd98b38f..9d937576f507 100644
--- a/drivers/gpu/drm/i915/intel_sideband.h
+++ b/drivers/gpu/drm/i915/intel_sideband.h
@@ -17,17 +17,4 @@ u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
 void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
 		     enum intel_sbi_destination destination);
 
-int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
-			   u32 *val, u32 *val1);
-int sandybridge_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox,
-				    u32 val, int fast_timeout_us,
-				    int slow_timeout_ms);
-#define sandybridge_pcode_write(i915, mbox, val)	\
-	sandybridge_pcode_write_timeout(i915, mbox, val, 500, 0)
-
-int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
-		      u32 reply_mask, u32 reply, int timeout_base_ms);
-
-int intel_pcode_init(struct drm_i915_private *i915);
-
 #endif /* _INTEL_SIDEBAND_H */
-- 
2.30.2

