Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB65810CFF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2161C10E74E;
	Wed, 13 Dec 2023 09:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3058410E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702458521; x=1733994521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VzVBWQmO7hakOZvF5OuXaXMLRbyEN+pdaGviEwPU39A=;
 b=lWpQNjof0ux2aSs7zrcyX+jLRV4pxkfzdNb7ieT2wejuna1xDXfYvd0Q
 b1IQUFA/eoV/Eu1alpm9DWplxmlfXKSL8PitfkKQ8YUkkYkaksI8D0Mcu
 vk5igfQg9qmjH/NGu7X6mqYYMDT2+0Q9LJABtoYrY+h1YJnQbyNzYkftx
 tkPL1LxqYwA8fHHNIXukcQa1W/oSZJkbn3bP5LZ6ifx/kwgnm5aZlOvxb
 ASP8EA/wqn2M+PuTNa+gW8n0PxGqT1zYSAttBFFUAHnNSvKTLIFFqzqr2
 5JmOLuRqxs4FDGwh8h37AD0+dygT4nZ5LmXKKEwzqYlEdlBHeR0iWKi8r A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="379930511"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="379930511"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="864553909"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="864553909"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2023 01:08:27 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 1/2] drm/i915/display: Add support for darskscreen detection
Date: Wed, 13 Dec 2023 14:36:40 +0530
Message-Id: <20231213090641.1153030-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231213090641.1153030-1-nemesa.garg@intel.com>
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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

Darkscreen detection checks if all the pixels of the frame are less then
or equal to the comparision value. The comparision value is set to 256
i.e black. So upon getting black pixels from the pipe, the dark screen
detect bit is set and an error message will be printed.

v2: Addressed review comments [Jani]
v3: Addressed review comments [Arun]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 95 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   | 26 +++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  8 ++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 6 files changed, 133 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dc2469a4ead7..0322105a4c05 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -244,6 +244,7 @@ i915-y += \
 	display/intel_crtc.o \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
+	display/intel_darkscreen.o \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
new file mode 100644
index 000000000000..7c42988af354
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ *
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
+/*
+ * Check the color format and compute the compare value based on bpc.
+ */
+void intel_dark_screen_enable(struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	unsigned int frame_time_in_us;
+	u32 comparevalue;
+
+	if (!crtc->dark_screen.enable)
+		return;
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
+		drm_err(&dev_priv->drm,
+			"RGB format not supported:%c\n",
+			pipe_name(crtc->pipe));
+		return;
+	}
+
+	switch (crtc_state->pipe_bpp / 3) {
+	case COLOR_DEPTH_6BPC:
+		comparevalue = COMPARE_VALUE_6_BPC;
+		break;
+	case COLOR_DEPTH_8BPC:
+		comparevalue = COMPARE_VALUE_8_BPC;
+		break;
+	case COLOR_DEPTH_10BPC:
+		comparevalue = COMPARE_VALUE_10_BPC;
+		break;
+	case COLOR_DEPTH_12BPC:
+		comparevalue = COMPARE_VALUE_12_BPC;
+		break;
+	default:
+		drm_dbg(&dev_priv->drm,
+			"Bpc value is incorrect:%d\n",
+			crtc_state->pipe_bpp / 3);
+		return;
+	}
+
+	comparevalue = comparevalue <<
+		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state->pipe_bpp / 3);
+
+	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
+		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
+		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
+
+	frame_time_in_us = (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted_mode)) * 2;
+
+	intel_de_wait_for_set(dev_priv,
+			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE,
+			      frame_time_in_us);
+
+	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
+			  DARK_SCREEN_DETECT) {
+		drm_err(&dev_priv->drm,
+			"Dark Screen detected:%c\n",
+			pipe_name(crtc->pipe));
+	}
+
+	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 1, DARK_SCREEN_DETECT |
+		     DARK_SCREEN_DONE);
+}
+
+void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gpu/drm/i915/display/intel_darkscreen.h
new file mode 100644
index 000000000000..366e43499fc4
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ *
+ */
+
+#ifndef __INTEL_DARKSCREEN_H__
+#define __INTEL_DARKSCREEN_H__
+
+#include <linux/types.h>
+
+struct intel_crtc_state;
+struct intel_crtc;
+
+struct intel_darkscreen {
+	bool enable;
+};
+
+#ifdef CONFIG_DEBUG_FS
+void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
+void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);
+void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
+
+#endif
+
+#endif /* __INTEL_DARKSCREEN_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3600497ff512..d441e08fef58 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -49,6 +49,7 @@
 #include "i915_vma.h"
 #include "i915_vma_types.h"
 #include "intel_bios.h"
+#include "intel_darkscreen.h"
 #include "intel_display.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
@@ -1539,6 +1540,7 @@ struct intel_crtc {
 
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
+	struct intel_darkscreen dark_screen;
 #endif
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c203dcfd6c7b..4e273c0ac801 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2097,6 +2097,14 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
+#define _DARK_SCREEN_PIPE_A		0x60120
+#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
+#define   DARK_SCREEN_ENABLE		REG_BIT(31)
+#define   DARK_SCREEN_DETECT		REG_BIT(29)
+#define   DARK_SCREEN_DONE		REG_BIT(28)
+#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
+#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index fe659a97001c..ff533733245c 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -176,6 +176,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_crtc_state_dump.o \
 	i915-display/intel_cursor.o \
 	i915-display/intel_cx0_phy.o \
+	i915-display/intel_darkscreen.o \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_display.o \
-- 
2.25.1

