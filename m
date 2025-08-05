Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F07BB1B4F9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CCB10E479;
	Tue,  5 Aug 2025 13:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVpSy4vp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF76410E46F;
 Tue,  5 Aug 2025 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400864; x=1785936864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hPBePq9Ej+Z1cdsH5umkc8dqigGcZcw0c6o4Yu4zs5A=;
 b=gVpSy4vpf8NqLHGlqS1pPjORjYIJeoww5o1PcdyaHE9Fj+xSkKd2lqeQ
 O86T0mKeWFikexNXhNUz8Z7oJvXvO6OGyJ1ItV07jEYcgcT6mtiA8letK
 Drvx6tOlCjmgJ360QzzpqvJfvzZAzgkkElMCGux29Tls4ZfU6lmKf0Hoe
 5D93wQH0RKnCkllhsq6zMBn7lRVfDtyxVNP9/aN9CKU5BKxdkAi0IQ524
 HrcPJAkhiZbwYHe9c2B+Qk8zwCB/JiHoqvDyf0OLg8g/DredjwjQmgGqb
 Zi+lGwd44wccWusVq4VluckjdM/2zLI1jl09KTKLt/CoPv7dwM0i0oTR1 g==;
X-CSE-ConnectionGUID: dPmXEQWgTpSQ3fabpLJCCw==
X-CSE-MsgGUID: 5t0CnoMfR3qnYkDqiwScdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768931"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768931"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:23 -0700
X-CSE-ConnectionGUID: dYjn4D6bR4STU2JloW43Zw==
X-CSE-MsgGUID: X6LnbVcBQ22e/xM7olpJ7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915374"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/13] drm/i915/skl_watermark: Pass linetime as argument to
 latency helpers
Date: Tue,  5 Aug 2025 18:50:06 +0530
Message-ID: <20250805132016.1250202-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

