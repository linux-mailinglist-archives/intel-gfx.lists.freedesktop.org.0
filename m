Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC450C56B7A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 10:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA2E310E1A5;
	Thu, 13 Nov 2025 09:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVJtfTt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB1B10E351;
 Thu, 13 Nov 2025 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763027901; x=1794563901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CJrrVn+dOy4deTOif+wpY2NI0cLy3p8JFRDX4BhIKHs=;
 b=HVJtfTt3YODDv1Urc+BQQJv5WXD+Q9k6yrCgvt36+U0rQxZ1rm2mf9jp
 b2RnQiP9wFvY2+MqdRt2twBXhcsgkYLTv00BJaAjHge+37EkUDNTRlAlG
 CCYnLkDwlpU+aOcoNpXlHha8Mw1XjLoi07ykGvu0uMWkoJHLM2sd0sN2V
 I6QrMDxG1ao6JCt9Zd5x6zNkekpwWTZoohQCnwe3hmMvdwRqyl/G+iBaJ
 W1Qwu19qxrkQcliOnwku5AsEDkFvF0nBq1js/2esnqNB+WKU37qSWApTl
 XIY2TtveLvsUvj5mi6FUaxhW2J/gjbtdACTZ6P5ETeroQLUEFTrDPQjzs A==;
X-CSE-ConnectionGUID: tdPPmUTTQIaictK5sTLNTA==
X-CSE-MsgGUID: QG1REAuzQcOSPXhZmOxG6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75418416"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="75418416"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:21 -0800
X-CSE-ConnectionGUID: gP0OpP2dQqiZ3j5Falf4fQ==
X-CSE-MsgGUID: fmNJ2UU+QueIj1W+TTdDdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189732366"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: [PATCH 2/8] drm/i915: split out i915_freq.[ch]
Date: Thu, 13 Nov 2025 11:57:59 +0200
Message-ID: <c43293b96f9e32d8b5b03ab40ec30e5f53887ee1.1763027774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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
index b620ae316e92..6d72bbb724fa 100644
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
index b01c837ab646..e1c1e6f3cd7b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -9,9 +9,9 @@
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
-#include "soc/intel_dram.h"
 
 #include "i915_drv.h"
+#include "i915_freq.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_wait_util.h"
@@ -284,8 +284,8 @@ static void gen5_rps_init(struct intel_rps *rps)
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

