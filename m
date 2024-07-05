Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C096792865C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 12:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6601E10E9FE;
	Fri,  5 Jul 2024 10:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5Ta06u+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B03910E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720173953; x=1751709953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=77T4BveIVXY4QJvt4tKKlbvO3nQSFPN8ooow91OGBmk=;
 b=D5Ta06u+ScofNpUmMRu6K0ECEQetDjSbwbo2kAR4YXXoX9piXiIcbItN
 5s6FB173yJEGp6LLxhIGC5L6CDFe0xp+6py9PFFHYo/O6lySuiTZufCTh
 WgXRAT5F1wR2mFuR2v6RKHXMV0RidMWRPIpW7qZMhQPhdeDqAabV6ThaJ
 R+opl9yDQ7RBsNd7VniukXXGVPynt3kOeCDkGsUIT5HLIVh9/IX05DsXv
 8FnmGlaf93gniz4MXY52duB7ygja/Fhfdjyd9+nP9g/19NDgUxPBNA1yL
 wFZv909beXBOcRvftMIw0nN0JiFxQ9qaGptfi1fMPWQQ2XbQfe6G2R2cX Q==;
X-CSE-ConnectionGUID: 5+/aDJ7sS+iRnHBhVazIPQ==
X-CSE-MsgGUID: Q/ujHeOzSdOubg61zUrouQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="21275196"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="21275196"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 03:05:53 -0700
X-CSE-ConnectionGUID: QOA0uzB4SiG+CiBiLT8q7g==
X-CSE-MsgGUID: D5cZYnq2TLmBJKwabSqqbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46839171"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 05 Jul 2024 03:05:52 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 1/5] drm/i915/display: Add support for histogram
Date: Fri,  5 Jul 2024 15:25:47 +0530
Message-Id: <20240705095551.1244154-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705095551.1244154-1-arun.r.murthy@intel.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
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

Statistics is generated from the image frame that is coming to display
and an event is sent to user after reading this histogram data.
This statistics/histogram is then shared with the user upon getting a
request from user. User can then use this histogram and generate an
enhancement factor. This enhancement factor can be multiplied/added with
the incoming pixel data frame.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 .../gpu/drm/i915/display/intel_histogram.c    | 187 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram.h    |  91 +++++++++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 5 files changed, 283 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c63fa2133ccb..03caf3a24966 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -264,6 +264,7 @@ i915-y += \
 	display/intel_hdcp.o \
 	display/intel_hdcp_gsc.o \
 	display/intel_hdcp_gsc_message.o \
+	display/intel_histogram.o \
 	display/intel_hotplug.o \
 	display/intel_hotplug_irq.o \
 	display/intel_hti.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..e0a9c6d8c9b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1537,6 +1537,9 @@ struct intel_crtc {
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
+	/* histogram data */
+	struct intel_histogram *histogram;
+
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
new file mode 100644
index 000000000000..1a603445fc29
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -0,0 +1,187 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include "i915_reg.h"
+#include "i915_drv.h"
+#include "intel_display_types.h"
+#include "intel_de.h"
+#include "intel_histogram.h"
+
+int intel_histogram_can_enable(struct intel_crtc *intel_crtc)
+{
+	struct intel_histogram *histogram = intel_crtc->histogram;
+
+	/* TODO: Restrictions for enabling histogram */
+	histogram->can_enable = true;
+
+	return 0;
+}
+
+static void intel_histogram_enable_dithering(struct drm_i915_private *dev_priv,
+					     enum pipe pipe)
+{
+	intel_de_rmw(dev_priv, PIPE_MISC(pipe), PIPE_MISC_DITHER_ENABLE,
+		     PIPE_MISC_DITHER_ENABLE);
+}
+
+static int intel_histogram_enable(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	int pipe = intel_crtc->pipe;
+	u64 res;
+	u32 gbandthreshold;
+
+	if (!histogram->can_enable) {
+		drm_err(&i915->drm,
+			"Histogram not supported, compute config failed\n");
+		return -EINVAL;
+	}
+
+	if (histogram->enable)
+		return 0;
+
+	/* Pipe Dithering should be enabled with GLOBAL_HIST */
+	intel_histogram_enable_dithering(i915, pipe);
+
+	/*
+	 * enable DPST_CTL Histogram mode
+	 * Clear DPST_CTL Bin Reg function select to TC
+	 */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
+		     DPST_CTL_HIST_MODE | DPST_CTL_IE_TABLE_VALUE_FORMAT,
+		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
+		     DPST_CTL_HIST_MODE_HSV |
+		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
+
+	/* Re-Visit: check if wait for one vblank is required */
+	drm_crtc_wait_one_vblank(&intel_crtc->base);
+
+	/* TODO: one time programming: Program GuardBand Threshold */
+	res = (intel_crtc->config->hw.adjusted_mode.vtotal *
+				intel_crtc->config->hw.adjusted_mode.htotal);
+	gbandthreshold = (res *	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
+				HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
+
+	/* Enable histogram interrupt mode */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+		     DPST_GUARD_THRESHOLD_GB_MASK |
+		     DPST_GUARD_INTERRUPT_DELAY_MASK | DPST_GUARD_HIST_INT_EN,
+		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
+		     DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELAY) |
+		     DPST_GUARD_HIST_INT_EN);
+
+	/* Clear pending interrupts has to be done on separate write */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+		     DPST_GUARD_HIST_EVENT_STATUS, 1);
+
+	histogram->enable = true;
+
+	return 0;
+}
+
+static void intel_histogram_disable(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	int pipe = intel_crtc->pipe;
+
+	/* Pipe Dithering should be enabled with GLOBAL_HIST */
+	intel_histogram_enable_dithering(i915, pipe);
+
+	/* Clear pending interrupts and disable interrupts */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+		     DPST_GUARD_HIST_INT_EN | DPST_GUARD_HIST_EVENT_STATUS, 0);
+
+	/* disable DPST_CTL Histogram mode */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_IE_HIST_EN, 0);
+
+	histogram->enable = false;
+}
+
+int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
+{
+	if (enable)
+		return intel_histogram_enable(intel_crtc);
+
+	intel_histogram_disable(intel_crtc);
+	return 0;
+}
+
+int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
+{
+	struct intel_histogram *histogram = intel_crtc->histogram;
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	int pipe = intel_crtc->pipe;
+	int i = 0;
+
+	if (!histogram->enable) {
+		drm_err(&i915->drm, "histogram not enabled");
+		return -EINVAL;
+	}
+
+	if (!data) {
+		drm_err(&i915->drm, "enhancement LUT data is NULL");
+		return -EINVAL;
+	}
+
+	/*
+	 * Set DPST_CTL Bin Reg function select to IE
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
+		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
+
+	for (i = 0; i < HISTOGRAM_IET_LENGTH; i++) {
+		intel_de_rmw(i915, DPST_BIN(pipe),
+			     DPST_BIN_DATA_MASK, data[i]);
+		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=%x\n", i, data[i]);
+	}
+
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_ENHANCEMENT_MODE_MASK | DPST_CTL_IE_MODI_TABLE_EN,
+		     DPST_CTL_EN_MULTIPLICATIVE | DPST_CTL_IE_MODI_TABLE_EN);
+
+	/* Once IE is applied, change DPST CTL to TC */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL, DPST_CTL_BIN_REG_FUNC_TC);
+
+	return 0;
+}
+
+void intel_histogram_deinit(struct intel_crtc *intel_crtc)
+{
+	struct intel_histogram *histogram = intel_crtc->histogram;
+
+	kfree(histogram);
+}
+
+int intel_histogram_init(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_histogram *histogram;
+
+	/* Allocate histogram internal struct */
+	histogram = kzalloc(sizeof(*histogram), GFP_KERNEL);
+	if (unlikely(!histogram)) {
+		drm_err(&i915->drm,
+			"Failed to allocate HISTOGRAM event\n");
+		kfree(histogram);
+		return -ENOMEM;
+	}
+
+	intel_crtc->histogram = histogram;
+	histogram->pipe = intel_crtc->pipe;
+	histogram->can_enable = false;
+
+	histogram->i915 = i915;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
new file mode 100644
index 000000000000..632116c52882
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_HISTOGRAM_H__
+#define __INTEL_HISTOGRAM_H__
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include "intel_display.h"
+#include "i915_reg.h"
+
+/* GLOBAL_HIST related registers */
+#define _DPST_CTL_A					0x490C0
+#define _DPST_CTL_B					0x491C0
+#define DPST_CTL(pipe)					_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
+#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
+#define DPST_CTL_RESTORE				REG_BIT(28)
+#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
+#define DPST_CTL_HIST_MODE				REG_BIT(24)
+#define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
+#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
+#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
+#define DPST_CTL_BIN_REG_FUNC_TC			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
+#define DPST_CTL_BIN_REG_FUNC_IE			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
+#define DPST_CTL_BIN_REG_MASK				REG_GENMASK(6, 0)
+#define DPST_CTL_BIN_REG_CLEAR				REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
+#define DPST_CTL_HIST_MODE_YUV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
+#define DPST_CTL_HIST_MODE_HSV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
+
+#define _DPST_GUARD_A					0x490C8
+#define _DPST_GUARD_B					0x491C8
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)
+#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
+#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
+#define DPST_GUARD_INTERRUPT_DELAY_MASK			REG_GENMASK(29, 22)
+#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
+#define DPST_GUARD_THRESHOLD_GB_MASK			REG_GENMASK(21, 0)
+#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
+
+#define _DPST_BIN_A					0x490C4
+#define _DPST_BIN_B					0x491C4
+#define DPST_BIN(pipe)					_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
+#define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
+#define DPST_BIN_BUSY					REG_BIT(31)
+
+#define INTEL_HISTOGRAM_PIPEA			0x90000000
+#define INTEL_HISTOGRAM_PIPEB			0x90000002
+#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
+						     INTEL_HISTOGRAM_PIPEA, \
+						     INTEL_HISTOGRAM_PIPEB)
+
+#define HISTOGRAM_BIN_COUNT			32
+#define HISTOGRAM_IET_LENGTH			33
+
+#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pipe's current pixel count.
+#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor for threshold guardband.
+#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
+
+enum intel_global_hist_status {
+	INTEL_HISTOGRAM_ENABLE,
+	INTEL_HISTOGRAM_DISABLE,
+};
+
+enum intel_global_histogram {
+	INTEL_HISTOGRAM,
+};
+
+enum intel_global_hist_lut {
+	INTEL_HISTOGRAM_PIXEL_FACTOR,
+};
+
+struct intel_histogram {
+	struct drm_i915_private *i915;
+	bool enable;
+	bool can_enable;
+	enum pipe pipe;
+	u32 bindata[HISTOGRAM_BIN_COUNT];
+};
+
+int intel_histogram_can_enable(struct intel_crtc *intel_crtc);
+int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
+int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
+int intel_histogram_init(struct intel_crtc *intel_crtc);
+void intel_histogram_deinit(struct intel_crtc *intel_crtc);
+
+#endif /* __INTEL_HISTOGRAM_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 628c245c4822..1881e3e1f4a9 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -260,6 +260,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_hdcp.o \
 	i915-display/intel_hdcp_gsc_message.o \
 	i915-display/intel_hdmi.o \
+	i915-display/intel_histogram.o \
 	i915-display/intel_hotplug.o \
 	i915-display/intel_hotplug_irq.o \
 	i915-display/intel_hti.o \
-- 
2.25.1

