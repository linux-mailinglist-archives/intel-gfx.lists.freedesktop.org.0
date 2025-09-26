Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FCCBA2816
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2532D10E327;
	Fri, 26 Sep 2025 06:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G8UcsgPc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B284910E9DC;
 Fri, 26 Sep 2025 06:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867195; x=1790403195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QH7LM+SN+sBNoJ818iCUl0qr7Tz99g90xmVDaskdgaQ=;
 b=G8UcsgPcLQnkniqfouVEkXtMvAkN6G5th/httAeGyhlP3W+PpwPZBp0h
 PwY47Z5PubPgQfBUxUfuWDBaB2yJejCGeZAsHLL5uKL+d1qwVac5iTB6c
 1W12BvHliQh/NyVK+vgcSDRrXduQRrIaZblPkaOyffbscpOGi0ZL8DZds
 21mKDSN+ZoYCpnJuUwR72Amj9iDViAL6JEIVmplfXZkfZqSLxbDN7TUwp
 CqAZRsXwpVl+c1eguVDgu4vy7SEUuaR1sqjT24wYGBPdM3DxiaWo52Ai8
 aT8YBlh02rkuz71xZPWvVnKeKtqcp/FdlyLUph8BnGa+ITlevcRsWuml2 Q==;
X-CSE-ConnectionGUID: PvCpFCC7QD62HJw0ykMpFg==
X-CSE-MsgGUID: dxW/MaGYRTSSOtVPEOmIpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007599"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007599"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:15 -0700
X-CSE-ConnectionGUID: vrrrKXarQqCtqh0ZgW51GQ==
X-CSE-MsgGUID: zNXAmrrCSSubgFl9XlKHIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092910"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 09/14] drm/i915/skl_watermark: Remove redundant latency checks
 from vblank validation
Date: Fri, 26 Sep 2025 11:29:30 +0530
Message-ID: <20250926055935.3532568-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c | 80 --------------------
 1 file changed, 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9a368bb9e92a..73e5b2d8ae83 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,7 +28,6 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
-#include "intel_vdsc.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_scaler.h"
@@ -2162,91 +2161,12 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
-		intel_dsc_guardband_latency(num_scaler_users, hscale_k, vscale_k,
-					    chroma_downscaling_factor,
-					    cdclk_prefill_adjustment(crtc_state),
-					    linetime);
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
-		skl_scaler_guardband_latency(num_scaler_users, hscale_k, vscale_k,
-					     chroma_downscaling_factor,
-					     cdclk_prefill_adjustment(crtc_state),
-					     linetime);
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
-
-	latency += scaler_prefill_latency(crtc_state, linetime) +
-		   dsc_prefill_latency(crtc_state, linetime);
 
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
-- 
2.45.2

