Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C87BC70B49
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD8310E67B;
	Wed, 19 Nov 2025 18:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVX8iHIo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E0910E259;
 Wed, 19 Nov 2025 18:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578395; x=1795114395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cwa9TZOUyOmj13P12TxGdcPseEpBcTEScqhUU7sv8xc=;
 b=jVX8iHIoroU0+M/5T7Svd2soUTltsHjh+2ownaUjnBSOVsMOpiwDvt5d
 Ukff9gWmb7EagcfUyP+1cWa8JeJRTOPqrDl6B7s4nxyog7c4unnteVr5Q
 orPNsO4Y9CpGou5tKAuaP8ig3IBSU4n+6MHz41a/WJyB9InFZq09CjcOI
 mooBjMBseIKYZkLHUV4EdjPeXrHr521w/6r4YUQVBc+A/vjlfIS1LQn5r
 VZmT/aDK/wSXwtb2VMBXCrjZSiLnQ60mrxRfS5nCgGgk9FjCwsy8pYzff
 PzS4hOTsNkJLr6FYLf5huyZRGaPO6IYYqzuaWx6GjLkgpAsnSF5AW1j6P A==;
X-CSE-ConnectionGUID: bDLphjKXRfaTOBwOusreiw==
X-CSE-MsgGUID: kAXfEKjFSH+jxaSXUiTMxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65334639"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65334639"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:06 -0800
X-CSE-ConnectionGUID: hx52MYDxROyJsFtrjTb/Yw==
X-CSE-MsgGUID: 1mMfhmbLQHKi5lYiX10/Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190948443"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 02/13] drm/i915: split out i915_freq.[ch]
Date: Wed, 19 Nov 2025 20:52:41 +0200
Message-ID: <7bac1b194afdc20cd45e625a0a32fcbcd0b1136e.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The i915 core only needs three rather specific functions from
soc/intel_dram.[ch]: i9xx_fsb_freq(), ilk_fsb_freq(), and
ilk_mem_freq(). Add new i915_freq.[ch] and duplicate those functions for
i915 to reduce the dependency on soc/ code.

Wile duplication in general is bad, here it's a tradeoff to simplify the
i915, xe and display interactions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
 drivers/gpu/drm/i915/i915_freq.c              | 111 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_freq.h              |  13 ++
 5 files changed, 130 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_freq.c
 create mode 100644 drivers/gpu/drm/i915/i915_freq.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3ca4e0cace76..a696d8b77b4d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -28,6 +28,7 @@ i915-y += \
 	i915_driver.o \
 	i915_drm_client.o \
 	i915_edram.o \
+	i915_freq.o \
 	i915_getparam.o \
 	i915_ioctl.o \
 	i915_irq.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index c90b35881a26..aecd120972ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -4,12 +4,12 @@
  */
 
 #include "i915_drv.h"
+#include "i915_freq.h"
 #include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
-#include "soc/intel_dram.h"
 
 static u32 read_reference_ts_freq(struct intel_uncore *uncore)
 {
@@ -148,7 +148,7 @@ static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
 	 *
 	 * Testing on actual hardware has shown there is no /16.
 	 */
-	return DIV_ROUND_CLOSEST(intel_fsb_freq(uncore->i915), 4) * 1000;
+	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(uncore->i915), 4) * 1000;
 }
 
 static u32 read_clock_frequency(struct intel_uncore *uncore)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index d233dc122bd7..90b7eee78f1f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -10,9 +10,9 @@
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
-#include "soc/intel_dram.h"
 
 #include "i915_drv.h"
+#include "i915_freq.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_wait_util.h"
@@ -285,8 +285,8 @@ static void gen5_rps_init(struct intel_rps *rps)
 	u32 rgvmodectl;
 	int c_m, i;
 
-	fsb_freq = intel_fsb_freq(i915);
-	mem_freq = intel_mem_freq(i915);
+	fsb_freq = ilk_fsb_freq(i915);
+	mem_freq = ilk_mem_freq(i915);
 
 	if (fsb_freq <= 3200000)
 		c_m = 0;
diff --git a/drivers/gpu/drm/i915/i915_freq.c b/drivers/gpu/drm/i915/i915_freq.c
new file mode 100644
index 000000000000..9bdaea34aef9
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_freq.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
+#include "i915_freq.h"
+#include "intel_mchbar_regs.h"
+
+unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
+{
+	u32 fsb;
+
+	/*
+	 * Note that this only reads the state of the FSB
+	 * straps, not the actual FSB frequency. Some BIOSen
+	 * let you configure each independently. Ideally we'd
+	 * read out the actual FSB frequency but sadly we
+	 * don't know which registers have that information,
+	 * and all the relevant docs have gone to bit heaven :(
+	 */
+	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
+
+	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
+		switch (fsb) {
+		case CLKCFG_FSB_400:
+			return 400000;
+		case CLKCFG_FSB_533:
+			return 533333;
+		case CLKCFG_FSB_667:
+			return 666667;
+		case CLKCFG_FSB_800:
+			return 800000;
+		case CLKCFG_FSB_1067:
+			return 1066667;
+		case CLKCFG_FSB_1333:
+			return 1333333;
+		default:
+			MISSING_CASE(fsb);
+			return 1333333;
+		}
+	} else {
+		switch (fsb) {
+		case CLKCFG_FSB_400_ALT:
+			return 400000;
+		case CLKCFG_FSB_533:
+			return 533333;
+		case CLKCFG_FSB_667:
+			return 666667;
+		case CLKCFG_FSB_800:
+			return 800000;
+		case CLKCFG_FSB_1067_ALT:
+			return 1066667;
+		case CLKCFG_FSB_1333_ALT:
+			return 1333333;
+		case CLKCFG_FSB_1600_ALT:
+			return 1600000;
+		default:
+			MISSING_CASE(fsb);
+			return 1333333;
+		}
+	}
+}
+
+unsigned int ilk_fsb_freq(struct drm_i915_private *i915)
+{
+	u16 fsb;
+
+	fsb = intel_uncore_read16(&i915->uncore, CSIPLL0) & 0x3ff;
+
+	switch (fsb) {
+	case 0x00c:
+		return 3200000;
+	case 0x00e:
+		return 3733333;
+	case 0x010:
+		return 4266667;
+	case 0x012:
+		return 4800000;
+	case 0x014:
+		return 5333333;
+	case 0x016:
+		return 5866667;
+	case 0x018:
+		return 6400000;
+	default:
+		drm_dbg(&i915->drm, "unknown fsb frequency 0x%04x\n", fsb);
+		return 0;
+	}
+}
+
+unsigned int ilk_mem_freq(struct drm_i915_private *i915)
+{
+	u16 ddrpll;
+
+	ddrpll = intel_uncore_read16(&i915->uncore, DDRMPLL1);
+	switch (ddrpll & 0xff) {
+	case 0xc:
+		return 800000;
+	case 0x10:
+		return 1066667;
+	case 0x14:
+		return 1333333;
+	case 0x18:
+		return 1600000;
+	default:
+		drm_dbg(&i915->drm, "unknown memory frequency 0x%02x\n",
+			ddrpll & 0xff);
+		return 0;
+	}
+}
diff --git a/drivers/gpu/drm/i915/i915_freq.h b/drivers/gpu/drm/i915/i915_freq.h
new file mode 100644
index 000000000000..53b0ecb95440
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_freq.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_FREQ_H__
+#define __I915_FREQ_H__
+
+struct drm_i915_private;
+
+unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
+unsigned int ilk_fsb_freq(struct drm_i915_private *i915);
+unsigned int ilk_mem_freq(struct drm_i915_private *i915);
+
+#endif /* __I915_FREQ_H__ */
-- 
2.47.3

