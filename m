Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76856B1A384
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0047610E528;
	Mon,  4 Aug 2025 13:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aojNWIQF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22FB10E218;
 Mon,  4 Aug 2025 13:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314725; x=1785850725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hPBePq9Ej+Z1cdsH5umkc8dqigGcZcw0c6o4Yu4zs5A=;
 b=aojNWIQFWDxYfpClABZywHjIwbIkeYGnn2jLZs1EpWYmimC7DLSThcHk
 hVDZQ+geEZfr8BxhALx9yJzOe2vJqEb9tgofie8QRdJRlCUcmwoSgZW9l
 0gOOdliN6n8Qowx27cAmpfP7Htv8+EScYcc6DFOYOMBrw49j5dEBirGSN
 GWO/tPgOL/Ju0Kw6w9jmfLEBM8iqQuxrXazKiHTgwsCD7BnibZ8jzuHox
 b4W2wds5lKyoZXYsgVfkLrcY0scfbWgLkrMMHaptwoO/ng7pgNNtnrIf5
 IrtjgDP6XZDgCvQSxHtiOe7v2lzcKN87fSpMMprTst+NCiiqnyWXoruZS Q==;
X-CSE-ConnectionGUID: YzWiM9d3Qu+pp3tvjKxTHQ==
X-CSE-MsgGUID: OogxxazBQgqvSkILWtecEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447375"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447375"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:45 -0700
X-CSE-ConnectionGUID: 1KW1cdQmQB+xSE21HoCUqw==
X-CSE-MsgGUID: /rWVMbLZQQqjMwcdUFPtPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430640"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/15] drm/i915/skl_watermark: Pass linetime as argument to
 latency helpers
Date: Mon,  4 Aug 2025 18:54:28 +0530
Message-ID: <20250804132441.990441-4-ankit.k.nautiyal@intel.com>
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

Refactor dsc_prefill_latency and scaler_prefill_latency to take
linetime as an explicit parameter instead of computing it internally.

This avoids redundant calculations and simplifies scanline conversion
logic in skl_is_vblank_too_short().

This change also facilitates future extraction of these helpers for use
cases where latencies are computed for an optimized guardband, based on the
highest resolution mode, rather than the current mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9d52727b81b1..97f08d78d22f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2177,13 +2177,11 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 }
 
 static int
-dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int chroma_downscaling_factor =
 		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
@@ -2208,18 +2206,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
+	return dsc_prefill_latency;
 }
 
 static int
-scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
+scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int scaler_prefill_latency = 0;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
 
 	if (!num_scaler_users)
 		return scaler_prefill_latency;
@@ -2240,7 +2236,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
+	return scaler_prefill_latency;
 }
 
 static bool
@@ -2249,11 +2245,13 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
+				    adjusted_mode->clock);
 
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
-		scaler_prefill_latency(crtc_state) +
-		dsc_prefill_latency(crtc_state) +
+		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
+		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.45.2

