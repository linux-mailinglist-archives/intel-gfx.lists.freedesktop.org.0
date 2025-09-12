Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64636B55246
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CD410EC94;
	Fri, 12 Sep 2025 14:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KkHSOeoq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A15910EC82;
 Fri, 12 Sep 2025 14:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688625; x=1789224625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GTLJRaaDH0wimaiiIC52/+VYXmZmjeuguI4r/Xb8YjU=;
 b=KkHSOeoqD/H7AWQyJazoTE9kBaS0e28+VkPqSfWioiUvAEDYk5YchudS
 GuyrKEpjbpiBpQ3Q6sBryiZk/dWl3g2Zsd5lFtut12cJwd3/SfXP6Ion+
 GgXJ2NEO/TCFy6t8yMi2i+MGSypohDdjWlmFkrQ25wSJQfCACJadHl/I4
 wMH3wmqM39fY+e9J+YyFWHkZsTZpeKK02WsfAnNiEjL8o2/qFMqyMOh7w
 3d1s6i3O5cvbmZW3a5jZVoLriEPL8qrcu9q+TAMpFVDhDgZmN49ZvJ6FM
 vpmW0siNbttIgYvchFUR5DZPRFv8mFyHs9CYffYXOEVWwFnFS/Hb62alY g==;
X-CSE-ConnectionGUID: LJTQTeB9Tmqe0osLoG0qCw==
X-CSE-MsgGUID: KmhiaCFSQU6VQpircCtDQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63666385"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63666385"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:25 -0700
X-CSE-ConnectionGUID: TgRToJBpQmmCny9DihqWbw==
X-CSE-MsgGUID: UYTbOqBtQFG2GN3Wp0K7LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173810342"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 15/15] drm/i915: split out vlv_clock.[ch]
Date: Fri, 12 Sep 2025 17:48:54 +0300
Message-ID: <0bc4a930f3e364c4fc37479f56bf07ccee854fcc.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
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

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 74 ------------------
 drivers/gpu/drm/i915/display/intel_display.h |  5 --
 drivers/gpu/drm/i915/display/vlv_clock.c     | 81 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_clock.h     | 38 +++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c          |  2 +-
 8 files changed, 123 insertions(+), 81 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e58c0c158b3a..78a45a6681df 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -300,6 +300,7 @@ i915-y += \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
 	display/skl_watermark.o \
+	display/vlv_clock.o \
 	display/vlv_sideband.o
 i915-$(CONFIG_ACPI) += \
 	display/intel_acpi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e77efa0f33ed..b54b1006aeb0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -49,6 +49,7 @@
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
+#include "vlv_clock.h"
 #include "vlv_dsi.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 02f50d0f370a..a743d1339550 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -129,11 +129,9 @@
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
@@ -141,78 +139,6 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
-/* returns HPLL frequency in kHz */
-int vlv_clock_get_hpll_vco(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
-
-	if (!display->vlv_clock.hpll_freq) {
-		vlv_cck_get(drm);
-		/* Obtain SKU information */
-		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
-			CCK_FUSE_HPLL_FREQ_MASK;
-		vlv_cck_put(drm);
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
-	vlv_cck_get(drm);
-	val = vlv_cck_read(drm, reg);
-	vlv_cck_put(drm);
-
-	divider = val & CCK_FREQUENCY_VALUES;
-
-	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
-		 (divider << CCK_FREQUENCY_STATUS_SHIFT),
-		 "%s change in progress\n", name);
-
-	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
-}
-
-int vlv_clock_get_hrawclk(struct drm_device *drm)
-{
-	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
-				 vlv_clock_get_hpll_vco(drm));
-}
-
-int vlv_clock_get_czclk(struct drm_device *drm)
-{
-	struct intel_display *display = to_intel_display(drm);
-
-	if (!display->vlv_clock.czclk_freq) {
-		display->vlv_clock.czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
-								  vlv_clock_get_hpll_vco(drm));
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
index 000000000000..2c55083d8fdb
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_clock.c
@@ -0,0 +1,81 @@
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
+		vlv_cck_get(drm);
+		/* Obtain SKU information */
+		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
+			CCK_FUSE_HPLL_FREQ_MASK;
+		vlv_cck_put(drm);
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
+	vlv_cck_get(drm);
+	val = vlv_cck_read(drm, reg);
+	vlv_cck_put(drm);
+
+	divider = val & CCK_FREQUENCY_VALUES;
+
+	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
+		 (divider << CCK_FREQUENCY_STATUS_SHIFT),
+		 "%s change in progress\n", name);
+
+	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
+}
+
+int vlv_clock_get_hrawclk(struct drm_device *drm)
+{
+	/* RAWCLK_FREQ_VLV register updated from power well code */
+	return vlv_get_cck_clock(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
+				 vlv_clock_get_hpll_vco(drm));
+}
+
+int vlv_clock_get_czclk(struct drm_device *drm)
+{
+	struct intel_display *display = to_intel_display(drm);
+
+	if (!display->vlv_clock.czclk_freq) {
+		display->vlv_clock.czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
+								  vlv_clock_get_hpll_vco(drm));
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
index ef8b2fd2ae69..932f9f1b06b2 100644
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
index db9cfd2b2b89..b01c837ab646 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -7,8 +7,8 @@
 
 #include <drm/intel/i915_drm.h>
 
-#include "display/intel_display.h"
 #include "display/intel_display_rps.h"
+#include "display/vlv_clock.h"
 #include "soc/intel_dram.h"
 
 #include "i915_drv.h"
-- 
2.47.3

