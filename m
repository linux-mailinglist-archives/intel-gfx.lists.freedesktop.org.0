Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05272BC6498
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877C910E8B7;
	Wed,  8 Oct 2025 18:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6zTWMps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7BA10E8B4;
 Wed,  8 Oct 2025 18:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759948000; x=1791484000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IbyiK25svE06347F9PhkbPp9UDGm3IxkGu4UAjnRJBM=;
 b=j6zTWMpsO1wxAlbHahYjFfdtdW4PqmkTOQ9+eDoUW8Gd2gSIXlq19cCa
 ci20pAzBNbT9VlAtxe+SZLuhzmBjDKatfIV0W1xuw70A3Fuo30YBNAheS
 4PFdMT4utOf9ustURwkjbQvs0M965TTJv9IgE3NdRLldh2OPnuyhnc/NF
 NcQSI0+kwFmtj5A/StI2vB/AYaZaqQNz4IkVgkgHf9GEK7+mobxWwXg6m
 Wb0/ulNC1taLUSOFgmuVK/rjwzywthLlnyNWIXlp4aixABpcABK3CqCct
 eSaHAeCVUNEMYRJC+bI3kKGVTAIqhkGl6xEJYSW8U+yVcG0oT9Gx5ibQu A==;
X-CSE-ConnectionGUID: mON7Uc25S66IGhdiKGGXoQ==
X-CSE-MsgGUID: kao550uPSe68AmSwwdVGHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="84769994"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="84769994"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:40 -0700
X-CSE-ConnectionGUID: ZvbUfDqISx6dHaOq6UVShQ==
X-CSE-MsgGUID: YzR53V7cQwWsOkwxQWQhxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="180436915"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:38 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 10/11] drm/i915/prefill: Print the prefill details
Date: Wed,  8 Oct 2025 21:25:57 +0300
Message-ID: <20251008182559.20615-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
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

Print the prefill details to aid in debugging.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_prefill.c | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_prefill.c b/drivers/gpu/drm/i915/display/intel_prefill.c
index 8b9c14e5c505..16ee72d1fc8a 100644
--- a/drivers/gpu/drm/i915/display/intel_prefill.c
+++ b/drivers/gpu/drm/i915/display/intel_prefill.c
@@ -15,6 +15,26 @@
 #include "skl_scaler.h"
 #include "skl_watermark.h"
 
+#define FP_FMT "%u.%06u"
+#define FP_ARG(val) (val) >> 16, (((val) & 0xffff) * 15625) >> 10
+
+static void intel_prefill_dump(struct intel_prefill_ctx *ctx,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	drm_dbg_kms(display->drm, "prefill      prefill.fixed: " FP_FMT "\n", FP_ARG(ctx->prefill.fixed));
+	drm_dbg_kms(display->drm, "prefill        prefill.wm0: " FP_FMT "\n", FP_ARG(ctx->prefill.wm0));
+	drm_dbg_kms(display->drm, "prefill prefill.scaler_1st: " FP_FMT "\n", FP_ARG(ctx->prefill.scaler_1st));
+	drm_dbg_kms(display->drm, "prefill prefill.scaler_2nd: " FP_FMT "\n", FP_ARG(ctx->prefill.scaler_2nd));
+	drm_dbg_kms(display->drm, "prefill        prefill.dsc: " FP_FMT "\n", FP_ARG(ctx->prefill.dsc));
+	drm_dbg_kms(display->drm, "prefill       prefill.full: " FP_FMT "\n", FP_ARG(ctx->prefill.full));
+
+	drm_dbg_kms(display->drm, "prefill          adj.cdclk: " FP_FMT "\n", FP_ARG(ctx->adj.cdclk));
+	drm_dbg_kms(display->drm, "prefill     adj.scaler_1st: " FP_FMT "\n", FP_ARG(ctx->adj.scaler_1st));
+	drm_dbg_kms(display->drm, "prefill     adj.scaler_2nd: " FP_FMT "\n", FP_ARG(ctx->adj.scaler_2nd));
+}
+
 static unsigned int prefill_usecs_to_lines(const struct intel_crtc_state *crtc_state, unsigned int usecs)
 {
 	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
@@ -101,6 +121,8 @@ void intel_prefill_init_worst(struct intel_prefill_ctx *ctx,
 	ctx->adj.cdclk = intel_cdclk_prefill_adjustment_worst(crtc_state);
 
 	ctx->prefill.full = prefill_lines_full(ctx);
+
+	intel_prefill_dump(ctx, crtc_state);
 }
 
 void intel_prefill_init(struct intel_prefill_ctx *ctx,
@@ -112,6 +134,8 @@ void intel_prefill_init(struct intel_prefill_ctx *ctx,
 	ctx->adj.cdclk = intel_cdclk_prefill_adjustment(crtc_state, cdclk_state);
 
 	ctx->prefill.full = prefill_lines_full(ctx);
+
+	intel_prefill_dump(ctx, crtc_state);
 }
 
 static unsigned int prefill_lines_with_latency(const struct intel_prefill_ctx *ctx,
@@ -149,9 +173,18 @@ bool intel_prefill_vblank_too_short(const struct intel_prefill_ctx *ctx,
 				    const struct intel_crtc_state *crtc_state,
 				    unsigned int latency_us)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	unsigned int guardband = intel_prefill_guardband(crtc_state);
 	unsigned int prefill = prefill_lines_with_latency(ctx, crtc_state, latency_us);
 
+	drm_dbg_kms(display->drm, "  prefill (%d): " FP_FMT "\n", latency_us, FP_ARG(prefill));
+	drm_dbg_kms(display->drm, "guardband (%d): " FP_FMT "\n", latency_us, FP_ARG(guardband));
+
+	drm_dbg_kms(display->drm, "min guardband (%d): %d lines\n", latency_us,
+		    intel_prefill_min_guardband(ctx, crtc_state, latency_us));
+	drm_dbg_kms(display->drm, "min cdclk     (%d): %d khz\n", latency_us,
+		    intel_prefill_min_cdclk(ctx, crtc_state));
+
 	return guardband < prefill;
 }
 
-- 
2.49.1

