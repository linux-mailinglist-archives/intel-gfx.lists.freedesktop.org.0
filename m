Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FB3B1B0E1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6C110E628;
	Tue,  5 Aug 2025 09:19:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1EUze2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A1310E621;
 Tue,  5 Aug 2025 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385574; x=1785921574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XKx9YwOSc+bYBtuxdFZhbqhJjpw22XQnqmFxvF1QlXM=;
 b=m1EUze2j5eaI+HjDS9EDRM0p/xrDIiCihnn6GKHbomcsGNEwJszWq0J1
 L4ntJlBQY8itF071aKPK8pb7N94XMTNsTPmGr3X9ZOoTcv+j+RXoYh0if
 oTGbpFRn+lZmHCttSoiH6rijQFDMFw2nsuBg4KGIzej4/3a0jt6Qp9gzQ
 YV3yGHJkmmNWFIt374dncWauppQ+REsABvzIPBDe3hYzL3ZcWKGxLQvKd
 9qTe8ADLmhzs54mef3vkxEfT1uAPWFbOspRN9KXiYrlKPUeA9JOOVXJRF
 X4ltuLATpId1jKzezYSUcq6OvZUFT4iXH9HY/qJcx+K6JOQ0TAhzOh0lr A==;
X-CSE-ConnectionGUID: Z4udpvlYT7K8vNH0wEXm4A==
X-CSE-MsgGUID: /uDHbwqHSiyzYXALGn5BZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56566660"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56566660"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:34 -0700
X-CSE-ConnectionGUID: OHeDt9KkRIC+nE1QJhihPQ==
X-CSE-MsgGUID: G5/SS8fIRRu31DZu3KEOFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164738424"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/12] drm/i915: split out vlv_clock.[ch]
Date: Tue,  5 Aug 2025 12:18:25 +0300
Message-Id: <a09c7d85f01062045840ef19678904222c1ba81e.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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

Move the VLV clock related functions to their own file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 82 ------------------
 drivers/gpu/drm/i915/display/intel_display.h |  5 --
 drivers/gpu/drm/i915/display/vlv_clock.c     | 89 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_clock.h     | 38 +++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c          |  2 +-
 8 files changed, 131 insertions(+), 89 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 853543443072..b9949e2629d7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -298,6 +298,7 @@ i915-y += \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
 	display/skl_watermark.o \
+	display/vlv_clock.o \
 	display/vlv_sideband.o
 i915-$(CONFIG_ACPI) += \
 	display/intel_acpi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 180d4d7dc1da..18f5f93b613d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -48,6 +48,7 @@
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
+#include "vlv_clock.h"
 #include "vlv_dsi.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6109f3d505c3..cc08efc21cc2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -128,11 +128,9 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
-#include "vlv_dpio_phy_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_sideband.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
@@ -140,86 +138,6 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
-/* returns HPLL frequency in kHz */
-int vlv_clock_get_hpll_vco(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
-
-	if (!display->vlv_clock.hpll_freq) {
-		/* Obtain SKU information */
-		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
-			CCK_FUSE_HPLL_FREQ_MASK;
-
-		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
-
-		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", display->vlv_clock.hpll_freq);
-	}
-
-	return display->vlv_clock.hpll_freq;
-}
-
-static int vlv_get_cck_clock(struct drm_device *drm,
-			     const char *name, u32 reg, int ref_freq)
-{
-	u32 val;
-	int divider;
-
-	val = vlv_cck_read(drm, reg);
-	divider = val & CCK_FREQUENCY_VALUES;
-
-	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
-		 (divider << CCK_FREQUENCY_STATUS_SHIFT),
-		 "%s change in progress\n", name);
-
-	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
-}
-
-static int vlv_get_cck_clock_hpll(struct drm_device *drm,
-				  const char *name, u32 reg)
-{
-	int hpll;
-
-	vlv_cck_get(drm);
-
-	hpll = vlv_get_cck_clock(drm, name, reg, vlv_clock_get_hpll_vco(drm));
-
-	vlv_cck_put(drm);
-
-	return hpll;
-}
-
-int vlv_clock_get_hrawclk(struct drm_device *drm)
-{
-	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock_hpll(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL);
-}
-
-int vlv_clock_get_czclk(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-
-	if (!display->vlv_clock.czclk_freq) {
-		display->vlv_clock.czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
-								       CCK_CZ_CLOCK_CONTROL);
-		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_freq);
-	}
-
-	return display->vlv_clock.czclk_freq;
-}
-
-int vlv_clock_get_cdclk(struct drm_device *drm)
-{
-	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
-				 vlv_clock_get_hpll_vco(drm));
-}
-
-int vlv_clock_get_gpll(struct drm_device *drm)
-{
-	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
-				 vlv_clock_get_czclk(drm));
-}
-
 static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
 {
 	return (crtc_state->active_planes &
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 54961cb656c3..9a9a44b61f7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -435,11 +435,6 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
-int vlv_clock_get_hpll_vco(struct drm_device *drm);
-int vlv_clock_get_hrawclk(struct drm_device *drm);
-int vlv_clock_get_czclk(struct drm_device *drm);
-int vlv_clock_get_cdclk(struct drm_device *drm);
-int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i915/display/vlv_clock.c
new file mode 100644
index 000000000000..3de5cc3e7d71
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_clock.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "vlv_clock.h"
+#include "vlv_sideband.h"
+
+/* returns HPLL frequency in kHz */
+int vlv_clock_get_hpll_vco(struct drm_device *drm)
+{
+	struct intel_display *display = to_intel_display(drm);
+	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
+
+	if (!display->vlv_clock.hpll_freq) {
+		/* Obtain SKU information */
+		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
+			CCK_FUSE_HPLL_FREQ_MASK;
+
+		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
+
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", display->vlv_clock.hpll_freq);
+	}
+
+	return display->vlv_clock.hpll_freq;
+}
+
+static int vlv_get_cck_clock(struct drm_device *drm,
+			     const char *name, u32 reg, int ref_freq)
+{
+	u32 val;
+	int divider;
+
+	val = vlv_cck_read(drm, reg);
+	divider = val & CCK_FREQUENCY_VALUES;
+
+	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
+		 (divider << CCK_FREQUENCY_STATUS_SHIFT),
+		 "%s change in progress\n", name);
+
+	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
+}
+
+static int vlv_get_cck_clock_hpll(struct drm_device *drm,
+				  const char *name, u32 reg)
+{
+	int hpll;
+
+	vlv_cck_get(drm);
+
+	hpll = vlv_get_cck_clock(drm, name, reg, vlv_clock_get_hpll_vco(drm));
+
+	vlv_cck_put(drm);
+
+	return hpll;
+}
+
+int vlv_clock_get_hrawclk(struct drm_device *drm)
+{
+	/* RAWCLK_FREQ_VLV register updated from power well code */
+	return vlv_get_cck_clock_hpll(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL);
+}
+
+int vlv_clock_get_czclk(struct drm_device *drm)
+{
+	struct intel_display *display = to_intel_display(drm);
+
+	if (!display->vlv_clock.czclk_freq) {
+		display->vlv_clock.czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
+								       CCK_CZ_CLOCK_CONTROL);
+		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_freq);
+	}
+
+	return display->vlv_clock.czclk_freq;
+}
+
+int vlv_clock_get_cdclk(struct drm_device *drm)
+{
+	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
+				 vlv_clock_get_hpll_vco(drm));
+}
+
+int vlv_clock_get_gpll(struct drm_device *drm)
+{
+	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
+				 vlv_clock_get_czclk(drm));
+}
diff --git a/drivers/gpu/drm/i915/display/vlv_clock.h b/drivers/gpu/drm/i915/display/vlv_clock.h
new file mode 100644
index 000000000000..5742ed3c628d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_clock.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __VLV_CLOCK_H__
+#define __VLV_CLOCK_H__
+
+struct drm_device;
+
+#ifdef I915
+int vlv_clock_get_hpll_vco(struct drm_device *drm);
+int vlv_clock_get_hrawclk(struct drm_device *drm);
+int vlv_clock_get_czclk(struct drm_device *drm);
+int vlv_clock_get_cdclk(struct drm_device *drm);
+int vlv_clock_get_gpll(struct drm_device *drm);
+#else
+static inline int vlv_clock_get_hpll_vco(struct drm_device *drm)
+{
+	return 0;
+}
+static inline int vlv_clock_get_hrawclk(struct drm_device *drm)
+{
+	return 0;
+}
+static inline int vlv_clock_get_czclk(struct drm_device *drm)
+{
+	return 0;
+}
+static inline int vlv_clock_get_cdclk(struct drm_device *drm)
+{
+	return 0;
+}
+static inline int vlv_clock_get_gpll(struct drm_device *drm)
+{
+	return 0;
+}
+#endif
+
+#endif /* __VLV_CLOCK_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 0fd23b04d3f9..1cd476647f75 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -6,7 +6,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/string_helpers.h>
 
-#include "display/intel_display.h"
+#include "display/vlv_clock.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 664ffe02dc28..71db0a445afb 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -7,8 +7,8 @@
 
 #include <drm/intel/i915_drm.h>
 
-#include "display/intel_display.h"
 #include "display/intel_display_rps.h"
+#include "display/vlv_clock.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
-- 
2.39.5

