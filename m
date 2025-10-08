Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD62BC6495
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EAE10E8B1;
	Wed,  8 Oct 2025 18:26:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hg48X8tv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1514410E8B3;
 Wed,  8 Oct 2025 18:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947996; x=1791483996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eUWjUWbyFaZXRmUJJ0nzmPmJswb8ChnhfeH0lmK1RXo=;
 b=hg48X8tvn0HVreOFJmdeNeN6/R3uNmgybLA6TWQ9ZU+mvMjESWfx4G91
 EHwKoNYkbVYHFY/kijPq2E0zcl1ap83HKA8rCwjEYqPG3oATvHxPlpX4G
 vefPNlp2TC7OAd+mdQdcGWpDFIhlU5mGSXWzKUgMn42Q1U6bDtvqOM/VT
 /32mq5ckqcyRUeLmaS67yYrsz46nng3wW0u7HezgAta4s8Uwp8tSujgfF
 h5D3z+FbndH2PqDdmuV2vzwYoAunaUjYgootUSA8RI2Dk+oTGd+obVawM
 UJa5Acpw8iBU6m/vVKRMKHsBevF9N6cYQWmt+xWf9NMfD59GGeCQQ8J+x Q==;
X-CSE-ConnectionGUID: r99mBPu5QDykynb3bhBlvQ==
X-CSE-MsgGUID: 61XZ+PMPTQKL3psGdNGdyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="84769993"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="84769993"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:36 -0700
X-CSE-ConnectionGUID: sIpzPQL/TcW5jDFrBdfccA==
X-CSE-MsgGUID: /zVXv7DpTSWXw3U3Bc8IdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="180436893"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:34 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 09/11] drm/i915/wm: Use intel_prefill
Date: Wed,  8 Oct 2025 21:25:56 +0300
Message-ID: <20251008182559.20615-10-ville.syrjala@linux.intel.com>
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

Replace the current ad-hoc prefill calculations with intel_prefill.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 141 ++++---------------
 1 file changed, 31 insertions(+), 110 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5c18fe9a5237..b3e9e2a0dab3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_prefill.h"
 #include "intel_wm.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane_regs.h"
@@ -2146,105 +2147,6 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
-dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
-	u32 dsc_prefill_latency = 0;
-
-	if (!crtc_state->dsc.compression_enable ||
-	    !num_scaler_users ||
-	    num_scaler_users > crtc->num_scalers)
-		return dsc_prefill_latency;
-
-	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-
-	for (int i = 0; i < num_scaler_users; i++) {
-		u64 hscale_k, vscale_k;
-
-		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
-		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
-		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
-						       1000000);
-	}
-
-	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
-
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
-}
-
-static int
-scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
-{
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
-	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int scaler_prefill_latency = 0;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
-
-	if (!num_scaler_users)
-		return scaler_prefill_latency;
-
-	scaler_prefill_latency = 4 * linetime;
-
-	if (num_scaler_users > 1) {
-		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
-		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
-		int latency;
-
-		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-					    chroma_downscaling_factor), 1000000);
-		scaler_prefill_latency += latency;
-	}
-
-	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
-
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
-}
-
-static bool
-skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
-			int wm0_lines, int latency)
-{
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-
-	return crtc_state->framestart_delay +
-		intel_usecs_to_scanlines(adjusted_mode, latency) +
-		scaler_prefill_latency(crtc_state) +
-		dsc_prefill_latency(crtc_state) +
-		wm0_lines >
-		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
-}
-
 unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2325,9 +2227,10 @@ unsigned int skl_wm0_prefill_lines(const struct intel_crtc_state *crtc_state)
  * the scenario to apply Wa_16025596647.
  */
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
-				       int wm0_lines)
+				       const struct intel_prefill_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int level;
 
 	for (level = display->wm.num_levels - 1; level >= 0; level--) {
@@ -2342,25 +2245,36 @@ static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 		if (level == 0)
 			latency = 0;
 
-		if (!skl_is_vblank_too_short(crtc_state, wm0_lines, latency))
+		if (!intel_prefill_vblank_too_short(ctx, crtc_state, latency))
 			return level;
 	}
 
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] Not enough time in vblank for prefill\n",
+		    crtc->base.base.id, crtc->base.name);
+
 	return -EINVAL;
 }
 
-static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
+static int skl_wm_check_vblank(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int wm0_lines, level;
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_cdclk_state *cdclk_state;
+	struct intel_prefill_ctx ctx;
+	int level;
 
 	if (!crtc_state->hw.active)
 		return 0;
 
-	wm0_lines = skl_max_wm0_lines(crtc_state);
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
 
-	level = skl_max_wm_level_for_vblank(crtc_state, wm0_lines);
+	intel_prefill_init(&ctx, crtc_state, cdclk_state);
+
+	level = skl_max_wm_level_for_vblank(crtc_state, &ctx);
 	if (level < 0)
 		return level;
 
@@ -2370,6 +2284,13 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < display->wm.num_levels - 1;
 
+	/*
+	 * TODO: assert that we are in fact using the maximum guardband
+	 * if we end up disabling any WM levels here. Otherwise we clearly
+	 * failed in using a realistic worst case prefill estimate during
+	 * when determining the guardband size.
+	 */
+
 	for (level++; level < display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
@@ -2388,8 +2309,8 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(display) >= 12 &&
 	    display->sagv.block_time_us &&
-	    skl_is_vblank_too_short(crtc_state, wm0_lines,
-				    display->sagv.block_time_us)) {
+	    intel_prefill_vblank_too_short(&ctx, crtc_state,
+					   display->sagv.block_time_us)) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
@@ -3052,7 +2973,7 @@ skl_compute_wm_late(struct intel_atomic_state *state)
 		 * intel_modeset_calc_cdclk() has been done. Scalers are still
 		 * completely broken wrt. skl_wm_check_vblank().
 		 */
-		ret = skl_wm_check_vblank(new_crtc_state);
+		ret = skl_wm_check_vblank(state, crtc);
 		if (ret)
 			return ret;
 
-- 
2.49.1

