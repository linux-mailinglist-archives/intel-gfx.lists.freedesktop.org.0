Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D20F1B29B14
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 09:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C8010E3F2;
	Mon, 18 Aug 2025 07:45:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gG8uLkSr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F8F10E3EF;
 Mon, 18 Aug 2025 07:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755503151; x=1787039151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FCxetYbGFVJb+UCANWKcxinX9sLDku5iWPDLeGrN02A=;
 b=gG8uLkSrtbVc7X9aFVbNzPHIu0ZZoW4c+fa5i9yhVIYFZKJm5hVFsVMq
 cPi7Jy63Qzo15Ji9Z2TjECC1Y3HPQFtGzlRuXzENLeilDlp7jXIg0+vjg
 al8i/p9wDX/rvkpjCyyqWGacQWN6Ma/0Vu1wlJcZoYhOtyCiOv7BlvJt+
 Q8jsMgIpdmswjyXmfgYRat4J163cNP1YF4irU2OlZ9C5mnmf/pG6gMeak
 eo7bfzZluNU49zh9NisrPTeHVu12/hggGWm7Kowwsz3PXve8oZezaJYjO
 0z52Vye/+VdmCiXUhar+Ooiq3Yu1iD19OD6LSn27HYCs42EaCXayPt89Z w==;
X-CSE-ConnectionGUID: OuzmXjzsTHe/RGSbcXZeKQ==
X-CSE-MsgGUID: ++/CLIUmTtaQPr1YIlkPBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="61347937"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="61347937"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:50 -0700
X-CSE-ConnectionGUID: DtsvTc2WT3CPzFyYvLSJmw==
X-CSE-MsgGUID: +Sh3m62mSMebXr/BBPBJkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167121982"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 09/12] drm/i915/skl_watermark: Remove redundant latency checks
 from vblank validation
Date: Mon, 18 Aug 2025 13:01:25 +0530
Message-ID: <20250818073128.2319762-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 78 --------------------
 1 file changed, 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6e9cdf5bc60b..7578e29f0e36 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2158,93 +2158,15 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
-	    num_scaler_users > crtc->num_scalers)
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
-	u64 hscale_k = 0, vscale_k = 0;
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

