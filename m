Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B09C7D9453
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A899F10E96C;
	Fri, 27 Oct 2023 09:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A305A10E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698400569; x=1729936569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XKFrCiEbh7zAgYbhVRN85zTuGL9CVnkql2/qDHNz9Vo=;
 b=dBhIb0shFUSFXhbox1GP6wNBf87UD5sPq8j4tAW39460PR1IwGz1edK1
 gYeiTi7UnBf97ZEbPXk/mHPTTbi4h1Dc75xKALzXd5DxfTpTpJUjGuxlt
 IFk0Gc+RSaJiA27+eO0+AA+ga2OIwQto+aDomV+Bfst5Q9uAjtsQCstcr
 xeU4OqfTIGBR/ihBygfQQ652BE7UWv8yc6KuNUFDcRGDsuxmSELKRK9Y6
 LfBsHkwbQKILVtnrzd8J4YBI7f06TVtjXKkFXF85IO9VAI3Crq60+2Fvn
 nrwLscRbhacLcaL6/anHIscG5liujLxitV16FWkbCHPV6QS3KMdX16SVb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384953763"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="384953763"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="1090879039"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="1090879039"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2023 02:56:07 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Oct 2023 15:23:35 +0530
Message-Id: <20231027095336.3059445-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231027095336.3059445-1-nemesa.garg@intel.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darskscreen
 detection
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

v2: Addressed review comments (Jani)

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 87 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   | 26 ++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  8 ++
 5 files changed, 124 insertions(+)
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
index 000000000000..0be719c76c4e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -0,0 +1,87 @@
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
+ * Checks the color format and compute the comapre value based on bpc.
+ */
+void intel_dark_screen_enable(struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 comparevalue;
+
+	if (!crtc->dark_screen.enable)
+		return;
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
+		return;
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
+	intel_de_wait_for_set(dev_priv,
+			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE, 1);
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
index 65ea37fe8cff..bd0306e9318f 100644
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
@@ -1517,6 +1518,7 @@ struct intel_crtc {
 
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
+	struct intel_darkscreen dark_screen;
 #endif
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 135e8d8dbdf0..a9f7b80a56cf 100644
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
-- 
2.25.1

