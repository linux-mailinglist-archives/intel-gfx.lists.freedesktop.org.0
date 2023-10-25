Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EA57D68E3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA7E210E62F;
	Wed, 25 Oct 2023 10:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2F910E63E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698230227; x=1729766227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DimPZXg2G4GISaJVd4Qi1QgyumwHeV2hVK1FKhIFQ1c=;
 b=UgK1z7pGXFtIxIs7ch8LboO+4owxXzYKA8p4QEZTByPPQDV/t2PjKiWz
 0t18ud7+ChbrbHvTsGVMSqNgz74KdAtA23Wg8hIlpeh+Y4ZkL9ph54Z+u
 wPE09IstdeYkHEHJ0g40emj+qPi/WpiZMTsOpTOUo8qkzXx2eUgGgom1+
 oQNW3WVoOHKo+RQ6DcuVTl1IqSD2We6J65plHvhsj9sL3FzrYwZ1wAl3N
 qoq/zbxDnBKvHtAkb+Mgj3FfxZvZB02Zlh6rV+5vDSOcggdZH8flygSwf
 MPWLlgiEjiQl/WZkeWlsPwZnU02dHq/k704px6RaAyHe0Ftp0aOiqZxnb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="43851"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="43851"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:30:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882409878"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882409878"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orsmga004.jf.intel.com with ESMTP; 25 Oct 2023 03:29:58 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 15:57:33 +0530
Message-Id: <20231025102734.2783492-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231025102734.2783492-1-nemesa.garg@intel.com>
References: <20231025102734.2783492-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add Darkscreen registers and
 timer handler.
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

Add new registers for Darkscreen
The logic checks for any black screen at pipe level and upon such detection prints error.
Darkscreen compares the pixels with the compare value(0x00 - black) for the detection purpose.
This feature can be enable/disable through debugfs.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 69 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   | 40 +++++++++++
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++
 5 files changed, 122 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 88b2bb005014..538d5a42f9e3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,7 @@ i915-y += \
 	display/intel_crtc.o \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
+	display/intel_darkscreen.o \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
new file mode 100644
index 000000000000..ef68dbc7a296
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2018 Intel Corporation
+ *
+ * Author: Nemesa Garg <nemesa.garg@intel.com>
+ */
+#include "i915_reg.h"
+#include "intel_display_types.h"
+#include "intel_de.h"
+
+/*
+ * Dark screen detection check if all pixels
+ * in a frame are less than or equal to compare
+ * value.Check the color format and compute the
+ * compare value based on bpc.
+ */
+void dark_screen_enable(struct intel_crtc_state *crtc_state)
+{
+	u32 comparevalue;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (!crtc->dark_screen.enable)
+		return;
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
+		return;
+	drm_err(&dev_priv->drm,
+		"RGB format is not present%c\n",
+		pipe_name(crtc->pipe));
+
+	switch (crtc_state->pipe_bpp / 3) {
+	case DD_COLOR_DEPTH_6BPC:
+		comparevalue = DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_6_BPC;
+		break;
+	case DD_COLOR_DEPTH_8BPC:
+		comparevalue = DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_8_BPC;
+		break;
+	case DD_COLOR_DEPTH_10BPC:
+		comparevalue = DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_10_BPC;
+		break;
+	case DD_COLOR_DEPTH_12BPC:
+		comparevalue = DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_12_BPC;
+		break;
+	default:
+		break;
+	}
+
+	comparevalue = comparevalue <<
+		(DARKSCREEN_PROGRAMMED_COMPARE_VALUE_CALCULATION_FACTOR - crtc->dark_screen.bpc);
+
+	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
+		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
+		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
+
+	intel_de_wait_for_set(dev_priv,
+			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE, 1);
+
+	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
+			  DARK_SCREEN_DETECT) {
+		drm_err(&dev_priv->drm,
+			"Dark Screen detected %c\n",
+			pipe_name(crtc->pipe));
+	}
+
+	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, DARK_SCREEN_DETECT |
+		       DARK_SCREEN_DONE);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gpu/drm/i915/display/intel_darkscreen.h
new file mode 100644
index 000000000000..69da1ea56829
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2018 Intel Corporation
+ *
+ * Author: Nemesa Garg <nemesa.garg@intel.com>
+ */
+
+#ifndef __INTEL_DARKSCREEN_H__
+#define __INTEL_DARKSCREEN_H__
+
+#include <drm/drm_device.h>
+
+#define DD_COLOR_DEPTH_6BPC 6
+#define DD_COLOR_DEPTH_8BPC 8
+#define DD_COLOR_DEPTH_10BPC 10
+#define DD_COLOR_DEPTH_12BPC 12
+
+// HW Darkscreen Detection Macros
+#define DARKSCREEN_PROGRAMMED_COMPARE_VALUE_CALCULATION_FACTOR 12
+
+// Compare Value = 16*(2 ^ (bpc-8))
+#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_6_BPC 4
+#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_8_BPC 16
+#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_10_BPC 64
+#define DARKSCREEN_COMPARE_VALUE_LIMITED_RANGE_12_BPC 256
+
+struct intel_crtc_state;
+struct intel_crtc;
+
+struct intel_darkscreen {
+	bool enable;
+	u64 timer_value;
+	u8 bpc;
+	struct hrtimer timer;
+};
+
+void dark_screen_enable(struct intel_crtc_state *crtc_state);
+void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
+
+#endif /* __INTEL_DARKSCREEN_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 65ea37fe8cff..289ecda2e032 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -54,6 +54,7 @@
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_wm_types.h"
+#include "intel_darkscreen.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
@@ -1515,6 +1516,8 @@ struct intel_crtc {
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
+	struct intel_darkscreen dark_screen;
+
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 135e8d8dbdf0..01d9de14f79c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2097,6 +2097,15 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
+/* Dark SCREEN */
+#define _DARK_SCREEN_PIPE_A             0x60120
+#define DARK_SCREEN(trans)              _MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
+#define   DARK_SCREEN_ENABLE            REG_BIT(31)
+#define   DARK_SCREEN_DETECT            REG_BIT(29)
+#define   DARK_SCREEN_DONE		REG_BIT(28)
+#define DARK_SCREEN_COMPARE_MASK        REG_GENMASK(9, 0)
+#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
-- 
2.25.1

