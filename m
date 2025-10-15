Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1655BDE07E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1EB10E776;
	Wed, 15 Oct 2025 10:35:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQnfirK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAFA910E774;
 Wed, 15 Oct 2025 10:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524553; x=1792060553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sz2/z+e35jggHk0eySsBKXTDa1aExNpeSHzes0pBJE0=;
 b=UQnfirK+1P1Aiukm+gG7DymGiwOe1VZXnTQvlSK/wpku0KmNNSnX9BeB
 JNjJEy7AoLnh3PGlenn3q9sRr7yjb7Yd9hSUW5eKGikmG/YqfOxlLoV2Y
 b20HVbPboPyrUQu88zxwrpkcszcV6D2xGOYTKFz9xDUlMyrJNZp3MY9C/
 DZZkLbTD9FkscgT9RiopYY0M5jFc6IBEmZjvvHD70JJIOoa4UgUVtz1gC
 RzUO1RtGHD+ZSvkVWfo2i/9PmIqrZBJD+ZksFtqQiK3+BNXMpWDu+B7U2
 jp2tPPkeCO7285Ow8MEhmwtBboByzLpwoVALVFYQGxW7v/o2MG0Z/PPhe A==;
X-CSE-ConnectionGUID: Lcfxbbw9S32jgHHaKyPa8Q==
X-CSE-MsgGUID: 5ynZvvzDRDG/seB9VbYHxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262606"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262606"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:53 -0700
X-CSE-ConnectionGUID: fs32l5sUQpW7MhM/7mzTtA==
X-CSE-MsgGUID: cb5SZ1JOSu2afhgT17We9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842536"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/6] [NOT FOR REVIEW] drm/i915/prefill: Prefill latency
 calculations series squashed
Date: Wed, 15 Oct 2025 15:52:37 +0530
Message-ID: <20251015102241.1797828-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This is a squashed patch based on the series from Ville Syrjälä
to introduce helpers for prefill latency calculations
'drm/i915/prefill: Introduce helpers for prefill latency calculations' [1]

Introduce skl_prefill and various accompanying helpers to do
pipe prefill latency related stuff (vblank/guardband length
checks, and in the future reduced guardband length).

NOTE: This patch is not meant for review. Any review related to this
patch should be done on the original series. In order not to diverge
the discussion from the main series.

[1] http://patchwork.freedesktop.org/series/155629/#rev2

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  80 +++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   6 +
 drivers/gpu/drm/i915/display/intel_display.c |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   1 +
 drivers/gpu/drm/i915/display/skl_prefill.c   | 157 +++++++++++++++
 drivers/gpu/drm/i915/display/skl_prefill.h   |  46 +++++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 198 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 155 ++++++---------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +
 drivers/gpu/drm/xe/Makefile                  |   1 +
 13 files changed, 585 insertions(+), 94 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6d7800e25e55..aa2f0fd95117 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -302,6 +302,7 @@ i915-y += \
 	display/intel_vblank.o \
 	display/intel_vga.o \
 	display/intel_wm.o \
+	display/skl_prefill.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
 	display/skl_watermark.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f2e092f89ddd..bd45b719d4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2806,16 +2806,20 @@ static int intel_cdclk_guardband(struct intel_display *display)
 		return 90;
 }
 
-static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
+static int _intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state, int pixel_rate)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
 	int guardband = intel_cdclk_guardband(display);
-	int pixel_rate = crtc_state->pixel_rate;
 
 	return DIV_ROUND_UP(pixel_rate * 100, guardband * ppc);
 }
 
+static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	return _intel_pixel_rate_to_cdclk(crtc_state, crtc_state->pixel_rate);
+}
+
 static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -4056,3 +4060,75 @@ void intel_cdclk_read_hw(struct intel_display *display)
 	cdclk_state->actual = display->cdclk.hw;
 	cdclk_state->logical = display->cdclk.hw;
 }
+
+static int calc_cdclk(const struct intel_crtc_state *crtc_state, int min_cdclk)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 10 || display->platform.broxton) {
+		return bxt_calc_cdclk(display, min_cdclk);
+	} else if (DISPLAY_VER(display) == 9) {
+		int vco;
+
+		vco = display->cdclk.skl_preferred_vco_freq;
+		if (vco == 0)
+			vco = 8100000;
+
+		return skl_calc_cdclk(min_cdclk, vco);
+	} else if (display->platform.broadwell) {
+		return bdw_calc_cdclk(min_cdclk);
+	} else if (display->platform.cherryview || display->platform.valleyview) {
+		return vlv_calc_cdclk(display, min_cdclk);
+	} else {
+		return display->cdclk.max_cdclk_freq;
+	}
+}
+
+static unsigned int _intel_cdclk_prefill_adj(const struct intel_crtc_state *crtc_state,
+					     int clock, int min_cdclk)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
+	int cdclk = calc_cdclk(crtc_state, min_cdclk);
+
+	return min(0x10000, DIV_ROUND_UP_ULL((u64)clock << 16, ppc * cdclk));
+}
+
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	/* FIXME use the actual min_cdclk for the pipe here */
+	return intel_cdclk_prefill_adjustment_worst(crtc_state);
+}
+
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
+{
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * FIXME could perhaps consider a few more of the factors
+	 * that go the per-crtc min_cdclk. Namely anything that
+	 * only changes during full modesets.
+	 *
+	 * FIXME this assumes 1:1 scaling, but the other _worst() stuff
+	 * assumes max downscaling, so the final result will be
+	 * unrealistically bad. Figure out where the actual maximum value
+	 * lies and use that to compute a more realistic worst case
+	 * estimate...
+	 */
+	min_cdclk = _intel_pixel_rate_to_cdclk(crtc_state, clock);
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
+}
+
+int intel_cdclk_min_cdclk_for_prefill(const struct intel_crtc_state *crtc_state,
+				      unsigned int prefill_lines_unadjusted,
+				      unsigned int prefill_lines_available)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(pipe_mode->crtc_clock, prefill_lines_unadjusted),
+				ppc * prefill_lines_available);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 72963f6f399a..1c1140b53b17 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -70,4 +70,10 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
 
+unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state);
+unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+int intel_cdclk_min_cdclk_for_prefill(const struct intel_crtc_state *crtc_state,
+				      unsigned int prefill_lines_unadjusted,
+				      unsigned int prefill_lines_available);
+
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 65a7da694ef6..4367ecfab2b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7978,6 +7978,14 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	    mode->vtotal > vtotal_max)
 		return MODE_V_ILLEGAL;
 
+	/*
+	 * WM_LINETIME only goes up to (almost) 64 usec, and also
+	 * knowing that the linetime is always bounded will ease the
+	 * mind during various calculations.
+	 */
+	if (DIV_ROUND_UP(mode->htotal * 1000, mode->clock) > 64)
+		return MODE_H_ILLEGAL;
+
 	return MODE_OK;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af1..bca747e24a7f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1077,3 +1077,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	return min_cdclk;
 }
+
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+
+	return 0x18000; /* 1.5 */
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..2139391ff881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -32,5 +32,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VDSC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_prefill.c b/drivers/gpu/drm/i915/display/skl_prefill.c
new file mode 100644
index 000000000000..4707c2e7127a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/skl_prefill.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include <linux/debugfs.h>
+
+#include <drm/drm_print.h>
+
+#include "intel_cdclk.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_vblank.h"
+#include "intel_vdsc.h"
+#include "skl_prefill.h"
+#include "skl_scaler.h"
+#include "skl_watermark.h"
+
+static unsigned int prefill_usecs_to_lines(const struct intel_crtc_state *crtc_state,
+					   unsigned int usecs)
+{
+	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(pipe_mode->crtc_clock, usecs << 16),
+				pipe_mode->crtc_htotal * 1000);
+}
+
+static void prefill_init(struct skl_prefill_ctx *ctx,
+			 const struct intel_crtc_state *crtc_state)
+{
+	memset(ctx, 0, sizeof(*ctx));
+
+	ctx->prefill.fixed = crtc_state->framestart_delay << 16;
+
+	/* 20 usec for translation walks/etc. */
+	ctx->prefill.fixed += prefill_usecs_to_lines(crtc_state, 20);
+
+	ctx->prefill.dsc = intel_vdsc_prefill_lines(crtc_state);
+}
+
+static void prefill_init_nocdclk_worst(struct skl_prefill_ctx *ctx,
+				       const struct intel_crtc_state *crtc_state)
+{
+	prefill_init(ctx, crtc_state);
+
+	ctx->prefill.wm0 = skl_wm0_prefill_lines_worst(crtc_state);
+	ctx->prefill.scaler_1st = skl_scaler_1st_prefill_lines_worst(crtc_state);
+	ctx->prefill.scaler_2nd = skl_scaler_2nd_prefill_lines_worst(crtc_state);
+
+	ctx->adj.scaler_1st = skl_scaler_1st_prefill_adjustment_worst(crtc_state);
+	ctx->adj.scaler_2nd = skl_scaler_2nd_prefill_adjustment_worst(crtc_state);
+}
+
+static void prefill_init_nocdclk(struct skl_prefill_ctx *ctx,
+				 const struct intel_crtc_state *crtc_state)
+{
+	prefill_init(ctx, crtc_state);
+
+	ctx->prefill.wm0 = skl_wm0_prefill_lines(crtc_state);
+	ctx->prefill.scaler_1st = skl_scaler_1st_prefill_lines(crtc_state);
+	ctx->prefill.scaler_2nd = skl_scaler_2nd_prefill_lines(crtc_state);
+
+	ctx->adj.scaler_1st = skl_scaler_1st_prefill_adjustment(crtc_state);
+	ctx->adj.scaler_2nd = skl_scaler_2nd_prefill_adjustment(crtc_state);
+}
+
+static unsigned int prefill_adjust(unsigned int value, unsigned int factor)
+{
+	return DIV_ROUND_UP_ULL(mul_u32_u32(value, factor), 0x10000);
+}
+
+static unsigned int prefill_lines_nocdclk(const struct skl_prefill_ctx *ctx)
+{
+	unsigned int prefill = 0;
+
+	prefill += ctx->prefill.dsc;
+	prefill = prefill_adjust(prefill, ctx->adj.scaler_2nd);
+
+	prefill += ctx->prefill.scaler_2nd;
+	prefill = prefill_adjust(prefill, ctx->adj.scaler_1st);
+
+	prefill += ctx->prefill.scaler_1st;
+	prefill += ctx->prefill.wm0;
+
+	return prefill;
+}
+
+static unsigned int prefill_lines_cdclk(const struct skl_prefill_ctx *ctx)
+{
+	return prefill_adjust(prefill_lines_nocdclk(ctx), ctx->adj.cdclk);
+}
+
+static unsigned int prefill_lines_full(const struct skl_prefill_ctx *ctx)
+{
+	return ctx->prefill.fixed + prefill_lines_cdclk(ctx);
+}
+
+void skl_prefill_init_worst(struct skl_prefill_ctx *ctx,
+			    const struct intel_crtc_state *crtc_state)
+{
+	prefill_init_nocdclk_worst(ctx, crtc_state);
+
+	ctx->adj.cdclk = intel_cdclk_prefill_adjustment_worst(crtc_state);
+
+	ctx->prefill.full = prefill_lines_full(ctx);
+}
+
+void skl_prefill_init(struct skl_prefill_ctx *ctx,
+		      const struct intel_crtc_state *crtc_state)
+{
+	prefill_init_nocdclk(ctx, crtc_state);
+
+	ctx->adj.cdclk = intel_cdclk_prefill_adjustment(crtc_state);
+
+	ctx->prefill.full = prefill_lines_full(ctx);
+}
+
+static unsigned int prefill_lines_with_latency(const struct skl_prefill_ctx *ctx,
+					       const struct intel_crtc_state *crtc_state,
+					       unsigned int latency_us)
+{
+	return ctx->prefill.full + prefill_usecs_to_lines(crtc_state, latency_us);
+}
+
+int skl_prefill_min_guardband(const struct skl_prefill_ctx *ctx,
+			      const struct intel_crtc_state *crtc_state,
+			      unsigned int latency_us)
+{
+	unsigned int prefill = prefill_lines_with_latency(ctx, crtc_state, latency_us);
+
+	return DIV_ROUND_UP(prefill, 0x10000);
+}
+
+static unsigned int prefill_guardband(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_vblank_length(crtc_state) << 16;
+}
+
+bool skl_prefill_vblank_too_short(const struct skl_prefill_ctx *ctx,
+				  const struct intel_crtc_state *crtc_state,
+				  unsigned int latency_us)
+{
+	unsigned int guardband = prefill_guardband(crtc_state);
+	unsigned int prefill = prefill_lines_with_latency(ctx, crtc_state, latency_us);
+
+	return guardband < prefill;
+}
+
+int skl_prefill_min_cdclk(const struct skl_prefill_ctx *ctx,
+			  const struct intel_crtc_state *crtc_state)
+{
+	unsigned int prefill_unadjusted = prefill_lines_nocdclk(ctx);
+	unsigned int prefill_available = prefill_guardband(crtc_state) - ctx->prefill.fixed;
+
+	return intel_cdclk_min_cdclk_for_prefill(crtc_state, prefill_unadjusted,
+						 prefill_available);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_prefill.h b/drivers/gpu/drm/i915/display/skl_prefill.h
new file mode 100644
index 000000000000..028ee19b64ce
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/skl_prefill.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __SKL_PREFILL_H__
+#define __SKL_PREFILL_H__
+
+#include <linux/types.h>
+
+struct intel_crtc_state;
+
+struct skl_prefill_ctx {
+	/* .16 scanlines */
+	struct {
+		unsigned int fixed;
+		unsigned int wm0;
+		unsigned int scaler_1st;
+		unsigned int scaler_2nd;
+		unsigned int dsc;
+		unsigned int full;
+	} prefill;
+
+	/* .16 adjustment factors */
+	struct {
+		unsigned int cdclk;
+		unsigned int scaler_1st;
+		unsigned int scaler_2nd;
+	} adj;
+};
+
+void skl_prefill_init_worst(struct skl_prefill_ctx *ctx,
+			    const struct intel_crtc_state *crtc_state);
+void skl_prefill_init(struct skl_prefill_ctx *ctx,
+		      const struct intel_crtc_state *crtc_state);
+
+bool skl_prefill_vblank_too_short(const struct skl_prefill_ctx *ctx,
+				  const struct intel_crtc_state *crtc_state,
+				  unsigned int latency_us);
+int skl_prefill_min_guardband(const struct skl_prefill_ctx *ctx,
+			      const struct intel_crtc_state *crtc_state,
+			      unsigned int latency_us);
+int skl_prefill_min_cdclk(const struct skl_prefill_ctx *ctx,
+			  const struct intel_crtc_state *crtc_state);
+
+#endif /* __SKL_PREFILL_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c6cccf170ff1..65f2eb528161 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -968,3 +968,201 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 			  1);
 	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
 }
+
+static unsigned int skl_scaler_scale(const struct intel_crtc_state *crtc_state, int i)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(scaler_state->scalers[i].hscale,
+					    scaler_state->scalers[i].vscale),
+				0x10000);
+}
+
+static unsigned int skl_scaler_downscale(const struct intel_crtc_state *crtc_state, int i)
+{
+	return max(0x10000, skl_scaler_scale(crtc_state, i));
+}
+
+static unsigned int skl_plane_scaler_downscale(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	unsigned int scale = 0x10000;
+	int i;
+
+	for (i = 0; i < crtc->num_scalers; i++) {
+		/* ignore pfit */
+		if (i == scaler_state->scaler_id)
+			continue;
+
+		if (!scaler_state->scalers[i].in_use)
+			continue;
+
+		scale = max(scale, skl_scaler_downscale(crtc_state, i));
+	}
+
+	return scale;
+}
+
+static unsigned int skl_pipe_scaler_downscale(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+
+	if (!crtc_state->pch_pfit.enabled)
+		return 0x10000;
+
+	return skl_scaler_downscale(crtc_state, scaler_state->scaler_id);
+}
+
+unsigned int skl_scaler_1st_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers < 1)
+		return 0x10000;
+
+	if (num_scalers == 1 && crtc_state->pch_pfit.enabled)
+		return skl_pipe_scaler_downscale(crtc_state);
+	else
+		return skl_plane_scaler_downscale(crtc_state);
+}
+
+unsigned int skl_scaler_2nd_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers < 2)
+		return 0x10000;
+
+	return skl_pipe_scaler_downscale(crtc_state);
+}
+
+unsigned int skl_scaler_1st_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers > 0)
+		return 4 << 16;
+
+	return 0;
+}
+
+unsigned int skl_scaler_2nd_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers > 1 && crtc_state->pch_pfit.enabled)
+		return 4 << 16;
+
+	return 0;
+}
+
+static unsigned int _skl_scaler_max_scale(const struct intel_crtc_state *crtc_state,
+					  unsigned int max_scale)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * Downscaling requires increasing cdclk, so max scale
+	 * factor is limited to the max_dotclock/dotclock ratio.
+	 *
+	 * FIXME find out the max downscale factors properly
+	 */
+	return min(max_scale, DIV_ROUND_UP_ULL((u64)display->cdclk.max_dotclk_freq << 16,
+					       crtc_state->hw.pipe_mode.crtc_clock));
+}
+
+unsigned int skl_scaler_max_total_scale(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned int max_scale;
+
+	if (crtc->num_scalers < 1)
+		return 0x10000;
+
+	/* FIXME find out the max downscale factors properly */
+	max_scale = 9 << 16;
+	if (crtc->num_scalers > 1)
+		max_scale *= 9;
+
+	return _skl_scaler_max_scale(crtc_state, max_scale);
+}
+
+unsigned int skl_scaler_max_hscale(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned int max_scale;
+
+	if (crtc->num_scalers < 1)
+		return 0x10000;
+
+	/* FIXME find out the max downscale factors properly */
+	max_scale = 3 << 16;
+
+	return _skl_scaler_max_scale(crtc_state, max_scale);
+}
+
+unsigned int skl_scaler_max_scale(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned int max_scale;
+
+	if (crtc->num_scalers < 1)
+		return 0x10000;
+
+	/* FIXME find out the max downscale factors properly */
+	max_scale = 9 << 16;
+
+	return _skl_scaler_max_scale(crtc_state, max_scale);
+}
+
+unsigned int skl_scaler_1st_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc->num_scalers > 0)
+		return skl_scaler_max_scale(crtc_state);
+	else
+		return 0x10000;
+}
+
+unsigned int skl_scaler_2nd_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc->num_scalers > 1)
+		return skl_scaler_max_scale(crtc_state);
+	else
+		return 0x10000;
+}
+
+unsigned int skl_scaler_1st_prefill_lines_worst(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc->num_scalers > 0)
+		return 4 << 16;
+	else
+		return 0;
+}
+
+unsigned int skl_scaler_2nd_prefill_lines_worst(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc->num_scalers > 1)
+		return 4 << 16;
+	else
+		return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 12a19016c5f6..5deabca909e6 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -45,4 +45,19 @@ skl_scaler_mode_valid(struct intel_display *display,
 void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
 
 void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
+
+unsigned int skl_scaler_max_total_scale(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_max_scale(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_max_hscale(const struct intel_crtc_state *crtc_state);
+
+unsigned int skl_scaler_1st_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_2nd_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_1st_prefill_lines_worst(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_2nd_prefill_lines_worst(const struct intel_crtc_state *crtc_state);
+
+unsigned int skl_scaler_1st_prefill_adjustment(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_2nd_prefill_adjustment(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_1st_prefill_lines(const struct intel_crtc_state *crtc_state);
+unsigned int skl_scaler_2nd_prefill_lines(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 06e5e6c77d2e..256162da9afc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -30,6 +30,8 @@
 #include "intel_plane.h"
 #include "intel_vblank.h"
 #include "intel_wm.h"
+#include "skl_prefill.h"
+#include "skl_scaler.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
@@ -2146,103 +2148,55 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int
-cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
-	const struct intel_cdclk_state *cdclk_state;
-
-	cdclk_state = intel_atomic_get_cdclk_state(state);
-	if (IS_ERR(cdclk_state)) {
-		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
-		return 1;
-	}
-
-	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
-				   2 * intel_cdclk_logical(cdclk_state)));
-}
-
-static int
-dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
-	u32 dsc_prefill_latency = 0;
-
-	if (!crtc_state->dsc.compression_enable ||
-	    !num_scaler_users ||
-	    num_scaler_users > crtc->num_scalers)
-		return dsc_prefill_latency;
-
-	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-
-	for (int i = 0; i < num_scaler_users; i++) {
-		u64 hscale_k, vscale_k;
-
-		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
-		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
-		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
-						       1000000);
-	}
-
-	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->primary);
+	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int ret, pixel_rate, width, level = 0;
+	const struct drm_format_info *info;
+	struct skl_wm_level wm = {};
+	struct skl_wm_params wp;
+	unsigned int latency;
+	u64 modifier;
+	u32 format;
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
-}
+	/* only expected to be used for VRR guardband calculation */
+	drm_WARN_ON(display->drm, !HAS_VRR(display));
 
-static int
-scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
-{
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int scaler_prefill_latency = 0;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
+	/* FIXME rather ugly to pick this by hand but maybe no better way? */
+	format = DRM_FORMAT_XBGR16161616F;
+	if (HAS_4TILE(display))
+		modifier = I915_FORMAT_MOD_4_TILED;
+	else
+		modifier = I915_FORMAT_MOD_Y_TILED;
 
-	if (!num_scaler_users)
-		return scaler_prefill_latency;
+	info = drm_get_format_info(display->drm, format, modifier);
 
-	scaler_prefill_latency = 4 * linetime;
+	pixel_rate = DIV_ROUND_UP_ULL(mul_u32_u32(skl_scaler_max_total_scale(crtc_state),
+						  pipe_mode->crtc_clock),
+				      0x10000);
 
-	if (num_scaler_users > 1) {
-		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
-		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
-		int latency;
+	/* FIXME limit to max plane width? */
+	width = DIV_ROUND_UP_ULL(mul_u32_u32(skl_scaler_max_hscale(crtc_state),
+					     pipe_mode->crtc_hdisplay),
+				 0x10000);
 
-		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-					    chroma_downscaling_factor), 1000000);
-		scaler_prefill_latency += latency;
-	}
+	/* FIXME is 90/270 rotation worse than 0/180? */
+	ret = skl_compute_wm_params(crtc_state, width, info,
+				    modifier, DRM_MODE_ROTATE_0,
+				    pixel_rate, &wp, 0, 1);
+	drm_WARN_ON(display->drm, ret);
 
-	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	latency = skl_wm_latency(display, level, &wp);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
-}
+	skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 
-static bool
-skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
-			int wm0_lines, int latency)
-{
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	/* FIXME is this sane? */
+	if (wm.min_ddb_alloc == U16_MAX)
+		wm.lines = skl_wm_max_lines(display);
 
-	return crtc_state->framestart_delay +
-		intel_usecs_to_scanlines(adjusted_mode, latency) +
-		scaler_prefill_latency(crtc_state) +
-		dsc_prefill_latency(crtc_state) +
-		wm0_lines >
-		intel_crtc_vblank_length(crtc_state);
+	return wm.lines << 16;
 }
 
 static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
@@ -2261,15 +2215,21 @@ static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
 	return wm0_lines;
 }
 
+unsigned int skl_wm0_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	return skl_max_wm0_lines(crtc_state) << 16;
+}
+
 /*
  * TODO: In case we use PKG_C_LATENCY to allow C-states when the delayed vblank
  * size is too small for the package C exit latency we need to notify PSR about
  * the scenario to apply Wa_16025596647.
  */
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
-				       int wm0_lines)
+				       const struct skl_prefill_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int level;
 
 	for (level = display->wm.num_levels - 1; level >= 0; level--) {
@@ -2284,10 +2244,13 @@ static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 		if (level == 0)
 			latency = 0;
 
-		if (!skl_is_vblank_too_short(crtc_state, wm0_lines, latency))
+		if (!skl_prefill_vblank_too_short(ctx, crtc_state, latency))
 			return level;
 	}
 
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] Not enough time in vblank for prefill\n",
+		    crtc->base.base.id, crtc->base.name);
+
 	return -EINVAL;
 }
 
@@ -2295,14 +2258,15 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int wm0_lines, level;
+	struct skl_prefill_ctx ctx;
+	int level;
 
 	if (!crtc_state->hw.active)
 		return 0;
 
-	wm0_lines = skl_max_wm0_lines(crtc_state);
+	skl_prefill_init(&ctx, crtc_state);
 
-	level = skl_max_wm_level_for_vblank(crtc_state, wm0_lines);
+	level = skl_max_wm_level_for_vblank(crtc_state, &ctx);
 	if (level < 0)
 		return level;
 
@@ -2312,6 +2276,13 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < display->wm.num_levels - 1;
 
+	/*
+	 * TODO: assert that we are in fact using the maximum guardband
+	 * if we end up disabling any WM levels here. Otherwise we clearly
+	 * failed in using a realistic worst case prefill estimate when
+	 * determining the guardband size.
+	 */
+
 	for (level++; level < display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
@@ -2330,8 +2301,8 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(display) >= 12 &&
 	    display->sagv.block_time_us &&
-	    skl_is_vblank_too_short(crtc_state, wm0_lines,
-				    display->sagv.block_time_us)) {
+	    skl_prefill_vblank_too_short(&ctx, crtc_state,
+					 display->sagv.block_time_us)) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 62790816f030..6bc2ec9164bf 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -79,5 +79,8 @@ void intel_program_dpkgc_latency(struct intel_atomic_state *state);
 
 bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
 
+unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state *crtc_state);
+unsigned int skl_wm0_prefill_lines(const struct intel_crtc_state *crtc_state);
+
 #endif /* __SKL_WATERMARK_H__ */
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 84321fad3265..6f5964f1a04d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -311,6 +311,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_vga.o \
 	i915-display/intel_vrr.o \
 	i915-display/intel_wm.o \
+	i915-display/skl_prefill.o \
 	i915-display/skl_scaler.o \
 	i915-display/skl_universal_plane.o \
 	i915-display/skl_watermark.o
-- 
2.45.2

