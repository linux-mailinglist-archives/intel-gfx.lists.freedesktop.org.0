Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBB292865F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 12:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE7F10EA0D;
	Fri,  5 Jul 2024 10:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMxBJMIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026C910EA08
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 10:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720173955; x=1751709955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=elJCoVZ6XTBaCJhxoipwxTPJPpJAjozILLhqmq0dunI=;
 b=QMxBJMImqEzqrClJGTve9Xg3a7/tm1bqr1Q8swAoGr12c+HCrTGVDJ/y
 bEhenuLJQVN9YbJC8e36+SHS014WLIZzNWQW/BCSKLBWQW8km8T+Md3ZU
 uC/hyZCZ9hF5lOOjUgzt4SNWXhpRQjBjY6y3Ga6tvcEN5LqgczhmQhpDo
 rHDdk5EmGd2ejs3p3NEsMQC83uuXIZGn0Xxh4MvH+TmJ+Xhq9CW2RTmmE
 BB1T6blAoQveUY2l+aK4BuR2Qrz6okOM8LElRCAmKxJAIgePs7UFb2MeJ
 3Kv8dzHRtfyzMkIIRaABjZhKrH4r3cMN36GmvzKhF63jgQ31Oaq3fDnqD g==;
X-CSE-ConnectionGUID: XjOO6xf9ROaFsNRIn4f8sQ==
X-CSE-MsgGUID: 6eYto2HPR22Px4EUrgsEyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="21275197"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="21275197"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 03:05:54 -0700
X-CSE-ConnectionGUID: sGrymiY6R+ub+QM5qulLDQ==
X-CSE-MsgGUID: s+tktkbRQSyEs6rzk6tuhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46839183"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 05 Jul 2024 03:05:53 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 2/5] drm/i915/display: histogram interrupt handling
Date: Fri,  5 Jul 2024 15:25:48 +0530
Message-Id: <20240705095551.1244154-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705095551.1244154-1-arun.r.murthy@intel.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
 .../gpu/drm/i915/display/intel_histogram.c    | 93 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram.h    |  3 +
 drivers/gpu/drm/i915/i915_reg.h               |  5 +-
 4 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..42fa2226b69e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -17,6 +17,7 @@
 #include "intel_fdi_regs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
+#include "intel_histogram.h"
 #include "intel_hotplug_irq.h"
 #include "intel_pipe_crc_regs.h"
 #include "intel_pmdemand.h"
@@ -1155,6 +1156,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 
+		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
+			intel_histogram_irq_handler(dev_priv, pipe);
+
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
 			drm_err_ratelimited(&dev_priv->drm,
@@ -1683,7 +1687,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
-		GEN8_PIPE_CDCLK_CRC_DONE;
+		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_HISTOGRAM_EVENT;
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index 1a603445fc29..8fa3bc74e52b 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -11,6 +11,85 @@
 #include "intel_de.h"
 #include "intel_histogram.h"
 
+static void intel_histogram_handle_int_work(struct work_struct *work)
+{
+	struct intel_histogram *histogram = container_of(work,
+		struct intel_histogram, handle_histogram_int_work.work);
+	struct drm_i915_private *i915 = histogram->i915;
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(drm_crtc_from_index(&i915->drm, histogram->pipe));
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};
+	u32 dpstbin;
+	int i, try = 0;
+
+	/*
+	 * TODO: PSR to be exited while reading the Histogram data
+	 * Set DPST_CTL Bin Reg function select to TC
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(i915, DPST_CTL(histogram->pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
+
+	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
+		dpstbin = intel_de_read(i915, DPST_BIN(histogram->pipe));
+		if (dpstbin & DPST_BIN_BUSY) {
+			/*
+			 * If DPST_BIN busy bit is set, then set the
+			 * DPST_CTL bin reg index to 0 and proceed
+			 * from beginning.
+			 */
+			intel_de_rmw(i915, DPST_CTL(histogram->pipe),
+				     DPST_CTL_BIN_REG_MASK, 0);
+			i = 0;
+			if (try++ == 5) {
+				drm_err(&i915->drm,
+					"Histogram block is busy, failed to read\n");
+				intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
+					     DPST_GUARD_HIST_EVENT_STATUS, 1);
+				return;
+			}
+		}
+		histogram->bindata[i] = dpstbin & DPST_BIN_DATA_MASK;
+		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
+			       i, histogram->bindata[i]);
+	}
+
+	/* Notify user for Histogram rediness */
+	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
+			       histogram_event))
+		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
+
+	/* Enable histogram interrupt */
+	intel_de_rmw(i915, DPST_GUARD(histogram->pipe), DPST_GUARD_HIST_INT_EN,
+		     DPST_GUARD_HIST_INT_EN);
+
+	/* Clear histogram interrupt by setting histogram interrupt status bit*/
+	intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
+		     DPST_GUARD_HIST_EVENT_STATUS, 1);
+
+	drm_property_replace_global_blob(&i915->drm,
+			&intel_crtc->config->histogram,
+			sizeof(histogram->bindata),
+			histogram->bindata, &intel_crtc->base.base,
+			intel_crtc->histogram_property);
+}
+
+void intel_histogram_irq_handler(struct drm_i915_private *i915, enum pipe pipe)
+{
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
+	struct intel_histogram *histogram = intel_crtc->histogram;
+
+	if (!histogram->enable) {
+		drm_err(&i915->drm,
+			"spurious interrupt, histogram not enabled\n");
+		return;
+	}
+
+	queue_delayed_work(histogram->wq,
+			   &histogram->handle_histogram_int_work, 0);
+}
+
 int intel_histogram_can_enable(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
@@ -102,6 +181,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
 	intel_de_rmw(i915, DPST_CTL(pipe),
 		     DPST_CTL_IE_HIST_EN, 0);
 
+	cancel_delayed_work(&histogram->handle_histogram_int_work);
 	histogram->enable = false;
 }
 
@@ -160,6 +240,8 @@ void intel_histogram_deinit(struct intel_crtc *intel_crtc)
 {
 	struct intel_histogram *histogram = intel_crtc->histogram;
 
+	cancel_delayed_work(&histogram->handle_histogram_int_work);
+	destroy_workqueue(histogram->wq);
 	kfree(histogram);
 }
 
@@ -180,6 +262,17 @@ int intel_histogram_init(struct intel_crtc *intel_crtc)
 	intel_crtc->histogram = histogram;
 	histogram->pipe = intel_crtc->pipe;
 	histogram->can_enable = false;
+	histogram->wq = alloc_ordered_workqueue("histogram_wq",
+						WQ_MEM_RECLAIM);
+	if (!histogram->wq) {
+		drm_err(&i915->drm,
+			"failed to create work queue\n");
+		kfree(histogram);
+		return -ENOMEM;
+	}
+
+	INIT_DEFERRABLE_WORK(&histogram->handle_histogram_int_work,
+			     intel_histogram_handle_int_work);
 
 	histogram->i915 = i915;
 
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
index 632116c52882..f07683dde005 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -76,6 +76,8 @@ enum intel_global_hist_lut {
 
 struct intel_histogram {
 	struct drm_i915_private *i915;
+	struct workqueue_struct *wq;
+	struct delayed_work handle_histogram_int_work;
 	bool enable;
 	bool can_enable;
 	enum pipe pipe;
@@ -83,6 +85,7 @@ struct intel_histogram {
 };
 
 int intel_histogram_can_enable(struct intel_crtc *intel_crtc);
+void intel_histogram_irq_handler(struct drm_i915_private *i915, enum pipe pipe);
 int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
 int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
 int intel_histogram_init(struct intel_crtc *intel_crtc);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0e3d79227e3c..185d4b66cbb6 100644
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
@@ -2515,6 +2515,7 @@
 #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
 #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
+#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
 #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
 #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
 #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
-- 
2.25.1

