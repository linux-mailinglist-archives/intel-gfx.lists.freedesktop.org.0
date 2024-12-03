Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B349E131B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 07:05:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39D910E8FC;
	Tue,  3 Dec 2024 06:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9/zdYtY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F9110E907;
 Tue,  3 Dec 2024 06:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733205914; x=1764741914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QUgnO31IFsn1dwO5svoboYMn9sJM8tCwHVzkNkXLLFg=;
 b=j9/zdYtYWu6jXMH1k4rzHaw1MJx/uRaJ7Kr3JLQSzH4lShWkz5Rhbxr6
 UBXsCGipLfehhw2LxaxmPA4tuS7CTPxKdDHtnp6B7oNAXGYGasCm44j+n
 1k3szKajpkhfwrD+ncUr5k0I/iihooTXsME+H8fYnvsvpt5aPHKww0yED
 RlL7fbbJuGsLrXTiJsyEBT/KXMwPX+vVnAgCc8kY+TdOS/8TCYYqC3BcQ
 1JYT+H04y1/IbSAPEq7BhzifNqqAqpGBZuWBQWyLXJfayRxxucNDUf5hS
 uSOQkXlQNWMgV/ke95hjfs9S46fejMHQYOqEkdxSI09rwEhw56Qo+k+79 w==;
X-CSE-ConnectionGUID: xXqstZ5wTRaDlDI8NarqMg==
X-CSE-MsgGUID: YRlAXAi2T2yXpf19jJLPOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="37058858"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="37058858"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:05:14 -0800
X-CSE-ConnectionGUID: RSMAsQD/SCOtr2S3m7obDQ==
X-CSE-MsgGUID: BUKMcSGVRsyuMInwqawjAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="124163866"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 02 Dec 2024 22:05:14 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv5 06/10] drm/i915/histogram: histogram interrupt handling
Date: Tue,  3 Dec 2024 11:25:16 +0530
Message-Id: <20241203055520.1704661-7-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241203055520.1704661-1-arun.r.murthy@intel.com>
References: <20241203055520.1704661-1-arun.r.murthy@intel.com>
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
v4: Rebased after addressing comments on patch 1
v5: removed the retry logic and moved to patch7 (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
 .../gpu/drm/i915/display/intel_histogram.c    | 87 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_histogram.h    |  3 +
 drivers/gpu/drm/i915/i915_reg.h               |  5 +-
 4 files changed, 96 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index cb79c2796e3a..9eaca7125bf7 100644
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
@@ -1180,6 +1181,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 
+		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
+			intel_histogram_irq_handler(display, pipe);
+
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
 			drm_err_ratelimited(&dev_priv->drm,
@@ -1774,7 +1778,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
-		GEN8_PIPE_CDCLK_CRC_DONE;
+		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_HISTOGRAM_EVENT;
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index e9a431800553..57bb45b36a03 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -19,7 +19,7 @@
 #define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300
 /* Precision factor for threshold guardband */
 #define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000
-#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
+#define HISTOGRAM_BIN_READ_RETRY_COUNT 5
 
 struct intel_histogram {
 	struct intel_crtc *crtc;
@@ -29,6 +29,84 @@ struct intel_histogram {
 	u32 bin_data[HISTOGRAM_BIN_COUNT];
 };
 
+static bool intel_histogram_get_data(struct intel_crtc *intel_crtc)
+{
+	struct intel_display *display = to_intel_display(intel_crtc);
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	int index;
+	u32 dpstbin;
+
+	for (index = 0; index < ARRAY_SIZE(histogram->bin_data); index++) {
+		dpstbin = intel_de_read(display, DPST_BIN(intel_crtc->pipe));
+		if (!(dpstbin & DPST_BIN_BUSY)) {
+			histogram->bin_data[index] = dpstbin & DPST_BIN_DATA_MASK;
+		} else
+			return false;
+	}
+	return true;
+}
+
+static void intel_histogram_handle_int_work(struct work_struct *work)
+{
+	struct intel_histogram *histogram = container_of(work,
+		struct intel_histogram, work.work);
+	struct intel_crtc *intel_crtc = histogram->crtc;
+	struct intel_display *display = to_intel_display(intel_crtc);
+	char event[] = "HISTOGRAM=1", pipe_id[21];
+	char *histogram_event[] = { event, pipe_id, NULL };
+	int retry;
+
+	snprintf(pipe_id, sizeof(pipe_id),
+		 "PIPE=%u", intel_crtc->base.base.id);
+
+	/*
+	 * TODO: PSR to be exited while reading the Histogram data
+	 * Set DPST_CTL Bin Reg function select to TC
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(display, DPST_CTL(intel_crtc->pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
+	for (retry = 0; retry < HISTOGRAM_BIN_READ_RETRY_COUNT; retry++) {
+		if (intel_histogram_get_data(intel_crtc)) {
+			/* Notify user for Histogram rediness */
+			if (kobject_uevent_env(&display->drm->primary->kdev->kobj,
+					       KOBJ_CHANGE, histogram_event))
+				drm_err(display->drm,
+					"sending HISTOGRAM event failed\n");
+			break;
+		}
+	}
+	if (retry >= HISTOGRAM_BIN_READ_RETRY_COUNT) {
+		drm_err(display->drm, "Histogram bin read failed with max retry\n");
+		return;
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
+			   &histogram->work, 0);
+}
+
 int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
@@ -78,7 +156,7 @@ static int intel_histogram_enable(struct intel_crtc *intel_crtc)
 		     DPST_GUARD_THRESHOLD_GB_MASK |
 		     DPST_GUARD_INTERRUPT_DELAY_MASK | DPST_GUARD_HIST_INT_EN,
 		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
-		     DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELAY) |
+		     DPST_GUARD_INTERRUPT_DELAY(0x04) |
 		     DPST_GUARD_HIST_INT_EN);
 
 	/* Clear pending interrupts has to be done on separate write */
@@ -111,6 +189,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
 	intel_de_rmw(display, DPST_CTL(pipe),
 		     DPST_CTL_IE_HIST_EN, 0);
 
+	cancel_delayed_work(&histogram->work);
 	histogram->enable = false;
 }
 
@@ -181,6 +260,7 @@ void intel_histogram_finish(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
 
+	cancel_delayed_work_sync(&histogram->work);
 	kfree(histogram);
 }
 
@@ -198,5 +278,8 @@ int intel_histogram_init(struct intel_crtc *intel_crtc)
 	histogram->crtc = intel_crtc;
 	histogram->can_enable = false;
 
+	INIT_DEFERRABLE_WORK(&histogram->work,
+			     intel_histogram_handle_int_work);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
index fb01ffe8903f..d7ddaab7ef54 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -10,6 +10,8 @@
 
 struct drm_property_blob;
 struct intel_crtc;
+struct intel_display;
+enum pipe;
 
 #define HISTOGRAM_BIN_COUNT                    32
 #define HISTOGRAM_IET_LENGTH                   33
@@ -28,6 +30,7 @@ enum intel_global_hist_lut {
 };
 
 int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
+void intel_histogram_irq_handler(struct intel_display *display, enum pipe pipe);
 int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
 int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc,
 				struct drm_property_blob *blob);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f48b5c809cec..836602e47511 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1605,7 +1605,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
 #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
 #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
-#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
+#define   PIPE_HISTOGRAM_EVENT_ENABLE		(1UL << 23)
 #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
 #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
 #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
@@ -1628,7 +1628,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
 #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
 #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
-#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
+#define   PIPE_HISTOGRAM_EVENT_STATUS		(1UL << 7)
 #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
 #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
 #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
@@ -2470,6 +2470,7 @@
 #define  GEN12_DSB_1_INT		REG_BIT(14) /* tgl+ */
 #define  GEN12_DSB_0_INT		REG_BIT(13) /* tgl+ */
 #define  GEN12_DSB_INT(dsb_id)		REG_BIT(13 + (dsb_id))
+#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
 #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
 #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
 #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
-- 
2.25.1

