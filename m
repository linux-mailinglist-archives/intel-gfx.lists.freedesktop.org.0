Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA97BDB09F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4382C10E691;
	Tue, 14 Oct 2025 19:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NF/RI+0r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A98010E691;
 Tue, 14 Oct 2025 19:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469531; x=1792005531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X3a2acJpqgsRztub6egK53nyHZ8NcygmBSlchcSzvGI=;
 b=NF/RI+0r48bQyHJDInXQyv95O0fRSP4cABsB+HAMFfj62RmvZTb1YWFI
 chPmsY3NMrvgARAGuIpmjhwK8eDXHcfFlOPDORhFfZ64TaY6Y+g/bme5u
 SN94t3H4jqdT5ZU1bXACutYBuMnXlVYINM+5Bjeuq2tF1XLL5TdxJgeq1
 rzhr1a4wO8+T0Oc/4z+8oCsdNWRzTN3msJp8c+4Rdct6mcDdQybUK2MWR
 FyAnJNlRk4F7gAh+gV3M3xHuKSNk75a0Huni8uzUmEQSpW/ptbMhymCPB
 m+Lx0rFsjatlrCj0XSGlGe9eKHc4pjFEgcrxuHnM7PDJkG4RBW3SYgPgW A==;
X-CSE-ConnectionGUID: v32Z2Ly3TMK8xV7t25JnFw==
X-CSE-MsgGUID: mdV85SYLSIO8Fbb4BiMpWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50200860"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="50200860"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:51 -0700
X-CSE-ConnectionGUID: eHSj4ASTSmqfXBolPozSrA==
X-CSE-MsgGUID: 7sQWmce0Q3mAHfuMwahAdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="205669397"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 9/9] drm/i915/wm: Use skl_prefill
Date: Tue, 14 Oct 2025 22:18:08 +0300
Message-ID: <20251014191808.12326-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
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

Replace the current ad-hoc prefill calculations with skl_prefill.

v2: cdclk_state no longer needed
    Rename to skl_prefill

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 126 +++----------------
 1 file changed, 20 insertions(+), 106 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 700707a91c70..256162da9afc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -30,6 +30,7 @@
 #include "intel_plane.h"
 #include "intel_vblank.h"
 #include "intel_wm.h"
+#include "skl_prefill.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
@@ -2147,105 +2148,6 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
-		intel_crtc_vblank_length(crtc_state);
-}
-
 unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2324,9 +2226,10 @@ unsigned int skl_wm0_prefill_lines(const struct intel_crtc_state *crtc_state)
  * the scenario to apply Wa_16025596647.
  */
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
-				       int wm0_lines)
+				       const struct skl_prefill_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int level;
 
 	for (level = display->wm.num_levels - 1; level >= 0; level--) {
@@ -2341,10 +2244,13 @@ static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 		if (level == 0)
 			latency = 0;
 
-		if (!skl_is_vblank_too_short(crtc_state, wm0_lines, latency))
+		if (!skl_prefill_vblank_too_short(ctx, crtc_state, latency))
 			return level;
 	}
 
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] Not enough time in vblank for prefill\n",
+		    crtc->base.base.id, crtc->base.name);
+
 	return -EINVAL;
 }
 
@@ -2352,14 +2258,15 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int wm0_lines, level;
+	struct skl_prefill_ctx ctx;
+	int level;
 
 	if (!crtc_state->hw.active)
 		return 0;
 
-	wm0_lines = skl_max_wm0_lines(crtc_state);
+	skl_prefill_init(&ctx, crtc_state);
 
-	level = skl_max_wm_level_for_vblank(crtc_state, wm0_lines);
+	level = skl_max_wm_level_for_vblank(crtc_state, &ctx);
 	if (level < 0)
 		return level;
 
@@ -2369,6 +2276,13 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < display->wm.num_levels - 1;
 
+	/*
+	 * TODO: assert that we are in fact using the maximum guardband
+	 * if we end up disabling any WM levels here. Otherwise we clearly
+	 * failed in using a realistic worst case prefill estimate when
+	 * determining the guardband size.
+	 */
+
 	for (level++; level < display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
@@ -2387,8 +2301,8 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(display) >= 12 &&
 	    display->sagv.block_time_us &&
-	    skl_is_vblank_too_short(crtc_state, wm0_lines,
-				    display->sagv.block_time_us)) {
+	    skl_prefill_vblank_too_short(&ctx, crtc_state,
+					 display->sagv.block_time_us)) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
-- 
2.49.1

