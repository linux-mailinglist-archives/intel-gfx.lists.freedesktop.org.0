Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A90BDB09C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFE010E6A1;
	Tue, 14 Oct 2025 19:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jEot6QXK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101AB10E69E;
 Tue, 14 Oct 2025 19:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469527; x=1792005527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rd4XxqRtYXknVrlJzXnL0nLtY08f+3QjzI4N6v7sNFI=;
 b=jEot6QXKs5bvRsAJBYjmHd1T8sKyu5FifAij4+pgltNGXw8Vh9UxL2Y1
 bjJzXMjN3fq6rjGsBct6bLe9cD89Y1MWs4TPzQCQWxRAjNcpWNyEFugU1
 Dz+VPpV48Y+SvxjorOH+fmXPv8ZFf8cZcuKqc6TXWmcuhBL6qlV6t40oI
 ac+t45i/wbGmrH2LJ5hdeAQv8+PLt15O7HAReJeiEWQKubWbwCluTmneX
 zAcKexFlhcT53oMVQameuyr2kU8OKKKvkZ88cxSnRS8Y8GHL4Ylgv+BmW
 3U1Lxb6sRN42Q3iNpP37+xfZHszpF3Adva7gIbOw5K5kAtJMXiuLjbTr/ w==;
X-CSE-ConnectionGUID: gdkSME5uRPCVlJx0NNj3Fg==
X-CSE-MsgGUID: lpAx/EbVTA6R4rXKCGL8kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50200859"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="50200859"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:47 -0700
X-CSE-ConnectionGUID: vhshObEkR4uUkmCOwPC+aA==
X-CSE-MsgGUID: ZEu4Sj8fSbS21GQRzAVk2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="205669390"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:45 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 8/9] drm/i915/prefill: Introduce skl_prefill.c
Date: Tue, 14 Oct 2025 22:18:07 +0300
Message-ID: <20251014191808.12326-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add a new helper thingy to deal with the pipe prefill latency.

We get three potentially useful thigns out of this:
- skl_prefill_vblank_too_short() used for checking the
  actual vblank/guardband length
- skl_prefill_min_guardband() to calculate a suitable guardband
  size based on some worst case scaling/etc. estimates
- skl_prefill_min_cdclk() used to calculate a minimum cdclk
  frequency required for very small vblank lengths (in case the
  otherwise computed minimum cdclk doesn't result in fast enough
  prefill).

The internal arithmetic is done terms of scanlines using .16
binary fixed point representation.

v2: Add the missing <<16 for framestart_delay
    Drop the cdclk_state stuff in favor of crtc_state->min_cdclk
    Rename to skl_prefill since this is skl+ only
    Use intel_crtc_vblank_length() instead of hand rolling it
    memset(0) in prefill_init()

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/skl_prefill.c | 157 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_prefill.h |  46 ++++++
 drivers/gpu/drm/xe/Makefile                |   1 +
 4 files changed, 205 insertions(+)
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
2.49.1

