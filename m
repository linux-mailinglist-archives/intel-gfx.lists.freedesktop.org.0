Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4B3B3F416
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 07:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBA910E584;
	Tue,  2 Sep 2025 05:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMot3vDV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9715210E57F;
 Tue,  2 Sep 2025 05:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756789370; x=1788325370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vFgnIsMKDUb7ZqMCX9M0K0b80cJDSaE4dDHEyqYMQ90=;
 b=BMot3vDV9vHcyEecYDRmQSCkwds/jKEDPJW/nvZtZbE76z5AK2W+Xstn
 CzgW8r116+rvhlhoqZifcsiiWoXxj3e8T3ikqG/MmoL7pQfLvtMCKVuX2
 AxEJ9LLB4ThaovE7W0N2fhLnDLP0yu09UIQS3BmrDuAR/nUZRFZHnzHIS
 X1ULLSt1EVlMSerAO17CZvnsqkv8ftvO5tLfbcNyVv8Y5lAnXTcxtb3hz
 7GWkcErfJT5ZF9tfLwOzW0adpQpnBSz2dZignDlW/9Au0B2orz6uDLd6Z
 ipmUqDFSKSkQ2TYFF2zIojpSnVnAtXXiuHBd1prr+qKrVKiaWHun370b3 w==;
X-CSE-ConnectionGUID: ontLPOs+QVm5E3iFGBlNBw==
X-CSE-MsgGUID: zS7YIN5XSy+Rk/1g1M2qfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70151947"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70151947"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:49 -0700
X-CSE-ConnectionGUID: ILiKRjXOSCat12DZB6u8rw==
X-CSE-MsgGUID: L4z3QzXKSfynMxdfAJ8Z1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175537293"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 02/13] drm/i915/skl_watermark: Pass linetime as argument to
 latency helpers
Date: Tue,  2 Sep 2025 10:18:54 +0530
Message-ID: <20250902044905.3446011-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
References: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
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

