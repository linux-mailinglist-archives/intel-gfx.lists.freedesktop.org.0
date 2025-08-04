Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49752B1A38F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1FB010E52D;
	Mon,  4 Aug 2025 13:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQPcyD/t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0582210E525;
 Mon,  4 Aug 2025 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314740; x=1785850740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+Ih6wASI/1LTj9LsJWhWs2rLk/+vji/rUuYeRh/qlY=;
 b=bQPcyD/t7Ly50ZgXpMGaNU872gbVSiJ7AhheBNXEXXcHk6jdJh2Qdc6P
 gLsYtYtG1zQSpngp3Nu4NJlN3XIN1+9NWAlkIZ529acyoH5IHMJMxLGHq
 NE5pnQ7CtKFRx5SZBtIH1Omdp/iQ04F4s4Wc6gQV5D6zaSOwPwfDwJeYw
 EFERUGJFfxiTHuD8IDd9+sDYmygrUMYL56izQiEFBXfrDuVjvO0C4wmDb
 PEMJ7I5dewWx/6C6kjJB0PIGkCd7/lBsupfBP+HjzbVmppDFFovgccTVa
 QQiiK1VJ8MspUuZUzUEE0057Ztq12IBwGTfOZGp5pB5/O7Vf5kfm8aM0M g==;
X-CSE-ConnectionGUID: JNa4NsukTa6uuefMp1uN/Q==
X-CSE-MsgGUID: jRqwji0mT8mG165eIWJZLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447391"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447391"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:39:00 -0700
X-CSE-ConnectionGUID: ZJZr4WX6TL2NV28+rX1JrQ==
X-CSE-MsgGUID: R+Q9t3/gSVeqIeUaqar9YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430676"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/15] drm/i915/skl_watermark: Remove redundant latency checks
 from vblank validation
Date: Mon,  4 Aug 2025 18:54:36 +0530
Message-ID: <20250804132441.990441-12-ankit.k.nautiyal@intel.com>
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

Drop DSC and scaler prefill latency checks from skl_is_vblank_too_short().
These are now covered by the guardband validation added during the atomic
CRTC check phase.

This cleanup prepares for future changes where the guardband will be
optimized independently of vblank length, making vblank-based checks
obsolete.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 79 --------------------
 1 file changed, 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a8e8e1fbad8f..55dbd05bd7dd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2159,94 +2159,15 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int
-cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
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
-dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
-{
-	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
-	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
-	u32 dsc_prefill_latency = 0;
-
-	if (!crtc_state->dsc.compression_enable ||
-	    !num_scaler_users ||
-	    num_scaler_users > crtc->num_scalers ||
-	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
-		return dsc_prefill_latency;
-
-	for (int i = 0; i < num_scaler_users; i++) {
-		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
-		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
-	}
-
-	dsc_prefill_latency =
-		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
-						  chroma_downscaling_factor,
-						  cdclk_prefill_adjustment(crtc_state),
-						  linetime);
-
-	return dsc_prefill_latency;
-}
-
-static int
-scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
-{
-	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	u64 hscale_k = 1000, vscale_k = 1000;
-	int scaler_prefill_latency = 0;
-
-	if (!num_scaler_users)
-		return scaler_prefill_latency;
-
-	if (num_scaler_users > 1) {
-		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
-		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-	}
-
-	scaler_prefill_latency =
-		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
-						     chroma_downscaling_factor,
-						     cdclk_prefill_adjustment(crtc_state),
-						     linetime);
-
-	return scaler_prefill_latency;
-}
-
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
-				    adjusted_mode->clock);
 
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
-		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
-		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.45.2

