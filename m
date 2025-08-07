Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33466B1D6BC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB8B10E819;
	Thu,  7 Aug 2025 11:32:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="au7NlV/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9767110E819;
 Thu,  7 Aug 2025 11:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566341; x=1786102341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+EY66EfgIEhJ00vnjhF2Ml1zCWvkKmPM598wfEBaP3Q=;
 b=au7NlV/Daf0lU388hyuxCNET1iXTX1c2daHvQ4aEFAK3/nrm39IUScz+
 flmTOswN82tv97L8vlCMzSEliJEItWJKoRjOQLt3XpYBKDjuvliiGM2m/
 SIus+jSv8jOaVp3LmL77ttAASUZHy8zB2/lpoU463n7VlkS6pLvQwzoRb
 ePR4vgYQGw4aYbxywdFt7neuoahBxp3641pjb5xIS+EiYRifcqtjYxypZ
 cV+7meB6gu+z97pQOAb7WOZx7zBpCkD4DTP/rqZpncdC7LDCJhSKtPoSF
 NZ5uqSftv5Dsl27DhZ5y86li8YU8Q4nw94D28Z805uQl3qQMmACe2yfJ7 Q==;
X-CSE-ConnectionGUID: PEvLMzvfSc+T01D/9An5yQ==
X-CSE-MsgGUID: BFM5/RraRE63pt6oC09u2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67166735"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67166735"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:49 -0700
X-CSE-ConnectionGUID: 9iT6T3lhReSP8fcUTbzjLg==
X-CSE-MsgGUID: FBtcQA3oTIiN+vV8/9K+lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="188716492"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/12] drm/i915/skl_watermark: Pass linetime as argument to
 latency helpers
Date: Thu,  7 Aug 2025 16:45:38 +0530
Message-ID: <20250807111548.1490624-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
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
index df586509a742..74ab10a04e83 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2176,13 +2176,11 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
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
@@ -2206,18 +2204,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 
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
@@ -2238,7 +2234,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
+	return scaler_prefill_latency;
 }
 
 static bool
@@ -2247,11 +2243,13 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
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

