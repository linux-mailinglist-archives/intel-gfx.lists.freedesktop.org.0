Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56367B47969
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04A010E3B6;
	Sun,  7 Sep 2025 07:46:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EjMmNXGu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EC310E1A2;
 Sun,  7 Sep 2025 07:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231194; x=1788767194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cB4Hdk0rCGruOEQr21kXuGx4Iwui8VQYLruuF5lmTCY=;
 b=EjMmNXGuinv0SJRUDgzzI/nxFtswtMzi/N62Szz8xPEknmcFpY9qYQT7
 ZYzOECMeClFuqOBf4SzatBo7QEbDZ0ZYvH8a4y3g3aqFONAbpZ5EQ0Vj/
 INvMLvbFkI6NM8YUfFonSKxIM4mzW/Qg8dxk6X2EqfnqSgrPWnN0lWK3v
 kpXhwCKZWT6HqWoDrPDhtOmayZFGBlptWONhURp1frOtYqSvnZfs4fF2l
 Rb98jA5Alh2KC22+56KExv48M7pBC1C+IiAt05UJlia84ZE+mVh6vigDu
 8BNedSIaRU26UsnVdRWEwQJBLuw4b0grXo6OZ6jYtJrkHOP7hu/GyBcCJ A==;
X-CSE-ConnectionGUID: IyLABDHSR9yv1biztCa9+w==
X-CSE-MsgGUID: 6KQ0ITyMS+6KRsN+zAHUBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220297"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220297"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:34 -0700
X-CSE-ConnectionGUID: M3J1jT/RRxCZNGBvWx4n6A==
X-CSE-MsgGUID: WK4d4tXERb2IZGNgetcaXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176874019"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 10/14] drm/i915/skl_watermark: Remove redundant latency checks
 from vblank validation
Date: Sun,  7 Sep 2025 13:02:37 +0530
Message-ID: <20250907073241.19632-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c | 79 --------------------
 1 file changed, 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 83ac26004f05..07589096b143 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,7 +28,6 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
-#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_scaler.h"
@@ -2159,93 +2158,15 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
-		intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
-						chroma_downscaling_factor,
-						cdclk_prefill_adjustment(crtc_state),
-						linetime);
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
-		intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
-						   chroma_downscaling_factor,
-						   cdclk_prefill_adjustment(crtc_state),
-						   linetime);
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

