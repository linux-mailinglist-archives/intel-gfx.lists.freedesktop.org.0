Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A39B1A386
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC7E10E521;
	Mon,  4 Aug 2025 13:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNA4jnzn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8EE10E51E;
 Mon,  4 Aug 2025 13:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314729; x=1785850729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bmMY6VZlI32/xpRDp7pAUeVfbtxvpo5fa/WxqiWuuRk=;
 b=XNA4jnzngmJjugkYsAwfFGrXxsfYPfd5sXrVecKGhCmkTFUA1M2eyMU0
 fbUBbZyYA7/VoCpi/1QndHLDQYTuIQQE3awILpnvIDL3rP7Lx6m6N7y5M
 IE0eDiJS5VzspTaP1yVzim0FEnyhzrPdykw4kkx7hfaR8h6Z/tonPGv4b
 LaLg61thPwOgIrdjtsEz68sPc+fx+w9NfsPKi95Ohq2lI7oj/duRzACn7
 fR8MejznC3w/LXQbARoRxQbKk7Fsd8/1ctXcA+Ya4pUXZ6G5tR+K9iO0x
 MB9dPXBaotlY9H9O5b7N09hRPWQRRt7Rhq1e4SEcfEOVZc3Z+PM4lvEt5 w==;
X-CSE-ConnectionGUID: nJGfISDoTQSNJZ8Ywx+7Hg==
X-CSE-MsgGUID: 1Ph7oHe5R/KgVEf/gBIymQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447378"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447378"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:49 -0700
X-CSE-ConnectionGUID: 7y/JcrHsQ1+bfKSYLilM1Q==
X-CSE-MsgGUID: A9UsEGAES9unhr4lE6dOeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430648"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/15] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
Date: Mon,  4 Aug 2025 18:54:30 +0530
Message-ID: <20250804132441.990441-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Currently dsc/scaler prefill latencies are handled during watermark
calculations. With the optimized guardband, we need to compute the
latencies to find the minimum guardband that works for most cases.
Extract the helpers to compute these latencies, so that they can be used
while computing vrr guardband.

While at it, put declarations in reverse xmas tree order for better
redability.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
 drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
 3 files changed, 63 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..91abfaad86b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8322,3 +8322,37 @@ bool intel_scanout_needs_vtd_wa(struct intel_display *display)
 
 	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
 }
+
+int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
+					 int chroma_downscaling_factor,
+					 int cdclk_prefill_adjustment,
+					 int linetime)
+{
+	int scaler_prefill_latency;
+
+	scaler_prefill_latency = 4 * linetime;
+	if (num_scaler_users > 1)
+		scaler_prefill_latency += DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
+							    chroma_downscaling_factor), 1000000);
+
+	scaler_prefill_latency *= cdclk_prefill_adjustment;
+
+	return scaler_prefill_latency;
+}
+
+int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				      int chroma_downscaling_factor,
+				      int cdclk_prefill_adjustment,
+				      int linetime)
+{
+	int dsc_prefill_latency;
+
+	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
+
+	for (int i = 0; i < num_scaler_users; i++)
+		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale[i] * vscale[i],
+						       1000000);
+	dsc_prefill_latency *= cdclk_prefill_adjustment;
+
+	return dsc_prefill_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80..8d094b0a8c6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
+					 int chroma_downscaling_factor,
+					 int cdclk_prefill_adjustment,
+					 int linetime);
+int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				      int chroma_downscaling_factor,
+				      int cdclk_prefill_adjustment,
+				      int linetime);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6c7e9e7d7b8e..76278153fc0b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2180,11 +2180,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 static int
 dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
+	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2193,18 +2194,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
 		return dsc_prefill_latency;
 
-	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-
 	for (int i = 0; i < num_scaler_users; i++) {
-		u64 hscale_k, vscale_k;
-
-		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
-		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
-		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
-						       1000000);
+		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
 	}
 
-	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	dsc_prefill_latency =
+		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						  chroma_downscaling_factor,
+						  cdclk_prefill_adjustment(crtc_state),
+						  linetime);
 
 	return dsc_prefill_latency;
 }
@@ -2212,28 +2211,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	u64 hscale_k = 1000, vscale_k = 1000;
 	int scaler_prefill_latency = 0;
 
 	if (!num_scaler_users)
 		return scaler_prefill_latency;
 
-	scaler_prefill_latency = 4 * linetime;
-
 	if (num_scaler_users > 1) {
-		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
-		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
-		int latency;
-
-		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-					    chroma_downscaling_factor), 1000000);
-		scaler_prefill_latency += latency;
+		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
+		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
 	}
 
-	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	scaler_prefill_latency =
+		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						     chroma_downscaling_factor,
+						     cdclk_prefill_adjustment(crtc_state),
+						     linetime);
 
 	return scaler_prefill_latency;
 }
-- 
2.45.2

