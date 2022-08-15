Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EAF592B48
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 11:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08CD9FA0A;
	Mon, 15 Aug 2022 09:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5BBA0D52
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660556924; x=1692092924;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IVR3/VY+NU20/Ry1Ssj75xrdBQoqRcXSfOr9buOEOqc=;
 b=nQQvsvR3gaMdd3b0IBaFfbcpazzlLYcBczdzFCZV4WNb2cxnY2wWRymf
 7hI4pgV9ar+/7bZelJprz5cqqRkqB3443BTyhhZhdcch/y4+AP35dw7Cq
 LEPLiSRbuW3G4FGJRizGqvrUafMhTTeQePAGSbKRjW6RTOWZXPXJwPqI8
 oQlwHqW+pJB1sQ9W3vMtnHHigGuKZpfb4ggCur2EBkLNXobYk5UQBjMbF
 +MrnQo8zYAR8otMOI03GR3TZY5pDW5FmtHxn8whpl0/qVPP3ynZ1wBsba
 ziv5Nig0naXGapqEYm6e36QLhkXcrop/WR7dTlu0OAeR6UucLdDRw/5uK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="378216596"
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="378216596"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 02:48:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="666606690"
Received: from abelova-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.50.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 02:48:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Aug 2022 12:48:38 +0300
Message-Id: <20220815094838.3511723-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/backlight: split out backlight
 registers to a separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_reg.h by splitting backlight registers to a separate
file. Also include the utility pin definitions, even though they are
used for non-backlight things too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 .../gpu/drm/i915/display/intel_backlight.c    |   1 +
 .../drm/i915/display/intel_backlight_regs.h   | 124 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   1 +
 .../i915/display/intel_display_power_well.c   |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 112 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 7 files changed, 129 insertions(+), 112 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_backlight_regs.h

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5dcfa7feffa9..c182253196f3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -33,6 +33,7 @@
 #include "icl_dsi_regs.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
+#include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 110fc98ec280..262b2fda37e5 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -9,6 +9,7 @@
 #include <linux/string_helpers.h>
 
 #include "intel_backlight.h"
+#include "intel_backlight_regs.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
new file mode 100644
index 000000000000..50c1210f6d5d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_BACKLIGHT_REGS_H__
+#define __INTEL_BACKLIGHT_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
+#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
+#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
+					 _VLV_BLC_PWM_CTL2_B)
+
+#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
+#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
+#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
+					_VLV_BLC_PWM_CTL_B)
+
+#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
+#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
+#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
+					 _VLV_BLC_HIST_CTL_B)
+
+/* Backlight control */
+#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
+#define   BLM_PWM_ENABLE		(1 << 31)
+#define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
+#define   BLM_PIPE_SELECT		(1 << 29)
+#define   BLM_PIPE_SELECT_IVB		(3 << 29)
+#define   BLM_PIPE_A			(0 << 29)
+#define   BLM_PIPE_B			(1 << 29)
+#define   BLM_PIPE_C			(2 << 29) /* ivb + */
+#define   BLM_TRANSCODER_A		BLM_PIPE_A /* hsw */
+#define   BLM_TRANSCODER_B		BLM_PIPE_B
+#define   BLM_TRANSCODER_C		BLM_PIPE_C
+#define   BLM_TRANSCODER_EDP		(3 << 29)
+#define   BLM_PIPE(pipe)		((pipe) << 29)
+#define   BLM_POLARITY_I965		(1 << 28) /* gen4 only */
+#define   BLM_PHASE_IN_INTERUPT_STATUS	(1 << 26)
+#define   BLM_PHASE_IN_ENABLE		(1 << 25)
+#define   BLM_PHASE_IN_INTERUPT_ENABL	(1 << 24)
+#define   BLM_PHASE_IN_TIME_BASE_SHIFT	(16)
+#define   BLM_PHASE_IN_TIME_BASE_MASK	(0xff << 16)
+#define   BLM_PHASE_IN_COUNT_SHIFT	(8)
+#define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
+#define   BLM_PHASE_IN_INCR_SHIFT	(0)
+#define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
+#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
+/*
+ * This is the most significant 15 bits of the number of backlight cycles in a
+ * complete cycle of the modulated backlight control.
+ *
+ * The actual value is this field multiplied by two.
+ */
+#define   BACKLIGHT_MODULATION_FREQ_SHIFT	(17)
+#define   BACKLIGHT_MODULATION_FREQ_MASK	(0x7fff << 17)
+#define   BLM_LEGACY_MODE			(1 << 16) /* gen2 only */
+/*
+ * This is the number of cycles out of the backlight modulation cycle for which
+ * the backlight is on.
+ *
+ * This field must be no greater than the number of cycles in the complete
+ * backlight modulation cycle.
+ */
+#define   BACKLIGHT_DUTY_CYCLE_SHIFT		(0)
+#define   BACKLIGHT_DUTY_CYCLE_MASK		(0xffff)
+#define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
+#define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
+
+#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
+#define  BLM_HISTOGRAM_ENABLE			(1 << 31)
+
+/* New registers for PCH-split platforms. Safe where new bits show up, the
+ * register layout machtes with gen4 BLC_PWM_CTL[12]. */
+#define BLC_PWM_CPU_CTL2	_MMIO(0x48250)
+#define BLC_PWM_CPU_CTL		_MMIO(0x48254)
+
+#define HSW_BLC_PWM2_CTL	_MMIO(0x48350)
+
+/* PCH CTL1 is totally different, all but the below bits are reserved. CTL2 is
+ * like the normal CTL from gen4 and earlier. Hooray for confusing naming. */
+#define BLC_PWM_PCH_CTL1	_MMIO(0xc8250)
+#define   BLM_PCH_PWM_ENABLE			(1 << 31)
+#define   BLM_PCH_OVERRIDE_ENABLE		(1 << 30)
+#define   BLM_PCH_POLARITY			(1 << 29)
+#define BLC_PWM_PCH_CTL2	_MMIO(0xc8254)
+
+/* BXT backlight register definition. */
+#define _BXT_BLC_PWM_CTL1			0xC8250
+#define   BXT_BLC_PWM_ENABLE			(1 << 31)
+#define   BXT_BLC_PWM_POLARITY			(1 << 29)
+#define _BXT_BLC_PWM_FREQ1			0xC8254
+#define _BXT_BLC_PWM_DUTY1			0xC8258
+
+#define _BXT_BLC_PWM_CTL2			0xC8350
+#define _BXT_BLC_PWM_FREQ2			0xC8354
+#define _BXT_BLC_PWM_DUTY2			0xC8358
+
+#define BXT_BLC_PWM_CTL(controller)    _MMIO_PIPE(controller,		\
+					_BXT_BLC_PWM_CTL1, _BXT_BLC_PWM_CTL2)
+#define BXT_BLC_PWM_FREQ(controller)   _MMIO_PIPE(controller, \
+					_BXT_BLC_PWM_FREQ1, _BXT_BLC_PWM_FREQ2)
+#define BXT_BLC_PWM_DUTY(controller)   _MMIO_PIPE(controller, \
+					_BXT_BLC_PWM_DUTY1, _BXT_BLC_PWM_DUTY2)
+
+/* Utility pin */
+#define UTIL_PIN_CTL			_MMIO(0x48400)
+#define   UTIL_PIN_ENABLE		(1 << 31)
+#define   UTIL_PIN_PIPE_MASK		(3 << 29)
+#define   UTIL_PIN_PIPE(x)		((x) << 29)
+#define   UTIL_PIN_MODE_MASK		(0xf << 24)
+#define   UTIL_PIN_MODE_DATA		(0 << 24)
+#define   UTIL_PIN_MODE_PWM		(1 << 24)
+#define   UTIL_PIN_MODE_VBLANK		(4 << 24)
+#define   UTIL_PIN_MODE_VSYNC		(5 << 24)
+#define   UTIL_PIN_MODE_EYE_LEVEL	(8 << 24)
+#define   UTIL_PIN_OUTPUT_DATA		(1 << 23)
+#define   UTIL_PIN_POLARITY		(1 << 22)
+#define   UTIL_PIN_DIRECTION_INPUT	(1 << 19)
+#define   UTIL_PIN_INPUT_DATA		(1 << 16)
+
+#endif /* __INTEL_BACKLIGHT_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3f84af6beff3..1d8f2935ed98 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
 #include "intel_combo_phy.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 91cfd5890f46..7044016d4d98 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_crt.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ad2c441aceca..50d7bfd541ad 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2925,118 +2925,6 @@
 
 #define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
 
-#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
-#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
-#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
-					 _VLV_BLC_PWM_CTL2_B)
-
-#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
-#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
-#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
-					_VLV_BLC_PWM_CTL_B)
-
-#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
-#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
-#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
-					 _VLV_BLC_HIST_CTL_B)
-
-/* Backlight control */
-#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
-#define   BLM_PWM_ENABLE		(1 << 31)
-#define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
-#define   BLM_PIPE_SELECT		(1 << 29)
-#define   BLM_PIPE_SELECT_IVB		(3 << 29)
-#define   BLM_PIPE_A			(0 << 29)
-#define   BLM_PIPE_B			(1 << 29)
-#define   BLM_PIPE_C			(2 << 29) /* ivb + */
-#define   BLM_TRANSCODER_A		BLM_PIPE_A /* hsw */
-#define   BLM_TRANSCODER_B		BLM_PIPE_B
-#define   BLM_TRANSCODER_C		BLM_PIPE_C
-#define   BLM_TRANSCODER_EDP		(3 << 29)
-#define   BLM_PIPE(pipe)		((pipe) << 29)
-#define   BLM_POLARITY_I965		(1 << 28) /* gen4 only */
-#define   BLM_PHASE_IN_INTERUPT_STATUS	(1 << 26)
-#define   BLM_PHASE_IN_ENABLE		(1 << 25)
-#define   BLM_PHASE_IN_INTERUPT_ENABL	(1 << 24)
-#define   BLM_PHASE_IN_TIME_BASE_SHIFT	(16)
-#define   BLM_PHASE_IN_TIME_BASE_MASK	(0xff << 16)
-#define   BLM_PHASE_IN_COUNT_SHIFT	(8)
-#define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
-#define   BLM_PHASE_IN_INCR_SHIFT	(0)
-#define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
-#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
-/*
- * This is the most significant 15 bits of the number of backlight cycles in a
- * complete cycle of the modulated backlight control.
- *
- * The actual value is this field multiplied by two.
- */
-#define   BACKLIGHT_MODULATION_FREQ_SHIFT	(17)
-#define   BACKLIGHT_MODULATION_FREQ_MASK	(0x7fff << 17)
-#define   BLM_LEGACY_MODE			(1 << 16) /* gen2 only */
-/*
- * This is the number of cycles out of the backlight modulation cycle for which
- * the backlight is on.
- *
- * This field must be no greater than the number of cycles in the complete
- * backlight modulation cycle.
- */
-#define   BACKLIGHT_DUTY_CYCLE_SHIFT		(0)
-#define   BACKLIGHT_DUTY_CYCLE_MASK		(0xffff)
-#define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
-#define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
-
-#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
-#define  BLM_HISTOGRAM_ENABLE			(1 << 31)
-
-/* New registers for PCH-split platforms. Safe where new bits show up, the
- * register layout machtes with gen4 BLC_PWM_CTL[12]. */
-#define BLC_PWM_CPU_CTL2	_MMIO(0x48250)
-#define BLC_PWM_CPU_CTL		_MMIO(0x48254)
-
-#define HSW_BLC_PWM2_CTL	_MMIO(0x48350)
-
-/* PCH CTL1 is totally different, all but the below bits are reserved. CTL2 is
- * like the normal CTL from gen4 and earlier. Hooray for confusing naming. */
-#define BLC_PWM_PCH_CTL1	_MMIO(0xc8250)
-#define   BLM_PCH_PWM_ENABLE			(1 << 31)
-#define   BLM_PCH_OVERRIDE_ENABLE		(1 << 30)
-#define   BLM_PCH_POLARITY			(1 << 29)
-#define BLC_PWM_PCH_CTL2	_MMIO(0xc8254)
-
-#define UTIL_PIN_CTL			_MMIO(0x48400)
-#define   UTIL_PIN_ENABLE		(1 << 31)
-#define   UTIL_PIN_PIPE_MASK		(3 << 29)
-#define   UTIL_PIN_PIPE(x)		((x) << 29)
-#define   UTIL_PIN_MODE_MASK		(0xf << 24)
-#define   UTIL_PIN_MODE_DATA		(0 << 24)
-#define   UTIL_PIN_MODE_PWM		(1 << 24)
-#define   UTIL_PIN_MODE_VBLANK		(4 << 24)
-#define   UTIL_PIN_MODE_VSYNC		(5 << 24)
-#define   UTIL_PIN_MODE_EYE_LEVEL	(8 << 24)
-#define   UTIL_PIN_OUTPUT_DATA		(1 << 23)
-#define   UTIL_PIN_POLARITY		(1 << 22)
-#define   UTIL_PIN_DIRECTION_INPUT	(1 << 19)
-#define   UTIL_PIN_INPUT_DATA		(1 << 16)
-
-/* BXT backlight register definition. */
-#define _BXT_BLC_PWM_CTL1			0xC8250
-#define   BXT_BLC_PWM_ENABLE			(1 << 31)
-#define   BXT_BLC_PWM_POLARITY			(1 << 29)
-#define _BXT_BLC_PWM_FREQ1			0xC8254
-#define _BXT_BLC_PWM_DUTY1			0xC8258
-
-#define _BXT_BLC_PWM_CTL2			0xC8350
-#define _BXT_BLC_PWM_FREQ2			0xC8354
-#define _BXT_BLC_PWM_DUTY2			0xC8358
-
-#define BXT_BLC_PWM_CTL(controller)    _MMIO_PIPE(controller,		\
-					_BXT_BLC_PWM_CTL1, _BXT_BLC_PWM_CTL2)
-#define BXT_BLC_PWM_FREQ(controller)   _MMIO_PIPE(controller, \
-					_BXT_BLC_PWM_FREQ1, _BXT_BLC_PWM_FREQ2)
-#define BXT_BLC_PWM_DUTY(controller)   _MMIO_PIPE(controller, \
-					_BXT_BLC_PWM_DUTY1, _BXT_BLC_PWM_DUTY2)
-
 #define PCH_GTC_CTL		_MMIO(0xe7000)
 #define   PCH_GTC_ENABLE	(1 << 31)
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 157e166672d7..e015bc91a26f 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -4,6 +4,7 @@
  */
 
 #include "display/intel_audio_regs.h"
+#include "display/intel_backlight_regs.h"
 #include "display/intel_dmc_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
-- 
2.34.1

