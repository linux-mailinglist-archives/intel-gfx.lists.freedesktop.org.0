Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C901B8B0354
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 09:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA5E10F802;
	Wed, 24 Apr 2024 07:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZI2231uw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92FB210FDB4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 07:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713944464; x=1745480464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=37mKXVWdV4uZW5ItDFi3zOhOmUItDmEZAC2JBA/V2ik=;
 b=ZI2231uwkWuLuegjxDDRjNMsQ8tELXTDv9rfdagYQutoVjmNYYYH+7d8
 cz9OHdPHYqjIh4ELO4SEsVKhl8zZHXLfunPH43CxTsKLiRJOIfDwJ3CLG
 wACu8tj4p0Hqt1d+jQWVM65IHybsWllnBQAuq1Ym+OdT+fq8KjIdtp3F6
 jxDH61DsWr9Ai+CK3DOiNq8l1c/Wu+Iomv2yQYOdtEITUUd1esxnUn4nY
 ExN6tsUr8fPYHDte0OWjzTOnd3ur4FDpOG14sn+T/hRCQNW0Plhd1kLB/
 QI+u0pWOWzsgq8mHHFjYnXDZGv/JMBS+rdfkAcxMna7DsjaeVkGpmIkD0 g==;
X-CSE-ConnectionGUID: Re6OG9rRRtu64AiuUgS6pA==
X-CSE-MsgGUID: Qwn7bhtAQmeCyn6N+Y/S+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13391757"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13391757"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 00:41:04 -0700
X-CSE-ConnectionGUID: cfxCmG/BTgWF3J8LVkGMlA==
X-CSE-MsgGUID: e1lUF8dES3CbV+f90jfP3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29108300"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 24 Apr 2024 00:41:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [RFC 2/3] drm/i915/darkscreen: Enable darkscreen detection
Date: Wed, 24 Apr 2024 13:08:18 +0530
Message-ID: <20240424073829.824312-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240424073829.824312-2-suraj.kandpal@intel.com>
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
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

Add functions to enable darkscreen detection and corresponding
additions to Makefile to build them.
The enable and detect functions will be used in case we encounter
a FIFO underrun which will help to check if a darkscreen occurred.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 139 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   |  25 ++++
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 5 files changed, 169 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7cad944b825c..00e36169a74d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -255,6 +255,7 @@ i915-y += \
 	display/intel_crtc.o \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
+	display/intel_darkscreen.o \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
new file mode 100644
index 000000000000..3ac3e8e6c1e3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_reg.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+
+#define COLOR_DEPTH_6BPC 6
+#define COLOR_DEPTH_8BPC 8
+#define COLOR_DEPTH_10BPC 10
+#define COLOR_DEPTH_12BPC 12
+
+#define COMPARE_VALUE_6_BPC 4
+#define COMPARE_VALUE_8_BPC 16
+#define COMPARE_VALUE_10_BPC 64
+#define COMPARE_VALUE_12_BPC 256
+
+#define COMPARE_VALUE_CALCULATION_FACTOR 12
+
+static void intel_darkscreen_detect(struct intel_crtc *crtc);
+
+static u32 intel_darkscreen_get_comp_val(struct drm_i915_private *i915, int bpc)
+{
+	u32 compare_value = 0;
+
+	switch (bpc) {
+	case COLOR_DEPTH_6BPC:
+		compare_value = COMPARE_VALUE_6_BPC;
+		break;
+	case COLOR_DEPTH_8BPC:
+		compare_value = COMPARE_VALUE_8_BPC;
+		break;
+	case COLOR_DEPTH_10BPC:
+		compare_value = COMPARE_VALUE_10_BPC;
+		break;
+	case COLOR_DEPTH_12BPC:
+		compare_value = COMPARE_VALUE_12_BPC;
+		break;
+	default:
+		drm_dbg(&i915->drm, "Bpc value is incorrect:%d\n", bpc);
+		return -EINVAL;
+	}
+
+	compare_value = compare_value << (COMPARE_VALUE_CALCULATION_FACTOR - bpc);
+	return DARK_SCREEN_COMPARE_VAL(compare_value);
+}
+
+static void intel_darkscreen_work_fn(struct work_struct *work)
+{
+	struct intel_darkscreen *dark_screen =
+		container_of(work, typeof(*dark_screen), darkscreen_detect_work);
+
+	if (!dark_screen->enable)
+		intel_darkscreen_enable(dark_screen->crtc);
+
+	intel_darkscreen_detect(dark_screen->crtc);
+}
+
+void intel_darkscreen_schedule_work(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_darkscreen *dark_screen = &crtc->dark_screen;
+
+	dark_screen->crtc = crtc;
+	queue_work(i915->unordered_wq, &dark_screen->darkscreen_detect_work);
+}
+
+void intel_darkscreen_setup(struct intel_crtc *crtc)
+{
+	struct intel_darkscreen *dark_screen;
+
+	dark_screen = &crtc->dark_screen;
+	dark_screen = kzalloc(sizeof(*dark_screen), GFP_KERNEL);
+	if (!dark_screen)
+		return;
+	dark_screen->enable = false;
+
+	INIT_WORK(&dark_screen->darkscreen_detect_work, intel_darkscreen_work_fn);
+}
+
+/*
+ * Check the color format and compute the compare value based on bpc.
+ */
+int intel_darkscreen_enable(struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state = crtc->config;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int bpc = crtc_state->pipe_bpp / 3;
+	u32 val;
+
+	if (!crtc->dark_screen.enable)
+		return 0;
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "YUV format not supported:%c for darkscreen detection\n",
+			    pipe_name(crtc->pipe));
+		return -EPROTO;
+	}
+
+	val = intel_darkscreen_get_comp_val(dev_priv, bpc);
+	val |= DARK_SCREEN_ENABLE;
+	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), val);
+	crtc->dark_screen.enable = true;
+
+	return 0;
+}
+
+static void intel_darkscreen_detect(struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state = crtc->config;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	unsigned int frame_time_in_us;
+	u32 val = 0;
+
+	val |= DARK_SCREEN_DETECT | DARK_SCREEN_DONE;
+	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, val);
+
+	frame_time_in_us = (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted_mode)) * 2;
+	intel_de_wait_for_set(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder),
+			      DARK_SCREEN_DONE, frame_time_in_us);
+
+	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
+	    DARK_SCREEN_DETECT) {
+		drm_dbg_kms(&dev_priv->drm, "Dark screen detected:%c\n", pipe_name(crtc->pipe));
+	}
+}
+
+void intel_darkscreen_disable(struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state = crtc->config;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gpu/drm/i915/display/intel_darkscreen.h
new file mode 100644
index 000000000000..3b4b3d3df672
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DARKSCREEN_H__
+#define __INTEL_DARKSCREEN_H__
+
+#include <linux/types.h>
+#include <linux/workqueue.h>
+
+struct intel_crtc;
+
+struct intel_darkscreen {
+	bool enable;
+	struct work_struct darkscreen_detect_work;
+	struct intel_crtc *crtc;
+};
+
+void intel_darkscreen_setup(struct intel_crtc *crtc);
+int intel_darkscreen_enable(struct intel_crtc *crtc);
+void intel_darkscreen_disable(struct intel_crtc *crtc);
+void intel_darkscreen_schedule_work(struct intel_crtc *crtc);
+
+#endif /* __INTEL_DARKSCREEN_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 62f7a30c37dc..177cf5ff8d77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -50,6 +50,7 @@
 #include "i915_vma.h"
 #include "i915_vma_types.h"
 #include "intel_bios.h"
+#include "intel_darkscreen.h"
 #include "intel_display.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
@@ -1511,6 +1512,8 @@ struct intel_crtc {
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
+	struct intel_darkscreen dark_screen;
+
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 8321ec4f9b46..c83217e20cb9 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -228,6 +228,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_crtc_state_dump.o \
 	i915-display/intel_cursor.o \
 	i915-display/intel_cx0_phy.o \
+	i915-display/intel_darkscreen.o \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_display.o \
-- 
2.43.2

