Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA2897CA3F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD88210E706;
	Thu, 19 Sep 2024 13:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsQRl36V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E4410E6F8;
 Thu, 19 Sep 2024 13:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726753292; x=1758289292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SI5H8KsoMqAQLlBCakOkZ6y4mpkj+fyWin2xUnIQxV4=;
 b=IsQRl36VCyMmlUUwWWIV0dErCp4FvNythp2bJRr75CKI2pliuEdCTfki
 XY+shNQ4GHG4LKmiCKAQBT0dsZL5E09oNSTkjesp/uSVC2rZMJmy0ipil
 VSESiJ9tpI0MM90WxyKUKKQaqJn091vP70Wnj13bHbEqFm5xhIB3XGX6u
 QXp+IX36/zHxmNDePyWAZkENkGrX2+MxVkUQkMVnu3vqLDVBKBaZ+hhQv
 YZFsfe7xSkBF+IvPesb2ksdNOTHtHpldDkVeY54R+GB9EExtLvYADen5m
 VJ61TMbVkrmixdoMZNbo8gHg3NNE/ELSIPTJIOeoDBfMemCDb3nQ2PhaA w==;
X-CSE-ConnectionGUID: 39I0/elgQbeVoIfhM9yEYw==
X-CSE-MsgGUID: EIHF+n/yTZCrj9WXTtAd9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29505353"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="29505353"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:41:32 -0700
X-CSE-ConnectionGUID: 3E1iZnM8Sou8GugG9ct6tA==
X-CSE-MsgGUID: o+rS3Yj9RJCew/q9bG0HBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74912648"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa004.jf.intel.com with ESMTP; 19 Sep 2024 06:41:29 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3 3/6] drm/i915/histogram: histogram interrupt handling
Date: Thu, 19 Sep 2024 19:01:37 +0530
Message-Id: <20240919133140.1372663-4-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240919133140.1372663-1-arun.r.murthy@intel.com>
References: <20240919133140.1372663-1-arun.r.murthy@intel.com>
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

Upon enabling histogram an interrupt is trigerred after the generation
of the statistics. This patch registers the histogram interrupt and
handles the interrupt.

v2: Added intel_crtc backpointer to intel_histogram struct (Jani)
    Removed histogram_wq and instead use dev_priv->unodered_eq (Jani)
v3: Replaced drm_i915_private with intel_display (Suraj)
    Refactored the histogram read code (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
 .../gpu/drm/i915/display/intel_histogram.c    | 93 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram.h    |  3 +
 drivers/gpu/drm/i915/i915_reg.h               |  5 +-
 4 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8f13f148c73e..930eb2ed17a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -20,6 +20,7 @@
 #include "intel_fdi_regs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
+#include "intel_histogram.h"
 #include "intel_hotplug_irq.h"
 #include "intel_pipe_crc_regs.h"
 #include "intel_pmdemand.h"
@@ -1190,6 +1191,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 
+		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
+			intel_histogram_irq_handler(display, pipe);
+
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
 			drm_err_ratelimited(&dev_priv->drm,
@@ -1721,7 +1725,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
-		GEN8_PIPE_CDCLK_CRC_DONE;
+		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_HISTOGRAM_EVENT;
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index bf9ffb1b8bfb..ed3f455666aa 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -18,6 +18,8 @@
 #define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pipe's current pixel count.
 #define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor for threshold guardband.
 #define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
+#define HISTOGRAM_BIN_READ_RETRY_COUNT 5
+#define HISTOGRAM_BIN_READ_DELAY 2
 
 struct intel_histogram {
 	struct intel_crtc *crtc;
@@ -27,6 +29,92 @@ struct intel_histogram {
 	u32 bindata[HISTOGRAM_BIN_COUNT];
 };
 
+static bool intel_histogram_get_data(struct intel_crtc *intel_crtc)
+{
+	struct intel_display *display = to_intel_display(intel_crtc);
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	u8 index, retry_count;
+	u32 dpstbin;
+
+	index = 0;
+	retry_count = 0;
+
+	while (index < HISTOGRAM_BIN_COUNT) {
+		dpstbin = intel_de_read(display, DPST_BIN(intel_crtc->pipe));
+		if (!(dpstbin & DPST_BIN_BUSY)) {
+			histogram->bindata[index] = dpstbin & DPST_BIN_DATA_MASK;
+			index++;
+		} else {
+			/*
+			 * If DPST_BIN busy bit is set, then set the
+			 * DPST_CTL bin reg index to 0 and proceed
+			 * from beginning.
+			 */
+			retry_count++;
+			if (retry_count > HISTOGRAM_BIN_READ_RETRY_COUNT) {
+				drm_err(display->drm, "Histogram bin read failed with max retry\n");
+				return false;
+			}
+			/* Add a delay before retrying */
+			fsleep(HISTOGRAM_BIN_READ_DELAY);
+			index = 0;
+			intel_de_rmw(display, DPST_CTL(intel_crtc->pipe),
+				     DPST_CTL_BIN_REG_FUNC_SEL |
+				     DPST_CTL_BIN_REG_MASK, 0);
+		}
+	}
+	return true;
+}
+
+static void intel_histogram_handle_int_work(struct work_struct *work)
+{
+	struct intel_histogram *histogram = container_of(work,
+		struct intel_histogram, histogram_int_work.work);
+	struct intel_crtc *intel_crtc = histogram->crtc;
+	struct intel_display *display = to_intel_display(intel_crtc);
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};
+
+	/*
+	 * TODO: PSR to be exited while reading the Histogram data
+	 * Set DPST_CTL Bin Reg function select to TC
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(display, DPST_CTL(intel_crtc->pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
+	if (intel_histogram_get_data(intel_crtc)) {
+		/* Notify user for Histogram rediness */
+		if (kobject_uevent_env(&display->drm->primary->kdev->kobj,
+				       KOBJ_CHANGE, histogram_event))
+			drm_err(display->drm,
+				"sending HISTOGRAM event failed\n");
+	}
+
+	/* Enable histogram interrupt */
+	intel_de_rmw(display, DPST_GUARD(intel_crtc->pipe), DPST_GUARD_HIST_INT_EN,
+		     DPST_GUARD_HIST_INT_EN);
+
+	/* Clear histogram interrupt by setting histogram interrupt status bit*/
+	intel_de_rmw(display, DPST_GUARD(intel_crtc->pipe),
+		     DPST_GUARD_HIST_EVENT_STATUS, 1);
+}
+
+void intel_histogram_irq_handler(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(drm_crtc_from_index(display->drm, pipe));
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+
+	if (!histogram->enable) {
+		drm_err(display->drm,
+			"spurious interrupt, histogram not enabled\n");
+		return;
+	}
+
+	queue_delayed_work(i915->unordered_wq,
+			   &histogram->histogram_int_work, 0);
+}
+
 int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
@@ -118,6 +206,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
 	intel_de_rmw(display, DPST_CTL(pipe),
 		     DPST_CTL_IE_HIST_EN, 0);
 
+	cancel_delayed_work(&histogram->histogram_int_work);
 	histogram->enable = false;
 }
 
@@ -179,6 +268,7 @@ void intel_histogram_deinit(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
 
+	cancel_delayed_work_sync(&histogram->histogram_int_work);
 	kfree(histogram);
 }
 
@@ -196,5 +286,8 @@ int intel_histogram_init(struct intel_crtc *intel_crtc)
 	histogram->crtc = intel_crtc;
 	histogram->can_enable = false;
 
+	INIT_DEFERRABLE_WORK(&histogram->histogram_int_work,
+			     intel_histogram_handle_int_work);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
index 8de7d0ed5923..fee1715b4235 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 
 struct intel_crtc;
+struct intel_display;
+enum pipe;
 
 #define HISTOGRAM_BIN_COUNT                    32
 #define HISTOGRAM_IET_LENGTH                   33
@@ -27,6 +29,7 @@ enum intel_global_hist_lut {
 };
 
 int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
+void intel_histogram_irq_handler(struct intel_display *display, enum pipe pipe);
 int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
 int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
 int intel_histogram_init(struct intel_crtc *intel_crtc);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 41f4350a7c6c..a18cfef3ab21 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1655,7 +1655,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
 #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
 #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
-#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
+#define   PIPE_HISTOGRAM_EVENT_ENABLE		(1UL << 23)
 #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
 #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
 #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
@@ -1678,7 +1678,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
 #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
 #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
-#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
+#define   PIPE_HISTOGRAM_EVENT_STATUS		(1UL << 7)
 #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
 #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
 #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
@@ -2520,6 +2520,7 @@
 #define  GEN12_DSB_1_INT		REG_BIT(14) /* tgl+ */
 #define  GEN12_DSB_0_INT		REG_BIT(13) /* tgl+ */
 #define  GEN12_DSB_INT(dsb_id)		REG_BIT(13 + (dsb_id))
+#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
 #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
 #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
 #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
-- 
2.25.1

